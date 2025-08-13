import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.morte1_logic import Morte1Logic


class Morte1LogicTest(LogicTest):
    def setUp(self):
        super(Morte1LogicTest, self).setUp()
        self.logic = Morte1Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Morte1Logic
        self._methods_are_bound()


    def test_morte1_init(self):
        location = 'LOCATION'
        talked_to_morte1_times_before = 0
        talked_to_morte1_times_after = 1
        talked_to_morte1_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_morte1_times(), talked_to_morte1_times_before)

        self.logic.morte1_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_morte1_times(), talked_to_morte1_times_after)

        self.logic.morte1_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_morte1_times(), talked_to_morte1_times_after_once)


    def test_kill_morte1(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_morte1,
            self.logic.kill_morte1
        )


    def test_r39793_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_value,
            1,
            self.logic.r39793_action
        )


    def test_r39824_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r39824_action
        )


    def test_r39831_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39831_action
        )


    def test_r39852_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39852_action
        )


    def test_r39856_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39856_action
        )


    def test_r39859_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39859_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
