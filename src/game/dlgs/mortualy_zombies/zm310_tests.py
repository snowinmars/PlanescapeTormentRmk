import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm310_logic import Zm310Logic

class Zm310LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm310Logic(self.settings_manager)

        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm310Logic
        self._methods_are_bound()


    def test_zm310_init(self):
        logic = Zm310Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm310())

        logic.zm310_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm310(), True)


    def test_kill_zm310(self):
        logic = Zm310Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm310())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm310()

        self.assertTrue(self.settings_manager.get_dead_zm310())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_set_know_oinosian_name(self):
        logic = Zm310Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_oinosian_name(),
            lambda: logic.set_know_oinosian_name()
        )


    def test_r6499_action(self):
        logic = Zm310Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6499_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6499_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6502_action(self):
        logic = Zm310Logic(self.settings_manager)
        logic.r6502_action()


    def test_get_know_oinosian_name(self):
        logic = Zm310Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_oinosian_name(x),
            lambda: logic.get_know_oinosian_name()
        )


    def test_r6499_condition(self):
        logic = Zm310Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6499_condition()
        )


    def test_r6500_condition(self):
        logic = Zm310Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6500_condition()
        )


    def test_r6501_condition(self):
        logic = Zm310Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6501_condition()
        )


    def test_r6502_condition(self):
        logic = Zm310Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6502_condition()
        )


    def test_r9664_condition(self):
        logic = Zm310Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r9664_condition()
        )


if __name__ == '__main__':
    unittest.main()
