import unittest
import inspect

from game.engine.log_events.LogEventsManager import (LogEventsManager)
from game.engine.state.StateManager import (StateManager)
from game.engine.inventory_items.InventoryItemsManager import (InventoryItemsManager)
from game.engine.locations.LocationsManager import (LocationsManager)
from game.engine.characters.CharactersManager import (CharactersManager)
from game.engine.journal_notes.JournalNotesManager import (JournalNotesManager)
from game.engine.narrat.NarratManager import (NarratManager)
from game.engine.world.WorldManager import (WorldManager)
from game.engine.quests.QuestsManager import (QuestsManager)

from game.engine.locations.LocationsStore import (LocationsStore)
from game.engine.journal_notes.JournalNotesStore import (JournalNotesStore)
from game.engine.log_events.LogEventsStore import (LogEventsStore)
from game.engine.characters.CharactersStore import (CharactersStore)
from game.engine.inventory_items.InventoryItemsStore import (InventoryItemsStore)
from game.engine.narrat.NarratStore import (NarratStore)
from game.engine.world.WorldStore import (WorldStore)
from game.engine.quests.QuestsStore import (QuestsStore)

from game.engine_data.settings.build_all_settings import (build_all_settings)
from game.engine_data.inventory_items.build_all_inventory_items import (build_all_inventory_items)
from game.engine_data.locations.build_all_locations import (build_all_locations)
from game.engine_data.characters.build_all_characters import (build_all_characters)
from game.engine_data.journal_notes.build_all_journal_notes import (build_all_journal_notes)
from game.engine_data.quests.build_all_quests import (build_all_quests)


class LogicTests(unittest.TestCase):
    def setUp(self):
        self.target_class = None  # python is so meme

        self.logger = self.mock_logger(False, './logs')
        self.log_events_manager = LogEventsManager(self.logger)
        self.locations_manager = LocationsManager(self.log_events_manager)
        self.characters_manager = CharactersManager(self.log_events_manager)
        self.journal_notes_manager = JournalNotesManager(self.log_events_manager)
        self.world_manager = WorldManager(self.log_events_manager)
        self.inventory_items_manager = InventoryItemsManager(self.log_events_manager)
        self.narrat_manager = NarratManager(self.log_events_manager)
        self.quests_manager = QuestsManager(self.log_events_manager)
        self.state_manager = StateManager(
            self.log_events_manager,
            self.world_manager,
            self.characters_manager,
            self.locations_manager,
            self.journal_notes_manager,
            self.inventory_items_manager,
            self.narrat_manager,
            self.quests_manager,
            external_report_change=lambda change_id, change_kwargs: None
        )
        self.journal_notes_manager.register_on_update_journal(lambda: None)

        self.reset_stores()


    def reset_stores(self):
        self.locations_store = LocationsStore()
        self.locations_manager.set_store(self.locations_store)

        self.journal_notes_store = JournalNotesStore()
        self.journal_notes_manager.set_store(self.journal_notes_store)

        self.log_events_store = LogEventsStore()
        self.log_events_manager.set_store(self.log_events_store)

        self.characters_store = CharactersStore()
        self.characters_manager.set_store(self.characters_store)

        self.inventory_items_store = InventoryItemsStore()
        self.inventory_items_manager.set_store(self.inventory_items_store)

        self.narrat_store = NarratStore()
        self.narrat_manager.set_store(self.narrat_store)

        self.world_store = WorldStore()
        self.world_manager.set_store(self.world_store)

        self.quests_store = QuestsStore()
        self.quests_manager.set_store(self.quests_store)

        build_all_locations(self.locations_manager)
        build_all_journal_notes(self.journal_notes_manager)
        build_all_characters(self.characters_manager)
        build_all_inventory_items(self.inventory_items_manager)
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
        self.assertFalse(self.state_manager.journal_notes_manager.found_journal_note(note_id))
        action_lambda()
        self.assertTrue(self.state_manager.journal_notes_manager.found_journal_note(note_id))


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
