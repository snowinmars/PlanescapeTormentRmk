import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm965_logic import Zm965Logic


class Zm965LogicTest(LogicTest):
    def setUp(self):
        super(Zm965LogicTest, self).setUp()
        self.logic = Zm965Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm965Logic
        self._methods_are_bound()


    def test_zm965_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm965_init,
            self.settings_manager.get_talked_to_zm965_times
        )


    def test_kill_zm965(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm965,
            self.logic.kill_zm965
        )


    def test_zm965_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm965_init()


    def test_kill_zm965(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm965,
            self.logic.kill_zm965
        )


    def test_r34923_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r34923_action()


    def test_r34923_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34923_condition
        )


    def test_r45070_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45070_condition
        )


    def test_r45071_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45071_condition
        )


    def test_r45072_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45072_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
