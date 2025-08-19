import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf444_logic import Zf444Logic


class Zf444LogicTest(LogicTest):
    def setUp(self):
        super(Zf444LogicTest, self).setUp()
        self.logic = Zf444Logic(self.settings_manager)


    def test_r35211_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r35211_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r35211_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r35211_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35211_condition
        )


    def test_r35228_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35228_condition
        )


    def test_r35229_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35229_condition
        )


    def test_r35230_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35230_condition
        )


    def test_r35235_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35235_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35235_condition())


    def test_r35236_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35236_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35236_condition())


    def test_r35237_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35237_condition
        )


    def test_r35238_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35238_condition
        )


    def test_r35239_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35239_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35239_condition())


    def test_r35240_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35240_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35240_condition())


    def test_r35213_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35213_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35213_condition())


    def test_r35226_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35226_condition
        )


    def test_r35227_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35227_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35227_condition())


    def test_r35232_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35232_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35232_condition())


    def test_r35233_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35233_condition
        )


    def test_r35234_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35234_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35234_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
