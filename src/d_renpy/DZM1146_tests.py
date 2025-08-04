import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm1146_logic import Zm1146Logic


class Zm1146LogicTest(LogicTest):
    def setUp(self):
        super(Zm1146LogicTest, self).setUp()
        self.logic = Zm1146Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1146Logic
        self._methods_are_bound()


    def test_zm1146_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm1146_init,
            self.settings_manager.get_talked_to_zm1146_times
        )


    def test_kill_zm1146(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1146,
            self.logic.kill_zm1146
        )


    def test_zm1146_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm1146_init()


    def test_kill_zm1146(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1146,
            self.logic.kill_zm1146
        )


    def test_r6521_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6521_action()


    def test_r6524_action(self):
        self._integer_equals_action(
            self.settings_manager.get_crispy_value,
            1,
            self.logic.r6524_action
        )


    def test_r9415_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9415_action
        )


    def test_r9426_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r9426_action()


    def test_r6521_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6521_condition
        )


    def test_r6522_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6522_condition
        )


    def test_r6523_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6523_condition
        )


    def test_r6524_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6524_condition
        )


    def test_r9434_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9434_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
