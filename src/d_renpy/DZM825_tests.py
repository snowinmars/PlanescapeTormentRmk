import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm825_logic import Zm825Logic


class Zm825LogicTest(LogicTest):
    def setUp(self):
        super(Zm825LogicTest, self).setUp()
        self.logic = Zm825Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm825Logic
        self._methods_are_bound()


    def test_zm825_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm825_init,
            self.settings_manager.get_talked_to_zm825_times
        )


    def test_kill_zm825(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm825,
            self.logic.kill_zm825
        )


    def test_zm825_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm825_init()


    def test_kill_zm825(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm825,
            self.logic.kill_zm825
        )


    def test_r24565_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24565_condition()


    def test_r24568_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24568_condition()


    def test_r24569_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_mortuary_walkthrough(x),
            0,
            self.logic.r24569_condition
        )


    def test_r24570_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r24570_condition
        )


    def test_r24573_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r24573_condition
        )


    def test_r24574_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24574_condition()


    def test_r42312_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r42312_condition
        )


    def test_r42313_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r42313_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
