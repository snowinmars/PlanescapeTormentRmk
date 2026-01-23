import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm825_logic import (Zm825LogicGenerated, Zm825Logic)


class Zm825LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm825LogicGeneratedTest, self).setUp()
        self.logic = Zm825LogicGenerated(self.state_manager)


    def test_r24565_condition(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r24565_condition())

        self.state_manager.world_manager.set_mortuary_walkthrough(0)
        self.state_manager.inventory_manager.drop_item('has_intro_key')
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r24565_condition())


    def test_r24568_condition(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r24568_condition())

        self.state_manager.world_manager.set_mortuary_walkthrough(0)
        self.state_manager.inventory_manager.drop_item('has_intro_key')
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r24568_condition())


    def test_r24569_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_mortuary_walkthrough(x),
            0,
            self.logic.r24569_condition
        )


    def test_r24570_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r24570_condition
        )


    def test_r24573_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r24573_condition
        )


    def test_r24574_condition(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)
        self.state_manager.inventory_manager.pick_item('has_intro_key')

        self.assertFalse(self.logic.r24574_condition())

        self.state_manager.world_manager.set_mortuary_walkthrough(0)
        self.state_manager.inventory_manager.drop_item('has_intro_key')

        self.assertTrue(self.logic.r24574_condition())


    def test_r42312_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r42312_condition
        )


    def test_r42313_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r42313_condition
        )


class Zm825LogicTest(LogicTest):
    def setUp(self):
        super(Zm825LogicTest, self).setUp()
        self.logic = Zm825Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm825_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
