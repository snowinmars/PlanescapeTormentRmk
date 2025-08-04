import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm475_logic import Zm475Logic


class Zm475LogicTest(LogicTest):
    def setUp(self):
        super(Zm475LogicTest, self).setUp()
        self.logic = Zm475Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm475Logic
        self._methods_are_bound()


    def test_zm475_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm475_init,
            self.settings_manager.get_talked_to_zm475_times
        )


    def test_kill_zm475(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm475,
            self.logic.kill_zm475
        )


    def test_zm475_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm475_init()


    def test_kill_zm475(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm475,
            self.logic.kill_zm475
        )


    def test_r6587_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6587_action()


    def test_r6587_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6587_condition
        )


    def test_r6588_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6588_condition
        )


    def test_r6589_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6589_condition
        )


    def test_r6590_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6590_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
