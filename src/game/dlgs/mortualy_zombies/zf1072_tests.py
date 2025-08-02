import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zf1072_logic import Zf1072Logic

class Zf1072LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zf1072Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zf1072Logic
        self._methods_are_bound()


    def test_zf1072_init(self):
        logic = Zf1072Logic(self.settings_manager)
        id = 'mortuary_f2r3'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zf1072())

        logic.zf1072_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zf1072(), True)


    def test_kill_zf1072(self):
        logic = Zf1072Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf1072())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zf1072()

        self.assertTrue(self.settings_manager.get_dead_zf1072())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r35115_action(self):
        logic = Zf1072Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35115_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35115_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35115_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35115_condition()
        )


    def test_r35132_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35132_condition()
        )


    def test_r35133_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r35133_condition()
        )


    def test_r35134_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35134_condition()
        )


    def test_r35139_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35139_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35139_condition())


    def test_r35140_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35140_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35140_condition())


    def test_r35141_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35141_condition()
        )


    def test_r35142_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35142_condition()
        )


    def test_r35143_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35143_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35143_condition())


    def test_r35144_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35144_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35144_condition())


    def test_r35117_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35117_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35117_condition())


    def test_r35130_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35130_condition()
        )


    def test_r35131_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35131_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35131_condition())


    def test_r35136_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35136_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35136_condition())


    def test_r35137_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35137_condition()
        )


    def test_r35138_condition(self):
        logic = Zf1072Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35138_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35138_condition())


if __name__ == '__main__':
    unittest.main()
