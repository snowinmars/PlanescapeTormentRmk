import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf832_logic import Zf832Logic


class Zf832LogicTest(LogicTest):
    def setUp(self):
        super(Zf832LogicTest, self).setUp()
        self.logic = Zf832Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf832Logic
        self._methods_are_bound()


    def test_zf832_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zf832_init,
            self.settings_manager.get_talked_to_zf832_times
        )


    def test_kill_zf832(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf832,
            self.logic.kill_zf832
        )


    def test_zf832_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zf832_init()


    def test_kill_zf832(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf832,
            self.logic.kill_zf832
        )


    def test_r35147_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35147_action()


    def test_r35147_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35147_condition
        )


    def test_r35164_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35164_condition
        )


    def test_r35165_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35165_condition
        )


    def test_r35166_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35166_condition
        )


    def test_r35171_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35171_condition()


    def test_r35172_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35172_condition()


    def test_r35173_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35173_condition
        )


    def test_r35174_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35174_condition
        )


    def test_r35175_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35175_condition()


    def test_r35176_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35176_condition()


    def test_r35149_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35149_condition()


    def test_r35162_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35162_condition
        )


    def test_r35163_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35163_condition()


    def test_r35168_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35168_condition()


    def test_r35169_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35169_condition
        )


    def test_r35170_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35170_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
