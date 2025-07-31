import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm475_logic import Dzm475Logic

class Dzm475LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm475Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm475Logic
        self._methods_are_bound()


    def test_dzm475_init(self):
        logic = Dzm475Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm475())

        logic.dzm475_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm475(), True)


    def test_kill_dzm475(self):
        logic = Dzm475Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm475())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm475()

        self.assertTrue(self.settings_manager.get_dead_dzm475())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r6587_action(self):
        logic = Dzm475Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6587_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6587_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6587_condition(self):
        logic = Dzm475Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6587_condition()
        )


    def test_r6588_condition(self):
        logic = Dzm475Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6588_condition()
        )


    def test_r6589_condition(self):
        logic = Dzm475Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6589_condition()
        )


    def test_r6590_condition(self):
        logic = Dzm475Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6590_condition()
        )
