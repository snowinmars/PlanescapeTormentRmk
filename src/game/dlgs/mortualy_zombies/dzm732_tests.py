import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm732_logic import Dzm732Logic

class Dzm732LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm732Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm732Logic
        self._methods_are_bound()


    def test_dzm732_init(self):
        logic = Dzm732Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm732())

        logic.dzm732_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm732(), True)


    def test_kill_dzm732(self):
        logic = Dzm732Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm732())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm732()

        self.assertTrue(self.settings_manager.get_dead_dzm732())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r6533_action(self):
        logic = Dzm732Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6533_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6533_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r64271_action(self):
        logic = Dzm732Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_tome_ba(),
            lambda: logic.r64271_action()
        )


    def test_r6533_condition(self):
        logic = Dzm732Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6533_condition()
        )


    def test_r6532_condition(self):
        logic = Dzm732Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6532_condition()
        )


    def test_r6534_condition(self):
        logic = Dzm732Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6534_condition()
        )


    def test_r6535_condition(self):
        logic = Dzm732Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6535_condition()
        )
