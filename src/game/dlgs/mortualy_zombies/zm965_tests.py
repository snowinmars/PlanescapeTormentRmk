import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm965_logic import Zm965Logic


class Zm965LogicTest(LogicTest):
    def setUp(self):
        super(Zm965LogicTest, self).setUp()
        self.logic = Zm965Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm965Logic
        self._methods_are_bound()


    def test_zm965_init(self):
        self._init_with_location(
            'mortuary_f2r2',
            self.logic.zm965_init,
            self.settings_manager.get_talked_to_zm965_times
        )


    def test_kill_zm965(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm965())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm965()

        self.assertTrue(self.settings_manager.get_dead_zm965())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r34923_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r34923_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r34923_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r34923_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34923_condition
        )


    def test_r45070_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45070_condition
        )


    def test_r45071_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45071_condition
        )


    def test_r45072_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45072_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
