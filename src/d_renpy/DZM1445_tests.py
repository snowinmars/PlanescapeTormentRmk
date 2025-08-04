import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm1445_logic import Zm1445Logic


class Zm1445LogicTest(LogicTest):
    def setUp(self):
        super(Zm1445LogicTest, self).setUp()
        self.logic = Zm1445Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1445Logic
        self._methods_are_bound()


    def test_zm1445_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm1445_init,
            self.settings_manager.get_talked_to_zm1445_times
        )


    def test_kill_zm1445(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1445,
            self.logic.kill_zm1445
        )


    def test_zm1445_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm1445_init()


    def test_kill_zm1445(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1445,
            self.logic.kill_zm1445
        )


    def test_r46757_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r46757_action()


    def test_r46757_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r46757_condition
        )


    def test_r46760_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r46760_condition
        )


    def test_r46761_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r46761_condition
        )


    def test_r46762_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r46762_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
