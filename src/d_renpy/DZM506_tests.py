import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm506_logic import Zm506Logic


class Zm506LogicTest(LogicTest):
    def setUp(self):
        super(Zm506LogicTest, self).setUp()
        self.logic = Zm506Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm506Logic
        self._methods_are_bound()


    def test_zm506_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm506_init,
            self.settings_manager.get_talked_to_zm506_times
        )


    def test_kill_zm506(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm506,
            self.logic.kill_zm506
        )


    def test_zm506_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm506_init()


    def test_kill_zm506(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm506,
            self.logic.kill_zm506
        )


    def test_r45480_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45480_action()


    def test_r45484_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45484_action()


    def test_r45502_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45502_action()


    def test_r45420_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_506_thread(x),
            self.logic.r45420_condition
        )


    def test_r45421_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45421_condition
        )


    def test_r45422_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45422_condition
        )


    def test_r45480_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r45480_condition
        )


    def test_r45481_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r45481_condition
        )


    def test_r45484_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45484_condition
        )


    def test_r45496_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45496_condition
        )


    def test_r45502_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45502_condition
        )


    def test_r45508_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45508_condition
        )


    def test_r45510_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45510_condition
        )


    def test_r45512_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45512_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
