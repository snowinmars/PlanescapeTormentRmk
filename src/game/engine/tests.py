import unittest
import inspect

from game.engine.log_events.log_events_manager import (LogEventsManager)
from game.engine.state.state_manager import (StateManager)
from game.engine.inventory.inventory_manager import (InventoryManager)
from game.engine.locations.locations_manager import (LocationsManager)
from game.engine.characters.characters_manager import (CharactersManager)
from game.engine.journal.journal_manager import (JournalManager)
from game.engine.narrat.narrat_manager import (NarratManager)
from game.engine.world.world_manager import (WorldManager)
from game.engine.quests.quests_manager import (QuestsManager)

from game.engine.locations.locations_store import (LocationsStore)
from game.engine.journal.journal_store import (JournalStore)
from game.engine.log_events.log_events_store import (LogEventsStore)
from game.engine.characters.characters_store import (CharactersStore)
from game.engine.inventory.inventory_store import (InventoryStore)
from game.engine.narrat.narrat_store import (NarratStore)
from game.engine.world.world_store import (WorldStore)
from game.engine.quests.quests_store import (QuestsStore)

from game.engine_data.settings.all_settings import (build_all_settings)
from game.engine_data.inventory.build_all_inventory import (build_all_inventory)
from game.engine_data.locations.all_locations import (build_all_locations)
from game.engine_data.characters.build_all_characters import (build_all_characters)
from game.engine_data.journal.build_all_notes import (build_all_notes)
from game.engine_data.quests.build_all_quests import (build_all_quests)


class LogicTest(unittest.TestCase):
    def setUp(self):
        self.target_class = None  # python is so meme

        self.logger = self.mock_logger(False, './logs')
        self.log_events_manager = LogEventsManager(self.logger)
        self.locations_manager = LocationsManager(self.log_events_manager)
        self.characters_manager = CharactersManager(self.log_events_manager)
        self.journal_manager = JournalManager(self.log_events_manager)
        self.world_manager = WorldManager(self.log_events_manager)
        self.inventory_manager = InventoryManager(self.log_events_manager)
        self.narrat_manager = NarratManager(self.log_events_manager)
        self.quests_manager = QuestsManager(self.log_events_manager)
        self.state_manager = StateManager(
            self.log_events_manager,
            self.world_manager,
            self.characters_manager,
            self.locations_manager,
            self.journal_manager,
            self.inventory_manager,
            self.narrat_manager,
            self.quests_manager,
            external_report_change=lambda change_id, change_kwargs: None
        )
        self.journal_manager.register_on_update_journal(lambda: None)

        self.reset_stores()


    def reset_stores(self):
        self.locations_store = LocationsStore()
        self.locations_manager.set_store(self.locations_store)

        self.journal_store = JournalStore()
        self.journal_manager.set_store(self.journal_store)

        self.log_events_store = LogEventsStore()
        self.log_events_manager.set_store(self.log_events_store)

        self.characters_store = CharactersStore()
        self.characters_manager.set_store(self.characters_store)

        self.inventory_store = InventoryStore()
        self.inventory_manager.set_store(self.inventory_store)

        self.narrat_store = NarratStore()
        self.narrat_manager.set_store(self.narrat_store)

        self.world_store = WorldStore()
        self.world_manager.set_store(self.world_store)

        self.quests_store = QuestsStore()
        self.quests_manager.set_store(self.quests_store)

        build_all_locations(self.locations_manager)
        build_all_notes(self.journal_manager)
        build_all_characters(self.characters_manager)
        build_all_inventory(self.inventory_manager)
        build_all_settings(self.world_manager)
        build_all_quests(self.quests_manager)


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


    def _pickup_journal_note_action(self, note_id, action_lambda):
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))
        action_lambda()
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


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


    def _coords_are_not_none(self, coords):
        self.assertIsNotNone(coords)
        self.assertIsNotNone(coords['x'])
        self.assertIsNotNone(coords['y'])


class MockLogger():
    def debug(self, msg):
        return # pragma: no cover
    def info(self, msg):
        return # pragma: no cover
    def warn(self, msg):
        return # pragma: no cover
