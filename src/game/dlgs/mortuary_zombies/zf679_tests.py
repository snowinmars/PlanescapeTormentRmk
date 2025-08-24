import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zf679_logic import Zf679Logic


class Zf679LogicTest(LogicTest):
    def setUp(self):
        super(Zf679LogicTest, self).setUp()
        self.logic = Zf679Logic(self.settings_manager)


    def test_r35179_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r35179_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r35179_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r35179_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35179_condition
        )


    def test_r35196_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35196_condition
        )


    def test_r35197_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35197_condition
        )


    def test_r35198_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35198_condition
        )


    def test_r35203_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35203_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35203_condition())


    def test_r35204_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35204_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35204_condition())


    def test_r35205_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35205_condition
        )


    def test_r35206_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35206_condition
        )


    def test_r35207_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35207_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35207_condition())


    def test_r35208_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35208_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35208_condition())


    def test_r35181_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35181_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35181_condition())


    def test_r35194_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35194_condition
        )


    def test_r35195_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35195_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35195_condition())


    def test_r35200_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35200_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35200_condition())


    def test_r35201_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35201_condition
        )


    def test_r35202_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35202_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35202_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
