import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary.Morte1Logic import (Morte1LogicGenerated, Morte1Logic)


class Morte1LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Morte1LogicGeneratedTests, self).setUp()
        self.logic = Morte1LogicGenerated(self.state_manager)


    def test_r39793_action(self):
        self.state_manager.world_manager.set_morte(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte,
            1,
            self.logic.r39793_action
        )


    def test_r39824_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r39824_action
        )


#     def test_r39831_action(self):  # unused
#         self._false_then_true_action(
#             self.state_manager.world_manager.get_in_party_morte,
#             self.logic.r39831_action
#         )


    def test_r39852_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_in_party_morte,
            self.logic.r39852_action
        )


    def test_r39856_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_in_party_morte,
            self.logic.r39856_action
        )


    def test_r39859_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_in_party_morte,
            self.logic.r39859_action
        )


class Morte1LogicTests(LogicTests):
    def setUp(self):
        super(Morte1LogicTests, self).setUp()
        self.logic = Morte1Logic(self.state_manager)


    def test_set_know_morte_name(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_morte_name,
            self.logic.set_know_morte_name
        )


    def test_s23_action(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_mortuary_walkthrough,
            1,
            self.logic.s23_action
        )


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_morte_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
