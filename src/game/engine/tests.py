import unittest
import inspect

from game.engine.event_manager import (EventManager)
from game.engine.settings_manager import (SettingsManager)
from game.engine.inventory_manager import (InventoryManager)
from game.engine.location_manager import (LocationManager)
from game.engine.character_manager import (CharacterManager)
from game.engine.journal_manager import (JournalManager)

from game.engine_data.settings.all_settings import (build_all_settings)
from game.engine_data.inventory.all_inventory import (build_all_inventory)
from game.engine_data.locations.all_locations import (build_all_locations)
from game.engine_data.characters.all_characters import (build_all_characters)
from game.engine_data.journal.all_notes import (build_all_notes)


class LogicTest(unittest.TestCase):
    def setUp(self):
        self.event_manager = EventManager()
        self.location_manager = LocationManager(self.event_manager)
        self.character_manager = CharacterManager(self.event_manager)
        self.journal_manager = JournalManager(self.event_manager)
        self.settings_manager = SettingsManager(self.event_manager, self.character_manager, self.location_manager, self.journal_manager)
        self.inventory_manager = InventoryManager(self.event_manager, lambda x: self.settings_manager.get_setting_value(x))

        build_all_settings(self.settings_manager)
        build_all_inventory(self.inventory_manager)
        build_all_characters(self.character_manager)
        build_all_locations(self.location_manager)
        build_all_notes(self.journal_manager)

        self.target_class = None  # python is so meme


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
        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location_id)
        action_lambda()
        talkedTo_after = talked_lambda()
        self.assertEqual(self.settings_manager.location_manager.get_location(), location_id)
        self.assertEqual(talkedTo_before + 1, talkedTo_after)


    def _step_into_location_action(self, location_id, action_lambda):
        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location_id)
        action_lambda()
        self.assertEqual(self.settings_manager.location_manager.get_location(), location_id)


    def _pickup_journal_note_action(self, note_id, action_lambda):
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))
        action_lambda()
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))


    def _change_prop_once(self, prop_labmda, delta, action_lambda):
        before = prop_labmda()

        action_lambda()

        after = prop_labmda()
        self.assertEqual(before + delta, after)

        action_lambda()

        after_once = prop_labmda()
        self.assertEqual(after, after_once)


    def _change_prop(self, prop_labmda, delta, action_lambda):
        before = prop_labmda()

        action_lambda()

        after = prop_labmda()
        self.assertEqual(before + delta, after)

        action_lambda()

        after_once = prop_labmda()
        self.assertEqual(after + delta, after_once)


    def _prop_compare_gt_condition(self, who, prop, value, action_lambda):
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(action_lambda())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(action_lambda())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(action_lambda())


    def _prop_compare_lt_condition(self, who, prop, value, action_lambda):
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertTrue(action_lambda())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(action_lambda())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
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
        self.assertFalse(self.settings_manager.location_manager.is_visited(external))
        self.assertFalse(action_lambda())
        self.settings_manager.location_manager.set_location(external)
        self.assertTrue(action_lambda())


    def _not_is_visited_external_location_condition(self, external, action_lambda):
        self.assertFalse(self.settings_manager.location_manager.is_visited(external))
        self.assertTrue(action_lambda())
