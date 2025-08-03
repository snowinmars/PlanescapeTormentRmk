import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zf114_logic import Zf114Logic

class Zf114LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zf114Logic(self.settings_manager)

        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zf114Logic
        self._methods_are_bound()


    def test_zf114_init(self):
        self._init_(
            'mortuary_f2r2',
            Zf114Logic(self.settings_manager).zf114_init,
            self.settings_manager.get_talked_to_zf114_times
        )


    def test_kill_zf114(self):
        logic = Zf114Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf114())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zf114()

        self.assertTrue(self.settings_manager.get_dead_zf114())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34987_action(self):
        logic = Zf114Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r34987_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r34987_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r34987_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r34987_condition()
        )


    def test_r35004_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35004_condition()
        )


    def test_r35005_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r35005_condition()
        )


    def test_r35006_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35006_condition()
        )


    def test_r35011_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35011_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35011_condition())


    def test_r35012_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35012_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35012_condition())


    def test_r35013_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35013_condition()
        )


    def test_r35014_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35014_condition()
        )


    def test_r35015_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35015_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35015_condition())


    def test_r35016_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35016_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35016_condition())


    def test_r34989_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r34989_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r34989_condition())


    def test_r35002_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35002_condition()
        )


    def test_r35003_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35003_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35003_condition())


    def test_r35008_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35008_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35008_condition())


    def test_r35009_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35009_condition()
        )


    def test_r35010_condition(self):
        logic = Zf114Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35010_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35010_condition())


if __name__ == '__main__':
    unittest.main()
