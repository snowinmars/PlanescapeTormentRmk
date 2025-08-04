import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm310_logic import Zm310Logic


class Zm310LogicTest(LogicTest):
    def setUp(self):
        super(Zm310LogicTest, self).setUp()
        self.logic = Zm310Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm310Logic
        self._methods_are_bound()


    def test_zm310_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm310_init,
            self.settings_manager.get_talked_to_zm310_times
        )


    def test_kill_zm310(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm310,
            self.logic.kill_zm310
        )


    def test_zm310_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm310_init()


    def test_kill_zm310(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm310,
            self.logic.kill_zm310
        )


    def test_r6499_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6499_action()


    def test_r6502_action(self):
        self._integer_equals_action(
            self.settings_manager.get_oinosian_value,
            1,
            self.logic.r6502_action
        )


    def test_r6499_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6499_condition
        )


    def test_r6500_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6500_condition
        )


    def test_r6501_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6501_condition
        )


    def test_r6502_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6502_condition
        )


    def test_r9664_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9664_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
