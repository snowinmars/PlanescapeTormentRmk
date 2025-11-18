import unittest
import inspect

from game.engine.events.events_manager import (EventsManager)
from game.engine.state.state_manager import (StateManager)
from game.engine.inventory.inventory_manager import (InventoryManager)
from game.engine.locations.locations_manager import (LocationsManager)
from game.engine.characters.characters_manager import (CharactersManager)
from game.engine.journal.journal_manager import (JournalManager)
from game.engine.world.world_manager import (WorldManager)

from game.engine.locations.locations_store import (LocationsStore)
from game.engine.journal.journal_store import (JournalStore)
from game.engine.events.events_store import (EventsStore)
from game.engine.characters.characters_store import (CharactersStore)
from game.engine.inventory.inventory_store import (InventoryStore)
from game.engine.world.world_store import (WorldStore)

from game.engine_data.settings.all_settings import (build_all_settings)
from game.engine_data.inventory.all_inventory import (build_all_inventory)
from game.engine_data.locations.all_locations import (build_all_locations)
from game.engine_data.characters.all_characters import (build_all_characters)
from game.engine_data.journal.all_notes import (build_all_notes)


class LogicTest(unittest.TestCase):
    def setUp(self):
        self.target_class = None  # python is so meme

        self.logger = self.mock_logger(False, './logs')
        self.events_manager = EventsManager(self.logger)
        self.locations_manager = LocationsManager(self.events_manager)
        self.characters_manager = CharactersManager(self.events_manager)
        self.journal_manager = JournalManager(self.events_manager)
        self.world_manager = WorldManager(self.events_manager)
        self.state_manager = StateManager(self.events_manager, self.world_manager, self.characters_manager, self.locations_manager, self.journal_manager)
        self.inventory_manager = InventoryManager(self.events_manager, lambda x: self.state_manager.get_setting_value(x))

        self.reset_stores()


    def reset_stores(self):
        self.locations_store = LocationsStore()
        self.locations_manager.set_store(self.locations_store)

        self.journal_store = JournalStore()
        self.journal_manager.set_store(self.journal_store)

        self.events_store = EventsStore()
        self.events_manager.set_store(self.events_store)

        self.characters_store = CharactersStore()
        self.characters_manager.set_store(self.characters_store)

        self.inventory_store = InventoryStore()
        self.inventory_manager.set_store(self.inventory_store)

        self.world_store = WorldStore()
        self.world_manager.set_store(self.world_store)

        build_all_locations(self.locations_manager)
        build_all_notes(self.journal_manager)
        build_all_characters(self.characters_manager)
        build_all_inventory(self.inventory_manager)
        build_all_settings(self.state_manager)


    def _methods_are_bound(self):
        methods = [
            member for member in inspect.getmembers(self.target_class, predicate=inspect.isfunction)
            if not member[0].startswith('__')  # Exclude special methods
        ]

        for name, method in methods:
            with self.subTest(method=name):  # subTest creates a separate test context for each method, ensuring all failures are reported individually
                with self.assertRaises(TypeError):
                    method()


    def _false_then_true_action(self, prop_lambda, action_lambda):
        self.assertFalse(prop_lambda())
        action_lambda()
        self.assertTrue(prop_lambda())


    def _true_then_false_action(self, prop_lambda, action_lambda):
        self.assertTrue(prop_lambda())
        action_lambda()
        self.assertFalse(prop_lambda())


    def _integer_equals_action(self, prop_lambda, value, action_lambda):
        self.assertNotEqual(prop_lambda(), value)
        action_lambda()
        self.assertEqual(prop_lambda(), value)


    def _integer_inc_action(self, prop_lambda, delta, action_lambda):
        before = prop_lambda()
        action_lambda()
        after = prop_lambda()
        self.assertEqual(before + delta, after)
        action_lambda()
        after_once = prop_lambda()
        self.assertEqual(after + delta, after_once)


    def _integer_inc_once_action(self, prop_lambda, delta, action_lambda):
        before = prop_lambda()
        action_lambda()
        after = prop_lambda()
        self.assertEqual(before + delta, after)
        action_lambda()
        after_once = prop_lambda()
        self.assertEqual(after, after_once)

    def _integer_dec_action(self, prop_lambda, delta, action_lambda):
        before = prop_lambda()
        action_lambda()
        after = prop_lambda()
        self.assertEqual(before - delta, after)
        action_lambda()
        after_once = prop_lambda()
        self.assertEqual(after - delta, after_once)


    def _integer_dec_once_action(self, prop_lambda, delta, action_lambda):
        before = prop_lambda()
        action_lambda()
        after = prop_lambda()
        self.assertEqual(before - delta, after)
        action_lambda()
        after_once = prop_lambda()
        self.assertEqual(after, after_once)


    def _init(self, action_lambda, talked_lambda):
        talkedTo_before = talked_lambda()
        action_lambda()
        talkedTo_after = talked_lambda()
        self.assertEqual(talkedTo_before + 1, talkedTo_after)


    def _init_with_location(self, location_id, action_lambda, talked_lambda):
        talkedTo_before = talked_lambda()
        self.assertNotEqual(self.state_manager.locations_manager.get_location(), location_id)
        action_lambda()
        talkedTo_after = talked_lambda()
        self.assertEqual(self.state_manager.locations_manager.get_location(), location_id)
        self.assertEqual(talkedTo_before + 1, talkedTo_after)


    def _step_into_location_action(self, location_id, action_lambda):
        self.assertNotEqual(self.state_manager.locations_manager.get_location(), location_id)
        action_lambda()
        self.assertEqual(self.state_manager.locations_manager.get_location(), location_id)


    def _pickup_journal_note_action(self, note_id, action_lambda):
        self.assertFalse(self.state_manager.journal_manager.has_journal_note(note_id))
        action_lambda()
        self.assertTrue(self.state_manager.journal_manager.has_journal_note(note_id))


    def _change_prop_once(self, prop_labmda, delta, action_lambda):
        before = prop_labmda()

        action_lambda()

        after = prop_labmda()
        if isinstance(delta, str):
            self.assertNotEqual(delta, before)
            self.assertEqual(delta, after)
        else:
            self.assertEqual(before + delta, after)

        action_lambda()

        after_once = prop_labmda()
        if isinstance(delta, str):
            self.assertEqual(delta, after_once)
        else:
            self.assertEqual(after, after_once)


    def _change_prop(self, prop_labmda, delta, action_lambda):
        before = prop_labmda()

        action_lambda()

        after = prop_labmda()
        if isinstance(delta, str):
            self.assertNotEqual(delta, before)
            self.assertEqual(delta, after)
        else:
            self.assertEqual(before + delta, after)

        action_lambda()

        after_once = prop_labmda()
        if isinstance(delta, str):
            self.assertEqual(delta, after_once)
        else:
            self.assertEqual(after + delta, after_once)


    def _prop_compare_gt_condition(self, who, prop, value, action_lambda):
        self.state_manager.characters_manager.set_property(who, prop, value - 1)
        self.assertFalse(action_lambda())

        self.state_manager.characters_manager.set_property(who, prop, value)
        self.assertFalse(action_lambda())

        self.state_manager.characters_manager.set_property(who, prop, value + 1)
        self.assertTrue(action_lambda())


    def _prop_compare_lt_condition(self, who, prop, value, action_lambda):
        self.state_manager.characters_manager.set_property(who, prop, value - 1)
        self.assertTrue(action_lambda())

        self.state_manager.characters_manager.set_property(who, prop, value)
        self.assertFalse(action_lambda())

        self.state_manager.characters_manager.set_property(who, prop, value + 1)
        self.assertFalse(action_lambda())


    def _boolean_invert_condition(self, prop_lambda, action_lambda):
        prop_lambda(False)
        self.assertTrue(action_lambda())
        prop_lambda(True)
        self.assertFalse(action_lambda())


    def _boolean_straight_condition(self, prop_lambda, action_lambda):
        prop_lambda(True)
        self.assertTrue(action_lambda())
        prop_lambda(False)
        self.assertFalse(action_lambda())


    def _integer_not_equal_condition(self, prop_lambda, value, action_lambda):
        prop_lambda(2 * value + 1)
        self.assertTrue(action_lambda())
        prop_lambda(value)
        self.assertFalse(action_lambda())


    def _integer_equal_condition(self, prop_lambda, value, action_lambda):
        prop_lambda(2 * value + 1)
        self.assertFalse(action_lambda())
        prop_lambda(value)
        self.assertTrue(action_lambda())


    def _integer_gt_condition(self, prop_lambda, value, action_lambda):
        prop_lambda(value - 1)
        self.assertFalse(action_lambda())
        prop_lambda(value)
        self.assertFalse(action_lambda())
        prop_lambda(value + 1)
        self.assertTrue(action_lambda())


    def _integer_lt_condition(self, prop_lambda, value, action_lambda):
        prop_lambda(value - 1)
        self.assertTrue(action_lambda())
        prop_lambda(value)
        self.assertFalse(action_lambda())
        prop_lambda(value + 1)
        self.assertFalse(action_lambda())


    def _is_visited_external_location_condition(self, external, action_lambda):
        self.assertFalse(self.state_manager.locations_manager.is_visited(external))
        self.assertFalse(action_lambda())
        self.state_manager.locations_manager.set_location(external)
        self.assertTrue(action_lambda())


    def _not_is_visited_external_location_condition(self, external, action_lambda):
        self.assertFalse(self.state_manager.locations_manager.is_visited(external))
        self.assertTrue(action_lambda())


    def mock_logger(self, emscripten, logs_folder):
        return MockLogger()


class MockLogger():
    def debug(self, msg):
        return
    def info(self, msg):
        return
    def warn(self, msg):
        return
