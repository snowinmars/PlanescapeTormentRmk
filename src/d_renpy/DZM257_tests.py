import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm257_logic import Zm257Logic


class Zm257LogicTest(LogicTest):
    def setUp(self):
        super(Zm257LogicTest, self).setUp()
        self.logic = Zm257Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm257Logic
        self._methods_are_bound()


    def test_zm257_init(self):
        location = 'LOCATION'
        delta_talked_to_zm257_times = 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm257_times(), 0)

        self.logic.zm257_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm257_times(), delta_talked_to_zm257_times)

        self.logic.zm257_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm257_times(), 2 * delta_talked_to_zm257_times)


    def test_kill_zm257(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm257,
            self.logic.kill_zm257
        )


    def test_r6510_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r6510_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r6510_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r9562_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9562_action
        )


    def test_r6510_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6510_condition
        )


    def test_r6511_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6511_condition
        )


    def test_r6512_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6512_condition
        )


    def test_r6513_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6513_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
