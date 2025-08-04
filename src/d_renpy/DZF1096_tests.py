import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf1096_logic import Zf1096Logic


class Zf1096LogicTest(LogicTest):
    def setUp(self):
        super(Zf1096LogicTest, self).setUp()
        self.logic = Zf1096Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf1096Logic
        self._methods_are_bound()


    def test_zf1096_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zf1096_init,
            self.settings_manager.get_talked_to_zf1096_times
        )


    def test_kill_zf1096(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf1096,
            self.logic.kill_zf1096
        )


    def test_zf1096_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zf1096_init()


    def test_kill_zf1096(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf1096,
            self.logic.kill_zf1096
        )


    def test_r35083_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35083_action()


    def test_r35083_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35083_condition
        )


    def test_r35100_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35100_condition
        )


    def test_r35101_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35101_condition
        )


    def test_r35102_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35102_condition
        )


    def test_r35107_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35107_condition()


    def test_r35108_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35108_condition()


    def test_r35109_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35109_condition
        )


    def test_r35110_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35110_condition
        )


    def test_r35111_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35111_condition()


    def test_r35112_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35112_condition()


    def test_r35085_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35085_condition()


    def test_r35098_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35098_condition
        )


    def test_r35099_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35099_condition()


    def test_r35104_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35104_condition()


    def test_r35105_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35105_condition
        )


    def test_r35106_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35106_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
