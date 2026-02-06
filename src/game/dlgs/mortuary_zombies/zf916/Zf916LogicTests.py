import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.zf916.Zf916Logic import (Zf916LogicGenerated, Zf916Logic)


class Zf916LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zf916LogicGeneratedTests, self).setUp()
        self.logic = Zf916LogicGenerated(self.state_manager)


    def test_r24720_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r24720_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r24720_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r24720_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r24720_condition
        )


    def test_r24737_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r24737_condition
        )


    def test_r24738_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r24738_condition
        )


    def test_r24739_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r24739_condition
        )


    def test_r24744_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24744_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24744_condition())


    def test_r24745_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24745_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24745_condition())


    def test_r24746_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r24746_condition
        )


    def test_r24747_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r24747_condition
        )


    def test_r24748_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24748_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24748_condition())


    def test_r24749_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24749_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24749_condition())


    def test_r24722_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24722_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24722_condition())


    def test_r24735_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r24735_condition
        )


    def test_r24736_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24736_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24736_condition())


    def test_r24741_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24741_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24741_condition())


    def test_r24742_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r24742_condition
        )


    def test_r24743_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r24743_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r24743_condition())


class Zf916LogicTests(LogicTests):
    def setUp(self):
        super(Zf916LogicTests, self).setUp()
        self.logic = Zf916Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zf916_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
