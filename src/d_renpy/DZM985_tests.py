import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm985_logic import Zm985Logic


class Zm985LogicTest(LogicTest):
    def setUp(self):
        super(Zm985LogicTest, self).setUp()
        self.logic = Zm985Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm985Logic
        self._methods_are_bound()


    def test_zm985_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.zm985_init,
            self.settings_manager.get_talked_to_zm985_times
        )


    def test_kill_zm985(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm985,
            self.logic.kill_zm985
        )


    def test_zm985_init(self):
        # TODO [snowinmars]: write the test
        self.logic.zm985_init()


    def test_kill_zm985(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm985,
            self.logic.kill_zm985
        )


    def test_r45516_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45516_action()


    def test_r45517_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45517_action()


    def test_r45518_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45518_action()


    def test_r45519_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45519_action()


    def test_r45532_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45532_action()


    def test_r45539_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45539_action()


    def test_r45516_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45516_condition
        )


    def test_r45517_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45517_condition
        )


    def test_r45518_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45518_condition
        )


    def test_r45519_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45519_condition
        )


    def test_r45520_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45520_condition
        )


    def test_r45521_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45521_condition
        )


    def test_r45532_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45532_condition
        )


    def test_r45533_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45533_condition
        )


    def test_r45534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45534_condition
        )


    def test_r45535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45535_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
