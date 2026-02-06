import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.zf594.Zf594Logic import (Zf594LogicGenerated, Zf594Logic)


class Zf594LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zf594LogicGeneratedTests, self).setUp()
        self.logic = Zf594LogicGenerated(self.state_manager)


    def test_r35019_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r35019_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r35019_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r35019_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r35019_condition
        )


    def test_r35036_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r35036_condition
        )


    def test_r35037_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r35037_condition
        )


    def test_r35038_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r35038_condition
        )


    def test_r35043_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35043_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35043_condition())


    def test_r35044_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35044_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35044_condition())


    def test_r35045_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35045_condition
        )


    def test_r35046_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35046_condition
        )


    def test_r35047_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35047_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35047_condition())


    def test_r35048_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35048_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35048_condition())


    def test_r35021_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35021_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35021_condition())


    def test_r35034_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35034_condition
        )


    def test_r35035_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35035_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35035_condition())


    def test_r35040_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35040_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35040_condition())


    def test_r35041_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r35041_condition
        )


    def test_r35042_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35042_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35042_condition())


class Zf594LogicTests(LogicTests):
    def setUp(self):
        super(Zf594LogicTests, self).setUp()
        self.logic = Zf594Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zf594_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
