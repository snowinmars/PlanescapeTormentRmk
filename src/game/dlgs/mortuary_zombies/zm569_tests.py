import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm569_logic import (Zm569LogicGenerated, Zm569Logic)


class Zm569LogicTest(LogicTest):
    def setUp(self):
        super(Zm569LogicTest, self).setUp()
        self.logic = Zm569Logic(self.state_manager)


class Zm569LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm569LogicGeneratedTest, self).setUp()
        self.logic = Zm569LogicGenerated(self.state_manager)


    def test_r24576_condition(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)
        self.state_manager.world_manager.set_has_intro_key(True)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r24576_condition())

        self.state_manager.world_manager.set_mortuary_walkthrough(0)
        self.state_manager.world_manager.set_has_intro_key(False)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r24576_condition())


    def test_r24579_condition(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)
        self.state_manager.world_manager.set_has_intro_key(True)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r24579_condition())

        self.state_manager.world_manager.set_mortuary_walkthrough(0)
        self.state_manager.world_manager.set_has_intro_key(False)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r24579_condition())


    def test_r24580_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_mortuary_walkthrough(x),
            0,
            self.logic.r24580_condition
        )


    def test_r24581_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r24581_condition
        )


    def test_r24584_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r24584_condition
        )


    def test_r24585_condition(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)
        self.state_manager.world_manager.set_has_intro_key(True)

        self.assertFalse(self.logic.r24585_condition())

        self.state_manager.world_manager.set_mortuary_walkthrough(0)
        self.state_manager.world_manager.set_has_intro_key(False)

        self.assertTrue(self.logic.r24585_condition())


    def test_r42294_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r42294_condition
        )


    def test_r42295_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r42295_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
