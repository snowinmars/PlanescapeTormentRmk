import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm965_logic import Dzm965Logic

class Dzm965LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm965Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm965Logic
        self._methods_are_bound()


    def test_dzm965_init(self):
        logic = Dzm965Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm965())

        logic.dzm965_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm965(), True)


    def test_kill_dzm965(self):
        logic = Dzm965Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm965())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm965()

        self.assertTrue(self.settings_manager.get_dead_dzm965())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34923_action(self):
        logic = Dzm965Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r34923_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r34923_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r34923_condition(self):
        logic = Dzm965Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r34923_condition()
        )


    def test_r45070_condition(self):
        logic = Dzm965Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45070_condition()
        )


    def test_r45071_condition(self):
        logic = Dzm965Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45071_condition()
        )


    def test_r45072_condition(self):
        logic = Dzm965Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45072_condition()
        )


if __name__ == '__main__':
    unittest.main()
