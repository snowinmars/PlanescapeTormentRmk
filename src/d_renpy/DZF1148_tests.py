import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf1148_logic import Zf1148Logic


class Zf1148LogicTest(LogicTest):
    def setUp(self):
        super(Zf1148LogicTest, self).setUp()
        self.logic = Zf1148Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf1148Logic
        self._methods_are_bound()


    def test_zf1148_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zf1148_init,
            self.settings_manager.get_talked_to_zf1148_times
        )


    def test_kill_zf1148(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf1148,
            self.logic.kill_zf1148
        )


    def test_zf1148_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zf1148_init()


    def test_kill_zf1148(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf1148,
            self.logic.kill_zf1148
        )


    def test_r35243_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35243_action()


    def test_r35243_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35243_condition
        )


    def test_r35260_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35260_condition
        )


    def test_r35261_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35261_condition
        )


    def test_r35262_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35262_condition
        )


    def test_r35267_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35267_condition()


    def test_r35268_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35268_condition()


    def test_r35269_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35269_condition
        )


    def test_r35270_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35270_condition
        )


    def test_r35271_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35271_condition()


    def test_r35272_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35272_condition()


    def test_r35245_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35245_condition()


    def test_r35258_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35258_condition
        )


    def test_r35259_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35259_condition()


    def test_r35264_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35264_condition()


    def test_r35265_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35265_condition
        )


    def test_r35266_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35266_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
