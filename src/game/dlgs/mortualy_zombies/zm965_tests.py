import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm965_logic import Zm965Logic

class Zm965LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm965Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm965Logic
        self._methods_are_bound()


    def test_zm965_init(self):
        self._init_(
            'mortuary_f2r2',
            Zm965Logic(self.settings_manager).zm965_init,
            self.settings_manager.get_talked_to_zm965_times
        )


    def test_kill_zm965(self):
        logic = Zm965Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm965())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm965()

        self.assertTrue(self.settings_manager.get_dead_zm965())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34923_action(self):
        logic = Zm965Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r34923_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r34923_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r34923_condition(self):
        logic = Zm965Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r34923_condition()
        )


    def test_r45070_condition(self):
        logic = Zm965Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45070_condition()
        )


    def test_r45071_condition(self):
        logic = Zm965Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45071_condition()
        )


    def test_r45072_condition(self):
        logic = Zm965Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45072_condition()
        )


if __name__ == '__main__':
    unittest.main()
