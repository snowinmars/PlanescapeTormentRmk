import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm257_logic import Zm257Logic


class Zm257LogicTest(LogicTest):
    def setUp(self):
        super(Zm257LogicTest, self).setUp()
        self.logic = Zm257Logic(self.settings_manager)



    def test_know_zm257_spirit_action(self):
        logic = Zm257Logic(self.settings_manager)

        self._false_then_true_action(
            self.settings_manager.get_know_zm257_spirit,
            logic.know_zm257_spirit_action
        )


    def test_r6510_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

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
