import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm732_logic import Zm732Logic


class Zm732LogicTest(LogicTest):
    def setUp(self):
        super(Zm732LogicTest, self).setUp()
        self.logic = Zm732Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm732Logic
        self._methods_are_bound()


    def test_zm732_init(self):
        location = 'LOCATION'
        talked_to_zm732_times_before = 0
        talked_to_zm732_times_after = 1
        talked_to_zm732_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm732_times(), talked_to_zm732_times_before)

        self.logic.zm732_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm732_times(), talked_to_zm732_times_after)

        self.logic.zm732_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm732_times(), talked_to_zm732_times_after_once)


    def test_kill_zm732(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm732,
            self.logic.kill_zm732
        )


    def test_r6533_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r6533_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r6533_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r64271_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_tome_ba,
            self.logic.r64271_action
        )


    def test_r6533_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6533_condition
        )


    def test_r6532_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6532_condition
        )


    def test_r6534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6534_condition
        )


    def test_r6535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6535_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
