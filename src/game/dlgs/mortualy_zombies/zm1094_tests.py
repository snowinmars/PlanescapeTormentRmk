import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm1094_logic import Zm1094Logic


class Zm1094LogicTest(LogicTest):
    def setUp(self):
        super(Zm1094LogicTest, self).setUp()
        self.logic = Zm1094Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1094Logic
        self._methods_are_bound()


    def test_zm1094_init(self):
        self._init_with_location(
            'mortuary_f2r3',
            self.logic.zm1094_init,
            self.settings_manager.get_talked_to_zm1094_times
        )


    def test_kill_zm1094(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1094())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm1094()

        self.assertTrue(self.settings_manager.get_dead_zm1094())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_set_know_asonje_name(self):
        self._false_then_true_action(
            self.settings_manager.get_know_asonje_name,
            self.logic.set_know_asonje_name
        )


    def test_r6565_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r6565_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r6565_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r6568_action(self):
        self._integer_equals_action(
            self.settings_manager.get_asonje_value,
            1,
            self.logic.r6568_action
        )


    def test_r9247_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self.assertNotEqual(self.settings_manager.get_asonje_value(), 3)
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r9247_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 3)
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r9247_action()

        self.assertEqual(self.settings_manager.get_asonje_value(), 3)
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after, law_after_once)


    def test_r9289_action(self):
        self._integer_equals_action(
            self.settings_manager.get_asonje_value,
            2,
            self.logic.r9289_action
        )


    def test_r9290_action(self):
        self._integer_equals_action(
            self.settings_manager.get_asonje_value,
            2,
            self.logic.r9290_action
        )


    def test_r9291_action(self):
        self._integer_equals_action(
            self.settings_manager.get_asonje_value,
            2,
            self.logic.r9291_action
        )


    def test_r9304_action(self):
        self._integer_inc_action(
            self.settings_manager.get_adahn,
            1,
            self.logic.r9304_action
        )

    def test_get_know_asonje_name(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_asonje_name(x),
            self.logic.get_know_asonje_name
        )


    def test_r6565_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6565_condition
        )


    def test_r6566_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6566_condition
        )


    def test_r6567_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6567_condition
        )


    def test_r6568_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6568_condition
        )


    def test_r9256_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9256_condition
        )


    def test_r9276_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9276_condition
        )


    def test_r9282_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            self.logic.r9282_condition
        )


    def test_r9286_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            self.logic.r9286_condition
        )


    def test_r9319_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9319_condition
        )


    def test_r9306_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            self.logic.r9306_condition
        )


    def test_r9307_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_asonje_value(x),
            2,
            self.logic.r9307_condition
        )


    def test_r9312_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9312_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
