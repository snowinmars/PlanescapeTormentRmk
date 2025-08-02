import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzf832_logic import Dzf832Logic

class Dzf832LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzf832Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzf832Logic
        self._methods_are_bound()


    def test_dzf832_init(self):
        logic = Dzf832Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzf832())

        logic.dzf832_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzf832(), True)


    def test_kill_dzf832(self):
        logic = Dzf832Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzf832())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzf832()

        self.assertTrue(self.settings_manager.get_dead_dzf832())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r35147_action(self):
        logic = Dzf832Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35147_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35147_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35147_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35147_condition()
        )


    def test_r35164_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35164_condition()
        )


    def test_r35165_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r35165_condition()
        )


    def test_r35166_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35166_condition()
        )


    def test_r35171_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35171_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35171_condition())


    def test_r35172_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35172_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35172_condition())


    def test_r35173_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35173_condition()
        )


    def test_r35174_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35174_condition()
        )


    def test_r35175_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35175_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35175_condition())


    def test_r35176_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35176_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35176_condition())


    def test_r35149_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35149_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35149_condition())


    def test_r35162_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35162_condition()
        )


    def test_r35163_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35163_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35163_condition())


    def test_r35168_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35168_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35168_condition())


    def test_r35169_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35169_condition()
        )


    def test_r35170_condition(self):
        logic = Dzf832Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35170_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35170_condition())


if __name__ == '__main__':
    unittest.main()
