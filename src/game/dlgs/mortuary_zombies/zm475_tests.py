import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm475_logic import (Zm475LogicGenerated, Zm475Logic)


class Zm475LogicTest(LogicTest):
    def setUp(self):
        super(Zm475LogicTest, self).setUp()
        self.logic = Zm475Logic(self.state_manager)


class Zm475LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm475LogicGeneratedTest, self).setUp()
        self.logic = Zm475LogicGenerated(self.state_manager)


    def test_r6587_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_zombie_chaotic())

        self.logic.r6587_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_zombie_chaotic())

        self.logic.r6587_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_zombie_chaotic())


    def test_r6587_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r6587_condition
        )


    def test_r6588_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r6588_condition
        )


    def test_r6589_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_vaxis_exposed(x),
            self.logic.r6589_condition
        )


    def test_r6590_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r6590_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
