import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm463_logic import Zm463Logic

class Zm463LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm463Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm463Logic
        self._methods_are_bound()


    def test_zm463_init(self):
        logic = Zm463Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm463())

        logic.zm463_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm463(), True)


    def test_kill_zm463(self):
        logic = Zm463Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm463())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm463()

        self.assertTrue(self.settings_manager.get_dead_zm463())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r6485_action(self):
        logic = Zm463Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6485_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6485_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6485_condition(self):
        logic = Zm463Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6485_condition()
        )


    def test_r6488_condition(self):
        logic = Zm463Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6488_condition()
        )


    def test_r6489_condition(self):
        logic = Zm463Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6489_condition()
        )


    def test_r6490_condition(self):
        logic = Zm463Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6490_condition()
        )


if __name__ == '__main__':
    unittest.main()
