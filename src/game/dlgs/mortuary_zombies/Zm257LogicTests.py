import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.Zm257Logic import (Zm257LogicGenerated, Zm257Logic)


class Zm257LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zm257LogicGeneratedTests, self).setUp()
        self.logic = Zm257LogicGenerated(self.state_manager)


    def test_r6510_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6510_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6510_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r9562_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r9562_action
        )


    def test_r6510_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6510_condition
        )


    def test_r6511_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6511_condition
        )


    def test_r6512_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r6512_condition
        )


    def test_r6513_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6513_condition
        )


class Zm257LogicTests(LogicTests):
    def setUp(self):
        super(Zm257LogicTests, self).setUp()
        self.logic = Zm257Logic(self.state_manager)


    def test_set_know_zm257_spirit(self):
        logic = Zm257Logic(self.state_manager)

        self._false_then_true_action(
            self.state_manager.world_manager.get_know_zm257_spirit,
            logic.set_know_zm257_spirit
        )


    def test_get_know_zm257_spirit(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_zm257_spirit(x),
            self.logic.get_know_zm257_spirit
        )


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm257_times,
            1,
            self.logic.talk
        )


    def test_talk_spirit(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm257_spirit_times,
            1,
            self.logic.talk_spirit
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
