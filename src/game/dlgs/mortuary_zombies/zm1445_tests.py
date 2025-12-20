import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm1445_logic import (Zm1445LogicGenerated, Zm1445Logic)


class Zm1445LogicTest(LogicTest):
    def setUp(self):
        super(Zm1445LogicTest, self).setUp()
        self.logic = Zm1445Logic(self.state_manager)


class Zm1445LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm1445LogicGeneratedTest, self).setUp()
        self.logic = Zm1445LogicGenerated(self.state_manager)


    def test_r46757_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r46757_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r46757_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r46757_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r46757_condition
        )


    def test_r46760_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r46760_condition
        )


    def test_r46761_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r46761_condition
        )


    def test_r46762_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r46762_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
