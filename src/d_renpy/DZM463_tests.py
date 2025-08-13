import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm463_logic import Zm463Logic


class Zm463LogicTest(LogicTest):
    def setUp(self):
        super(Zm463LogicTest, self).setUp()
        self.logic = Zm463Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm463Logic
        self._methods_are_bound()


    def test_zm463_init(self):
        location = 'LOCATION'
        talked_to_zm463_times_before = 0
        talked_to_zm463_times_after = 1
        talked_to_zm463_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm463_times(), talked_to_zm463_times_before)

        self.logic.zm463_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm463_times(), talked_to_zm463_times_after)

        self.logic.zm463_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm463_times(), talked_to_zm463_times_after_once)


    def test_kill_zm463(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm463,
            self.logic.kill_zm463
        )


    def test_r6485_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r6485_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r6485_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r6485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6485_condition
        )


    def test_r6488_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6488_condition
        )


    def test_r6489_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6489_condition
        )


    def test_r6490_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6490_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
