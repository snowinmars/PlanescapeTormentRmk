import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm1508_logic import Dzm1508Logic

class Dzm1508LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm1508Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm1508Logic
        self._methods_are_bound()


    def test_dzm1508_init(self):
        logic = Dzm1508Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm1508())

        logic.dzm1508_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm1508(), True)


    def test_kill_dzm1664(self):
        logic = Dzm1508Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm1508())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm1508()

        self.assertTrue(self.settings_manager.get_dead_dzm1508())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r46746_action(self):
        logic = Dzm1508Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r46746_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r46746_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r46746_condition(self):
        logic = Dzm1508Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r46746_condition()
        )

    def test_r46749_condition(self):
        logic = Dzm1508Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r46749_condition()
        )


    def test_r46750_condition(self):
        logic = Dzm1508Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r46750_condition()
        )


    def test_r46751_condition(self):
        logic = Dzm1508Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r46751_condition()
        )
