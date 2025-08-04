import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm613_logic import Zm613Logic


class Zm613LogicTest(LogicTest):
    def setUp(self):
        super(Zm613LogicTest, self).setUp()
        self.logic = Zm613Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm613Logic
        self._methods_are_bound()


    def test_zm613_init(self):
        self._init_with_location(
            'mortuary_f3r8',
            self.logic.zm613_init,
            self.settings_manager.get_talked_to_zm613_times
        )


    def test_kill_zm613(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm613())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm613()

        self.assertTrue(self.settings_manager.get_dead_zm613())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r6543_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r6543_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r6543_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r6543_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6543_condition
        )


    def test_r6544_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6544_condition
        )


    def test_r6545_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6545_condition
        )


    def test_r6546_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6546_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
