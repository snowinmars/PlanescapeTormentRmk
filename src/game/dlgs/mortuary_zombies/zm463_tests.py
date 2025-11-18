import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm463_logic import (Zm463LogicGenerated, Zm463Logic)


class Zm463LogicTest(LogicTest):
    def setUp(self):
        super(Zm463LogicTest, self).setUp()
        self.logic = Zm463Logic(self.state_manager)


class Zm463LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm463LogicGeneratedTest, self).setUp()
        self.logic = Zm463LogicGenerated(self.state_manager)


    def test_r6485_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6485_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6485_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r6485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6485_condition
        )


    def test_r6488_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6488_condition
        )


    def test_r6489_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r6489_condition
        )


    def test_r6490_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6490_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
