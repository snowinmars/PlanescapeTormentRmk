import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm1094_logic import Zm1094Logic


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
            'LOCATION',
            self.logic.zm1094_init,
            self.settings_manager.get_talked_to_zm1094_times
        )


    def test_kill_zm1094(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1094,
            self.logic.kill_zm1094
        )


    def test_zm1094_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm1094_init()


    def test_kill_zm1094(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1094,
            self.logic.kill_zm1094
        )


    def test_r6565_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6565_action()


    def test_r6568_action(self):
        self._integer_equals_action(
            self.settings_manager.get_asonje_value,
            1,
            self.logic.r6568_action
        )


    def test_r9247_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r9247_action()


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
