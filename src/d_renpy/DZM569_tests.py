import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm569_logic import Zm569Logic


class Zm569LogicTest(LogicTest):
    def setUp(self):
        super(Zm569LogicTest, self).setUp()
        self.logic = Zm569Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm569Logic
        self._methods_are_bound()


    def test_zm569_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm569_init,
            self.settings_manager.get_talked_to_zm569_times
        )


    def test_kill_zm569(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm569,
            self.logic.kill_zm569
        )


    def test_zm569_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm569_init()


    def test_kill_zm569(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm569,
            self.logic.kill_zm569
        )


    def test_r24576_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24576_condition()


    def test_r24579_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24579_condition()


    def test_r24580_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_mortuary_walkthrough(x),
            0,
            self.logic.r24580_condition
        )


    def test_r24581_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r24581_condition
        )


    def test_r24584_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r24584_condition
        )


    def test_r24585_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24585_condition()


    def test_r42294_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r42294_condition
        )


    def test_r42295_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r42295_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
