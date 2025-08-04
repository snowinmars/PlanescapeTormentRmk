import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm1201_logic import Zm1201Logic


class Zm1201LogicTest(LogicTest):
    def setUp(self):
        super(Zm1201LogicTest, self).setUp()
        self.logic = Zm1201Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1201Logic
        self._methods_are_bound()


    def test_zm1201_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm1201_init,
            self.settings_manager.get_talked_to_zm1201_times
        )


    def test_kill_zm1201(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1201,
            self.logic.kill_zm1201
        )


    def test_zm1201_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm1201_init()


    def test_kill_zm1201(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1201,
            self.logic.kill_zm1201
        )


    def test_r34956_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r34956_action()


    def test_r45129_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45129_action()


    def test_r34954_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_1201_note_retrieved(x),
            self.logic.r34954_condition
        )


    def test_r34957_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r34957_condition
        )


    def test_r34958_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r34958_condition
        )


    def test_r34956_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r34956_condition
        )


    def test_r45122_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r45122_condition
        )


    def test_r45129_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45129_condition
        )


    def test_r45130_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45130_condition
        )


    def test_r45131_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45131_condition
        )


    def test_r45132_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45132_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
