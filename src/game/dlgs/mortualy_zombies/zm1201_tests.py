import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm1201_logic import Zm1201Logic

class Zm1201LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm1201Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm1201Logic
        self._methods_are_bound()


    def test_zm1201_init(self):
        logic = Zm1201Logic(self.settings_manager)
        id = 'mortuary_f2r3'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm1201())

        logic.zm1201_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm1201(), True)


    def test_kill_zm1201(self):
        logic = Zm1201Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1201())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm1201()

        self.assertTrue(self.settings_manager.get_dead_zm1201())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34956_action(self):
        logic = Zm1201Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertFalse(self.settings_manager.get_1201_note_retrieved())
        self.assertFalse(self.settings_manager.get_has_1201_note())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r34956_action()

        self.assertTrue(self.settings_manager.get_1201_note_retrieved())
        self.assertTrue(self.settings_manager.get_has_1201_note())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r45129_action(self):
        logic = Zm1201Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r45129_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r45129_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r34954_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_1201_note_retrieved(x),
            lambda: logic.r34954_condition()
        )

    def test_r34957_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r34957_condition()
        )


    def test_r34958_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r34958_condition()
        )


    def test_r34956_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            lambda: logic.r34956_condition()
        )


    def test_r45122_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            lambda: logic.r45122_condition()
        )


    def test_r45129_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45129_condition()
        )


    def test_r45130_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45130_condition()
        )


    def test_r45131_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45131_condition()
        )


    def test_r45132_condition(self):
        logic = Zm1201Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45132_condition()
        )


if __name__ == '__main__':
    unittest.main()
