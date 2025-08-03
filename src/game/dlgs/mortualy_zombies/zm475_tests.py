import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm475_logic import Zm475Logic

class Zm475LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm475Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm475Logic
        self._methods_are_bound()


    def test_zm475_init(self):
        self._init_(
            'mortuary_f3r6',
            Zm475Logic(self.settings_manager).zm475_init,
            self.settings_manager.get_talked_to_zm475_times
        )


    def test_kill_zm475(self):
        logic = Zm475Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm475())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm475()

        self.assertTrue(self.settings_manager.get_dead_zm475())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r6587_action(self):
        logic = Zm475Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6587_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6587_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6587_condition(self):
        logic = Zm475Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6587_condition()
        )


    def test_r6588_condition(self):
        logic = Zm475Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6588_condition()
        )


    def test_r6589_condition(self):
        logic = Zm475Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6589_condition()
        )


    def test_r6590_condition(self):
        logic = Zm475Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6590_condition()
        )


if __name__ == '__main__':
    unittest.main()
