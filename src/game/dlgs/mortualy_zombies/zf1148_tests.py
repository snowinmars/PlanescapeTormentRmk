import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zf1148_logic import Zf1148Logic

class Zf1148LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zf1148Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zf1148Logic
        self._methods_are_bound()


    def test_zf1148_init(self):
        logic = Zf1148Logic(self.settings_manager)
        id = 'mortuary_f3r2'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zf1148())

        logic.zf1148_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zf1148(), True)


    def test_kill_zf1148(self):
        logic = Zf1148Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf1148())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zf1148()

        self.assertTrue(self.settings_manager.get_dead_zf1148())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r35243_action(self):
        logic = Zf1148Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35243_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35243_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35243_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35243_condition()
        )


    def test_r35260_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r35260_condition()
        )


    def test_r35261_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r35261_condition()
        )


    def test_r35262_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35262_condition()
        )


    def test_r35267_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35267_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35267_condition())


    def test_r35268_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35268_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35268_condition())


    def test_r35269_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35269_condition()
        )


    def test_r35270_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35270_condition()
        )


    def test_r35271_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35271_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35271_condition())


    def test_r35272_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35272_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35272_condition())


    def test_r35245_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35245_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35245_condition())


    def test_r35258_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35258_condition()
        )


    def test_r35259_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35259_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35259_condition())


    def test_r35264_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35264_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35264_condition())


    def test_r35265_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            lambda: logic.r35265_condition()
        )


    def test_r35266_condition(self):
        logic = Zf1148Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(logic.r35266_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(logic.r35266_condition())



if __name__ == '__main__':
    unittest.main()
