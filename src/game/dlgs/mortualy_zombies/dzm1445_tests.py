import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm1445_logic import Dzm1445Logic

class Dzm1445LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm1445Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm1445Logic
        self._methods_are_bound()


    def test_dzm1445_init(self):
        logic = Dzm1445Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm1445())

        logic.dzm1445_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm1445(), True)


    def test_kill_dzm1445(self):
        logic = Dzm1445Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm1445())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm1445()

        self.assertTrue(self.settings_manager.get_dead_dzm1445())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r46757_action(self):
        logic = Dzm1445Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r46757_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r46757_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r46757_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r46757_condition()
        )


    def test_r46760_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r46760_condition()
        )


    def test_r46761_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r46761_condition()
        )


    def test_r46762_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r46762_condition()
        )
