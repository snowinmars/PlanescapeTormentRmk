import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf891_logic import Zf891Logic


class Zf891LogicTest(LogicTest):
    def setUp(self):
        super(Zf891LogicTest, self).setUp()
        self.logic = Zf891Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf891Logic
        self._methods_are_bound()


    def test_zf891_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zf891_init,
            self.settings_manager.get_talked_to_zf891_times
        )


    def test_kill_zf891(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf891,
            self.logic.kill_zf891
        )


    def test_zf891_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zf891_init()


    def test_kill_zf891(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf891,
            self.logic.kill_zf891
        )


    def test_r35275_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35275_action()


    def test_r35275_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35275_condition
        )


    def test_r35292_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35292_condition
        )


    def test_r35293_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35293_condition
        )


    def test_r35294_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35294_condition
        )


    def test_r35299_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35299_condition()


    def test_r35300_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35300_condition()


    def test_r35301_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35301_condition
        )


    def test_r35302_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35302_condition
        )


    def test_r35303_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35303_condition()


    def test_r35304_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35304_condition()


    def test_r35277_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35277_condition()


    def test_r35290_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35290_condition
        )


    def test_r35291_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35291_condition()


    def test_r35296_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35296_condition()


    def test_r35297_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35297_condition
        )


    def test_r35298_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35298_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
