import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm199_logic import Zm199Logic


class Zm199LogicTest(LogicTest):
    def setUp(self):
        super(Zm199LogicTest, self).setUp()
        self.logic = Zm199Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm199Logic
        self._methods_are_bound()


    def test_zm199_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm199_init,
            self.settings_manager.get_talked_to_zm199_times
        )


    def test_kill_zm199(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm199,
            self.logic.kill_zm199
        )


    def test_zm199_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm199_init()


    def test_kill_zm199(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm199,
            self.logic.kill_zm199
        )


    def test_r34976_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r34976_action()


    def test_r34976_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34976_condition
        )


    def test_r34979_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34979_condition
        )


    def test_r34980_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r34980_condition
        )


    def test_r34981_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r34981_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
