import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzf626_logic import Dzf626Logic

class Dzf626LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzf626Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzf626Logic
        self._methods_are_bound()


    def test_dzf626_init(self):
        logic = Dzf626Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzf626())

        logic.dzf626_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzf626(), True)


    def test_kill_dzf626(self):
        logic = Dzf626Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzf626())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzf626()

        self.assertTrue(self.settings_manager.get_dead_dzf626())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r35051_action(self):
        logic = Dzf626Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35051_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35051_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35051_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35051_condition()
        )


    def test_r35068_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35068_condition()
        )


    def test_r35069_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r35069_condition()
        )


    def test_r35070_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35070_condition()
        )


    def test_r35075_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35075_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35075_condition())


    def test_r35076_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35076_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35076_condition())


    def test_r35077_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35077_condition()
        )


    def test_r35078_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35078_condition()
        )


    def test_r35079_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35079_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35079_condition())


    def test_r35080_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35080_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35080_condition())


    def test_r35053_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35053_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35053_condition())


    def test_r35066_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35066_condition()
        )


    def test_r35067_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35067_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35067_condition())


    def test_r35072_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35072_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35072_condition())


    def test_r35073_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35073_condition()
        )


    def test_r35074_condition(self):
        logic = Dzf626Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35074_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35074_condition())


if __name__ == '__main__':
    unittest.main()
