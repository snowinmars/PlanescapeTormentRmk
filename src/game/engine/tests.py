import unittest
import inspect

from engine.events import (EventManager)
from engine.menu import (MenuManager)
from engine.settings import (SettingsManager)
from engine.inventory import (InventoryManager)
from engine.locations import (LocationBuilder, LocationManager)
from engine.character import (CharacterManager)

from menus.all_menus import (build_all_menus)
from setting.all_settings import (build_all_settings)
from setting.all_inventory import (build_all_inventory)
from location.all_locations import (build_all_locations)
from characters.all_characters import (build_all_characters)

class LogicTest(unittest.TestCase):
    def setUp(self):
        self.event_manager = EventManager()
        self.location_manager = LocationManager(self.event_manager)
        self.character_manager = CharacterManager(self.event_manager)
        self.settings_manager = SettingsManager(self.event_manager, self.character_manager, self.location_manager)
        self.menu_manager = MenuManager()
        self.inventory_manager = InventoryManager(lambda x: self.settings_manager.get_setting_value(x))

        build_all_settings(self.settings_manager)
        build_all_inventory(self.inventory_manager)
        build_all_menus(self.menu_manager, self.settings_manager, self.location_manager)
        build_all_characters(self.settings_manager.gcm)
        builder = LocationBuilder()
        builder = build_all_locations(builder)
        self.location_manager.register(builder.mappings, builder.build_reverse_mappings())

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


    def _step_into_location_action(self, location_id, action_lambda):
        self.assertNotEqual(self.settings_manager.glm.get_location(), location_id)
        action_lambda()
        self.assertEqual(self.settings_manager.glm.get_location(), location_id)

    def _pickup_journal_note_action(self, note_id, action_lambda):
        self.assertFalse(self.settings_manager.has_journal_note(note_id))
        action_lambda()
        self.assertTrue(self.settings_manager.has_journal_note(note_id))


    def _change_prop_once(self, prop_labmda, delta, action_lambda):
        before = prop_labmda()

        action_lambda()

        after = prop_labmda()
        self.assertEqual(before + delta, after)

        action_lambda()

        afterOnce = prop_labmda()
        self.assertEqual(after, afterOnce)


    def _change_prop(self, prop_labmda, delta, action_lambda):
        before = prop_labmda()

        action_lambda()

        after = prop_labmda()
        self.assertEqual(before + delta, after)

        action_lambda()

        afterOnce = prop_labmda()
        self.assertEqual(after + delta, afterOnce)


    def _prop_compare_gt_condition(self, who, prop, value, action_lambda):
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(action_lambda())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(action_lambda())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(action_lambda())


    def _prop_compare_lt_condition(self, who, prop, value, action_lambda):
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(action_lambda())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(action_lambda())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
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
