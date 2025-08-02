import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm1146_logic import Zm1146Logic

class Zm1146LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm1146Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm1146Logic
        self._methods_are_bound()


    def test_zm1146_init(self):
        logic = Zm1146Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm1146())

        logic.zm1146_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm1146(), True)


    def test_r6521_action(self):
        logic = Zm1146Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6521_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6521_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6524_action(self):
        logic = Zm1146Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_crispy(),
            lambda: logic.r6524_action()
        )


    def test_r9415_action(self):
        logic = Zm1146Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9415_action()
        )


    def test_r9426_action(self):
        logic = Zm1146Logic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        deltaLaw = -1
        deltaGood = -1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r9426_action()
        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + deltaLaw, lawAfter)
        self.assertEqual(goodBefore + deltaGood, goodAfter)

        logic.r9426_action()
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r6521_condition(self):
        logic = Zm1146Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6521_condition()
        )

    def test_r6522_condition(self):
        logic = Zm1146Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6522_condition()
        )


    def test_r6523_condition(self):
        logic = Zm1146Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r6523_condition()
        )


    def test_r6524_condition(self):
        logic = Zm1146Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6524_condition()
        )


    def test_r9434_condition(self):
        logic = Zm1146Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r9434_condition()
        )


if __name__ == '__main__':
    unittest.main()
