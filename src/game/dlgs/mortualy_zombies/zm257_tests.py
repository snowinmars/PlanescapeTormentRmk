import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm257_logic import Zm257Logic

class Zm257LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm257Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm257Logic
        self._methods_are_bound()


    def test_zm257_init(self):
        self._init_(
            'mortuary_f2r5',
            Zm257Logic(self.settings_manager).zm257_init,
            self.settings_manager.get_talked_to_zm257_times
        )


    def test_kill_zm257(self):
        logic = Zm257Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm257())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm257()

        self.assertTrue(self.settings_manager.get_dead_zm257())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_know_zm257_spirit_action(self):
        logic = Zm257Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_zm257_spirit(),
            lambda: logic.know_zm257_spirit_action()
        )


    def test_r6510_action(self):
        logic = Zm257Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6510_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6510_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r9562_action(self):
        logic = Zm257Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9562_action()
        )


    def test_know_zm257_spirit_condition(self):
        logic = Zm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_zm257_spirit(x),
            lambda: logic.know_zm257_spirit_condition()
        )


    def test_r6510_condition(self):
        logic = Zm257Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6510_condition()
        )


    def test_r6511_condition(self):
        logic = Zm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6511_condition()
        )


    def test_r6512_condition(self):
        logic = Zm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6512_condition()
        )


    def test_r6513_condition(self):
        logic = Zm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6513_condition()
        )


if __name__ == '__main__':
    unittest.main()
