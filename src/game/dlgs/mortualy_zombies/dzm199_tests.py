import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm199_logic import Dzm199Logic

class Dzm199LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm199Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm199Logic
        self._methods_are_bound()


    def test_dzm199_init(self):
        logic = Dzm199Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm199())

        logic.dzm199_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm199(), True)


    def test_kill_dzm199(self):
        logic = Dzm199Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm199())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm199()

        self.assertTrue(self.settings_manager.get_dead_dzm199())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34976_action(self):
        logic = Dzm199Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r34976_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r34976_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r34976_condition(self):
        logic = Dzm199Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r34976_condition()
        )


    def test_r34979_condition(self):
        logic = Dzm199Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r34979_condition()
        )


    def test_r34980_condition(self):
        logic = Dzm199Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r34980_condition()
        )


    def test_r34981_condition(self):
        logic = Dzm199Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r34981_condition()
        )


if __name__ == '__main__':
    unittest.main()
