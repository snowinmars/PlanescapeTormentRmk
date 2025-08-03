import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm1094_logic import Zm1094Logic

class Zm1094LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm1094Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm1094Logic
        self._methods_are_bound()


    def test_zm1094_init(self):
        self._init_(
            'mortuary_f2r1',
            Zm1094Logic(self.settings_manager).zm1094_init,
            self.settings_manager.get_talked_to_zm1094_times
        )


    def test_kill_zm1094(self):
        logic = Zm1094Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1094())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm1094()

        self.assertTrue(self.settings_manager.get_dead_zm1094())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_set_know_asonje_name(self):
        logic = Zm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_asonje_name(),
            lambda: logic.set_know_asonje_name()
        )

    def test_r6565_action(self):
        logic = Zm1094Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6565_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6565_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6568_action(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_equals_action(
            lambda: self.settings_manager.get_asonje_value(),
            1,
            lambda: logic.r6568_action()
        )


    def test_r9247_action(self):
        logic = Zm1094Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self.assertNotEqual(self.settings_manager.get_asonje_value(), 3)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r9247_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 3)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r9247_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 3)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter, lawAfterOnce)


    def test_r9289_action(self):
        logic = Zm1094Logic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_asonje_value(), 2)

        logic.r9289_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 2)


    def test_r9290_action(self):
        logic = Zm1094Logic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_asonje_value(), 2)

        logic.r9290_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 2)


    def test_r9291_action(self):
        logic = Zm1094Logic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_asonje_value(), 2)

        logic.r9291_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 2)


    def test_r9304_action(self):
        logic = Zm1094Logic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_adahn(), 0)

        logic.r9304_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)

        logic.r9304_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)


    def test_get_know_asonje_name(self):
        logic = Zm1094Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_asonje_name(x),
            lambda: logic.get_know_asonje_name()
        )


    def test_r6565_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6565_condition()
        )

    def test_r6566_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6566_condition()
        )


    def test_r6567_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6567_condition()
        )


    def test_r6568_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6568_condition()
        )


    def test_r9256_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            lambda: logic.r9256_condition()
        )


    def test_r9276_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            lambda: logic.r9276_condition()
        )


    def test_r9282_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            lambda: logic.r9282_condition()
        )


    def test_r9286_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            lambda: logic.r9286_condition()
        )


    def test_r9319_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            lambda: logic.r9319_condition()
        )


    def test_r9306_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            lambda: logic.r9306_condition()
        )


    def test_r9307_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self.assertFalse(logic.r9307_condition())

        self.settings_manager.set_asonje_value(2)
        self.assertTrue(logic.r9307_condition())


    def test_r9312_condition(self):
        logic = Zm1094Logic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            lambda: logic.r9312_condition()
        )


if __name__ == '__main__':
    unittest.main()
