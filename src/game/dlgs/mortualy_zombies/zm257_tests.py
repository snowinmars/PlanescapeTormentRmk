import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm257_logic import Zm257Logic


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
        self._init_with_location(
            'mortuary_f2r5',
            self.logic.zm257_init,
            self.settings_manager.get_talked_to_zm257_times
        )


    def test_kill_zm257(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm257())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm257()

        self.assertTrue(self.settings_manager.get_dead_zm257())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_know_zm257_spirit_action(self):
        logic = Zm257Logic(self.settings_manager)

        self._false_then_true_action(
            self.settings_manager.get_know_zm257_spirit,
            logic.know_zm257_spirit_action
        )


    def test_r6510_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r6510_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r6510_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r9562_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9562_action
        )


    def test_know_zm257_spirit_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_zm257_spirit(x),
            self.logic.know_zm257_spirit_condition
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
