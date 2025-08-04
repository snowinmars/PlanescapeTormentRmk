import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf444_logic import Zf444Logic


class Zf444LogicTest(LogicTest):
    def setUp(self):
        super(Zf444LogicTest, self).setUp()
        self.logic = Zf444Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf444Logic
        self._methods_are_bound()


    def test_zf444_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zf444_init,
            self.settings_manager.get_talked_to_zf444_times
        )


    def test_kill_zf444(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf444,
            self.logic.kill_zf444
        )


    def test_zf444_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zf444_init()


    def test_kill_zf444(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf444,
            self.logic.kill_zf444
        )


    def test_r35211_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35211_action()


    def test_r35211_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35211_condition
        )


    def test_r35228_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35228_condition
        )


    def test_r35229_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35229_condition
        )


    def test_r35230_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35230_condition
        )


    def test_r35235_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35235_condition()


    def test_r35236_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35236_condition()


    def test_r35237_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35237_condition
        )


    def test_r35238_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35238_condition
        )


    def test_r35239_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35239_condition()


    def test_r35240_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35240_condition()


    def test_r35213_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35213_condition()


    def test_r35226_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35226_condition
        )


    def test_r35227_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35227_condition()


    def test_r35232_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35232_condition()


    def test_r35233_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35233_condition
        )


    def test_r35234_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35234_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
