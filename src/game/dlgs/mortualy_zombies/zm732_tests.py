import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm732_logic import Zm732Logic

class Zm732LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm732Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm732Logic
        self._methods_are_bound()


    def test_zm732_init(self):
        self._init_(
            'mortuary_f2r1',
            Zm732Logic(self.settings_manager).zm732_init,
            self.settings_manager.get_talked_to_zm732_times
        )


    def test_kill_zm732(self):
        logic = Zm732Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm732())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm732()

        self.assertTrue(self.settings_manager.get_dead_zm732())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r6533_action(self):
        logic = Zm732Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6533_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6533_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r64271_action(self):
        logic = Zm732Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_tome_ba(),
            lambda: logic.r64271_action()
        )


    def test_r6533_condition(self):
        logic = Zm732Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6533_condition()
        )


    def test_r6532_condition(self):
        logic = Zm732Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6532_condition()
        )


    def test_r6534_condition(self):
        logic = Zm732Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6534_condition()
        )


    def test_r6535_condition(self):
        logic = Zm732Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6535_condition()
        )


if __name__ == '__main__':
    unittest.main()
