import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm825_logic import Dzm825Logic

class Dzm825LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm825Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm825Logic
        self._methods_are_bound()


    def test_dzm825_init(self):
        logic = Dzm825Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm825())

        logic.dzm825_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm825(), True)


    def test_kill_dzm825(self):
        logic = Dzm825Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm825())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm825()

        self.assertTrue(self.settings_manager.get_dead_dzm825())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r24565_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self.settings_manager.set_mortuary_walkthrough(True)
        self.settings_manager.set_has_intro_key(True)
        self.settings_manager.set_in_party_morte(False)
        self.assertFalse(logic.r24565_condition())

        self.settings_manager.set_mortuary_walkthrough(False)
        self.settings_manager.set_has_intro_key(False)
        self.settings_manager.set_in_party_morte(True)
        self.assertTrue(logic.r24565_condition())


    def test_r24568_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self.settings_manager.set_mortuary_walkthrough(True)
        self.settings_manager.set_has_intro_key(True)
        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(logic.r24568_condition())

        self.settings_manager.set_mortuary_walkthrough(False)
        self.settings_manager.set_has_intro_key(False)
        self.settings_manager.set_in_party_morte(False)
        self.assertTrue(logic.r24568_condition())


    def test_r24569_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_mortuary_walkthrough(x),
            lambda: logic.r24569_condition()
        )


    def test_r24570_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r24570_condition()
        )


    def test_r24573_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r24573_condition()
        )


    def test_r24574_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self.settings_manager.set_mortuary_walkthrough(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(logic.r24574_condition())

        self.settings_manager.set_mortuary_walkthrough(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(logic.r24574_condition())


    def test_r42312_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r42312_condition()
        )


    def test_r42313_condition(self):
        logic = Dzm825Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r42313_condition()
        )


if __name__ == '__main__':
    unittest.main()
