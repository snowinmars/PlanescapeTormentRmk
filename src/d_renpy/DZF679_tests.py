import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf679_logic import Zf679Logic


class Zf679LogicTest(LogicTest):
    def setUp(self):
        super(Zf679LogicTest, self).setUp()
        self.logic = Zf679Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf679Logic
        self._methods_are_bound()


    def test_zf679_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zf679_init,
            self.settings_manager.get_talked_to_zf679_times
        )


    def test_kill_zf679(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf679,
            self.logic.kill_zf679
        )


    def test_zf679_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zf679_init()


    def test_kill_zf679(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf679,
            self.logic.kill_zf679
        )


    def test_r35179_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35179_action()


    def test_r35179_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35179_condition
        )


    def test_r35196_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35196_condition
        )


    def test_r35197_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35197_condition
        )


    def test_r35198_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35198_condition
        )


    def test_r35203_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35203_condition()


    def test_r35204_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35204_condition()


    def test_r35205_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35205_condition
        )


    def test_r35206_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35206_condition
        )


    def test_r35207_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35207_condition()


    def test_r35208_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35208_condition()


    def test_r35181_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35181_condition()


    def test_r35194_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35194_condition
        )


    def test_r35195_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35195_condition()


    def test_r35200_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35200_condition()


    def test_r35201_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35201_condition
        )


    def test_r35202_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35202_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
