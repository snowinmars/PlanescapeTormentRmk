import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm732_logic import Zm732Logic


class Zm732LogicTest(LogicTest):
    def setUp(self):
        super(Zm732LogicTest, self).setUp()
        self.logic = Zm732Logic(self.state_manager)


    def test_r6533_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_zombie_chaotic())

        self.logic.r6533_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_zombie_chaotic())

        self.logic.r6533_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_zombie_chaotic())


    def test_r64271_action(self):
        self._false_then_true_action(
            self.state_manager.get_has_tome_ba,
            self.logic.r64271_action
        )


    def test_r6533_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r6533_condition
        )


    def test_r6532_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r6532_condition
        )


    def test_r6534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_vaxis_exposed(x),
            self.logic.r6534_condition
        )


    def test_r6535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r6535_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
