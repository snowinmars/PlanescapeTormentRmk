import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzf679_logic import Dzf679Logic

class Dzf679LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzf679Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzf679Logic
        self._methods_are_bound()


    def test_dzf679_init(self):
        logic = Dzf679Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzf679())

        logic.dzf679_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzf679(), True)


    def test_kill_dzf679(self):
        logic = Dzf679Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzf679())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzf679()

        self.assertTrue(self.settings_manager.get_dead_dzf679())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r35179_action(self):
        logic = Dzf679Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35179_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35179_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35179_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35179_condition()
        )


    def test_r35196_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35196_condition()
        )


    def test_r35197_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r35197_condition()
        )


    def test_r35198_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35198_condition()
        )


    def test_r35203_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35203_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35203_condition())


    def test_r35204_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35204_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35204_condition())


    def test_r35205_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35205_condition()
        )


    def test_r35206_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35206_condition()
        )


    def test_r35207_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35207_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35207_condition())


    def test_r35208_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35208_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35208_condition())


    def test_r35181_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35181_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35181_condition())


    def test_r35194_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35194_condition()
        )


    def test_r35195_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35195_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35195_condition())


    def test_r35200_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35200_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35200_condition())


    def test_r35201_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35201_condition()
        )


    def test_r35202_condition(self):
        logic = Dzf679Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35202_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35202_condition())


if __name__ == '__main__':
    unittest.main()
