import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zf832_logic import (Zf832LogicGenerated, Zf832Logic)


class Zf832LogicTest(LogicTest):
    def setUp(self):
        super(Zf832LogicTest, self).setUp()
        self.logic = Zf832Logic(self.state_manager)


class Zf832LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zf832LogicGeneratedTest, self).setUp()
        self.logic = Zf832LogicGenerated(self.state_manager)


    def test_r35147_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_zombie_chaotic())

        self.logic.r35147_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_zombie_chaotic())

        self.logic.r35147_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_zombie_chaotic())


    def test_r35147_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r35147_condition
        )


    def test_r35164_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r35164_condition
        )


    def test_r35165_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_vaxis_exposed(x),
            self.logic.r35165_condition
        )


    def test_r35166_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r35166_condition
        )


    def test_r35171_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35171_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35171_condition())


    def test_r35172_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35172_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35172_condition())


    def test_r35173_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35173_condition
        )


    def test_r35174_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35174_condition
        )


    def test_r35175_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35175_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35175_condition())


    def test_r35176_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35176_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35176_condition())


    def test_r35149_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35149_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35149_condition())


    def test_r35162_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35162_condition
        )


    def test_r35163_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35163_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35163_condition())


    def test_r35168_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35168_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35168_condition())


    def test_r35169_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35169_condition
        )


    def test_r35170_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35170_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35170_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
