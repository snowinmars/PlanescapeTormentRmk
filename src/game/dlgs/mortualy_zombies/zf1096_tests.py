import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zf1096_logic import Zf1096Logic


class Zf1096LogicTest(LogicTest):
    def setUp(self):
        super(Zf1096LogicTest, self).setUp()
        self.logic = Zf1096Logic(self.settings_manager)


    def test_r35083_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r35083_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r35083_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r35083_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35083_condition
        )


    def test_r35100_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35100_condition
        )


    def test_r35101_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35101_condition
        )


    def test_r35102_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35102_condition
        )


    def test_r35107_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35107_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35107_condition())


    def test_r35108_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35108_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35108_condition())


    def test_r35109_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35109_condition
        )


    def test_r35110_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35110_condition
        )


    def test_r35111_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35111_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35111_condition())


    def test_r35112_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35112_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35112_condition())


    def test_r35085_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35085_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35085_condition())


    def test_r35098_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35098_condition
        )


    def test_r35099_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35099_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35099_condition())


    def test_r35104_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35104_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35104_condition())


    def test_r35105_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35105_condition
        )


    def test_r35106_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35106_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35106_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
