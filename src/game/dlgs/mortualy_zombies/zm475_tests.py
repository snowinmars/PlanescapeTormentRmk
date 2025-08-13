import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm475_logic import Zm475Logic


class Zm475LogicTest(LogicTest):
    def setUp(self):
        super(Zm475LogicTest, self).setUp()
        self.logic = Zm475Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm475Logic
        self._methods_are_bound()


    def test_zm475_init(self):
        self._init_with_location(
            'mortuary_f3r3',
            self.logic.zm475_init,
            self.settings_manager.get_talked_to_zm475_times
        )


    def test_kill_zm475(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm475())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm475()

        self.assertTrue(self.settings_manager.get_dead_zm475())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r6587_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r6587_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r6587_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r6587_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6587_condition
        )


    def test_r6588_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6588_condition
        )


    def test_r6589_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6589_condition
        )


    def test_r6590_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6590_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
