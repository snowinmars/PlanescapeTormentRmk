import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm613_logic import (Zm613LogicGenerated, Zm613Logic)


class Zm613LogicTest(LogicTest):
    def setUp(self):
        super(Zm613LogicTest, self).setUp()
        self.logic = Zm613Logic(self.state_manager)


class Zm613LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm613LogicGeneratedTest, self).setUp()
        self.logic = Zm613LogicGenerated(self.state_manager)


    def test_r6543_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_zombie_chaotic())

        self.logic.r6543_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_zombie_chaotic())

        self.logic.r6543_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_zombie_chaotic())


    def test_r6543_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r6543_condition
        )


    def test_r6544_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r6544_condition
        )


    def test_r6545_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_vaxis_exposed(x),
            self.logic.r6545_condition
        )


    def test_r6546_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r6546_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
