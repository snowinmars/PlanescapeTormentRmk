import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm782_logic import (Zm782LogicGenerated, Zm782Logic)


class Zm782LogicTest(LogicTest):
    def setUp(self):
        super(Zm782LogicTest, self).setUp()
        self.logic = Zm782Logic(self.state_manager)


#     def test_r24716_action(self): # unused
#         self.logic.r24716_action()


    def test_pick_key_up(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_intro_key,
            self.logic.pick_key_up
        )


    def test_s24_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.s24_condition
        )


    def test_r24709_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_has_intro_key(True)
        self.assertFalse(self.logic.r24709_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_has_intro_key(False)
        self.assertTrue(self.logic.r24709_condition())


    def test_r24712_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_has_intro_key(True)
        self.assertFalse(self.logic.r24712_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_has_intro_key(False)
        self.assertTrue(self.logic.r24712_condition())


    def test_r24713_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_has_intro_key(x),
            self.logic.r24713_condition
        )


    def test_r24714_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_has_intro_key(x),
            self.logic.r24714_condition
        )


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm782_times,
            1,
            self.logic.talk
        )


class Zm782LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm782LogicGeneratedTest, self).setUp()
        self.logic = Zm782LogicGenerated(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
