import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm79_logic import Dzm79Logic

class Dzm79LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm79Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm79Logic
        self._methods_are_bound()


    def test_dzm79_init(self):
        logic = Dzm79Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm79())

        logic.dzm79_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm79(), True)


    def test_kill_dzm79(self):
        logic = Dzm79Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm79())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm79()

        self.assertTrue(self.settings_manager.get_dead_dzm79())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34943_action(self):
        logic = Dzm79Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r34943_action()
        )


    def test_r34946_action(self):
        logic = Dzm79Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_copper_earring_secret(),
            lambda: logic.r34946_action()
        )


    def test_r64279_action(self):
        logic = Dzm79Logic(self.settings_manager)
        id = '64536'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r64279_action()
        )


    def test_r64280_action(self):
        logic = Dzm79Logic(self.settings_manager)
        id = '64537'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r64280_action()
        )


    def test_r34946_condition(self):
        logic = Dzm79Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            lambda: logic.r34946_condition()
        )


    def test_r34947_condition(self):
        logic = Dzm79Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r34947_condition()
        )


    def test_r34948_condition(self):
        logic = Dzm79Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r34948_condition()
        )


    def test_r64279_condition(self):
        logic = Dzm79Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_copper_earring_closed(x),
            lambda: logic.r64279_condition()
        )


    def test_r64280_condition(self):
        logic = Dzm79Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_copper_earring_closed(x),
            lambda: logic.r64280_condition()
        )
