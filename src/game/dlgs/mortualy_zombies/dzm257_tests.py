import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm257_logic import Dzm257Logic

class Dzm257LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm257Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm257Logic
        self._methods_are_bound()


    def test_dzm257_init(self):
        logic = Dzm257Logic(self.settings_manager)
        id = 'mortuary_f2r5'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm257())

        logic.dzm257_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm257(), True)


    def test_kill_dzm257(self):
        logic = Dzm257Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm257())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm257()

        self.assertTrue(self.settings_manager.get_dead_dzm257())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_know_dzm257_spirit_action(self):
        logic = Dzm257Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_dzm257_spirit(),
            lambda: logic.know_dzm257_spirit_action()
        )


    def test_r6510_action(self):
        logic = Dzm257Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6510_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6510_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r9562_action(self):
        logic = Dzm257Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9562_action()
        )


    def test_know_dzm257_spirit_condition(self):
        logic = Dzm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_dzm257_spirit(x),
            lambda: logic.know_dzm257_spirit_condition()
        )


    def test_r6510_condition(self):
        logic = Dzm257Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6510_condition()
        )


    def test_r6511_condition(self):
        logic = Dzm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6511_condition()
        )


    def test_r6512_condition(self):
        logic = Dzm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6512_condition()
        )


    def test_r6513_condition(self):
        logic = Dzm257Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6513_condition()
        )
