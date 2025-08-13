import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm782_logic import Zm782Logic


class Zm782LogicTest(LogicTest):
    def setUp(self):
        super(Zm782LogicTest, self).setUp()
        self.logic = Zm782Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm782Logic
        self._methods_are_bound()


    def test_zm782_init(self):
        location = 'LOCATION'
        delta_talked_to_zm782_times = 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm782_times(), 0)

        self.logic.zm782_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm782_times(), delta_talked_to_zm782_times)

        self.logic.zm782_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm782_times(), 2 * delta_talked_to_zm782_times)


    def test_kill_zm782(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm782,
            self.logic.kill_zm782
        )


    def test_r24716_action(self):
        self.logic.r24716_action()


    def test_r24709_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r24709_condition
        )


    def test_r24712_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r24712_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
