import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zf1072_logic import (Zf1072LogicGenerated, Zf1072Logic)


class Zf1072LogicTest(LogicTest):
    def setUp(self):
        super(Zf1072LogicTest, self).setUp()
        self.logic = Zf1072Logic(self.state_manager)


class Zf1072LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zf1072LogicGeneratedTest, self).setUp()
        self.logic = Zf1072LogicGenerated(self.state_manager)


    def test_r35115_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_zombie_chaotic())

        self.logic.r35115_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_zombie_chaotic())

        self.logic.r35115_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_zombie_chaotic())


    def test_r35115_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r35115_condition
        )


    def test_r35132_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_zombie_chaotic(x),
            self.logic.r35132_condition
        )


    def test_r35133_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_vaxis_exposed(x),
            self.logic.r35133_condition
        )


    def test_r35134_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r35134_condition
        )


    def test_r35139_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35139_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35139_condition())


    def test_r35140_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35140_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35140_condition())


    def test_r35141_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35141_condition
        )


    def test_r35142_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35142_condition
        )


    def test_r35143_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35143_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35143_condition())


    def test_r35144_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35144_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35144_condition())


    def test_r35117_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35117_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35117_condition())


    def test_r35130_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35130_condition
        )


    def test_r35131_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35131_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35131_condition())


    def test_r35136_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35136_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35136_condition())


    def test_r35137_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_quip(x),
            self.logic.r35137_condition
        )


    def test_r35138_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35138_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35138_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
