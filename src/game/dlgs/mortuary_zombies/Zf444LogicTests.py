import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.Zf444Logic import (Zf444LogicGenerated, Zf444Logic)


class Zf444LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zf444LogicGeneratedTests, self).setUp()
        self.logic = Zf444LogicGenerated(self.state_manager)


    def test_r35211_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r35211_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r35211_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r35211_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r35211_condition
        )


    def test_r35228_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r35228_condition
        )


    def test_r35229_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r35229_condition
        )


    def test_r35230_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r35230_condition
        )


    def test_r35235_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35235_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35235_condition())


    def test_r35236_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35236_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35236_condition())


    def test_r35237_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35237_condition
        )


    def test_r35238_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35238_condition
        )


    def test_r35239_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35239_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35239_condition())


    def test_r35240_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35240_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35240_condition())


    def test_r35213_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35213_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35213_condition())


    def test_r35226_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35226_condition
        )


    def test_r35227_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35227_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35227_condition())


    def test_r35232_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35232_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35232_condition())


    def test_r35233_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35233_condition
        )


    def test_r35234_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35234_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35234_condition())


class Zf444LogicTests(LogicTests):
    def setUp(self):
        super(Zf444LogicTests, self).setUp()
        self.logic = Zf444Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zf444_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
