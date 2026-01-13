import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zf626_logic import (Zf626LogicGenerated, Zf626Logic)


class Zf626LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zf626LogicGeneratedTest, self).setUp()
        self.logic = Zf626LogicGenerated(self.state_manager)


    def test_r35051_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r35051_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r35051_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r35051_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r35051_condition
        )


    def test_r35068_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r35068_condition
        )


    def test_r35069_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r35069_condition
        )


    def test_r35070_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r35070_condition
        )


    def test_r35075_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35075_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35075_condition())


    def test_r35076_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35076_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35076_condition())


    def test_r35077_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35077_condition
        )


    def test_r35078_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35078_condition
        )


    def test_r35079_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35079_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35079_condition())


    def test_r35080_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35080_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35080_condition())


    def test_r35053_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35053_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35053_condition())


    def test_r35066_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35066_condition
        )


    def test_r35067_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35067_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35067_condition())


    def test_r35072_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35072_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35072_condition())


    def test_r35073_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35073_condition
        )


    def test_r35074_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35074_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35074_condition())


class Zf626LogicTest(LogicTest):
    def setUp(self):
        super(Zf626LogicTest, self).setUp()
        self.logic = Zf626Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zf626_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
