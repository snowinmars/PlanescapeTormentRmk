import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm396_logic import Zm396Logic

class Zm396LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm396Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm396Logic
        self._methods_are_bound()


    def test_zm396_init(self):
        self._init_(
            'mortuary_f2r3',
            Zm396Logic(self.settings_manager).zm396_init,
            self.settings_manager.get_talked_to_zm396_times
        )


    def test_kill_zm396(self):
        logic = Zm396Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm396())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm396()

        self.assertTrue(self.settings_manager.get_dead_zm396())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r34932_action(self):
        logic = Zm396Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r34932_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r34932_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r34936_action(self):
        logic = Zm396Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertFalse(self.settings_manager.get_has_bandages_zm396())
        self.assertFalse(self.settings_manager.get_has_bandages())

        logic.r34936_action()

        self.assertTrue(self.settings_manager.get_has_bandages_zm396())
        self.assertTrue(self.settings_manager.get_has_bandages())


    def test_r34934_action(self):
        logic = Zm396Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertFalse(self.settings_manager.get_has_bandages_zm396())
        self.assertFalse(self.settings_manager.get_has_bandages())

        logic.r34934_action()

        self.assertTrue(self.settings_manager.get_has_bandages_zm396())
        self.assertTrue(self.settings_manager.get_has_bandages())


    def test_r45112_action(self):
        logic = Zm396Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r45112_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r45112_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_get_took_zm396_bandages(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bandages_zm396(x),
            lambda: logic.get_took_zm396_bandages()
        )

    def test_r34936_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_bandages_zm396(x),
            lambda: logic.r34936_condition()
        )


    def test_r34932_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertFalse(logic.r34932_condition())

        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertTrue(logic.r34932_condition())


    def test_r34935_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertFalse(logic.r34935_condition())

        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertTrue(logic.r34935_condition())


    def test_r34937_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r34937_condition()
        )


    def test_r34940_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r34940_condition()
        )


    def test_r34934_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_bandages_zm396(x),
            lambda: logic.r34934_condition()
        )


    def test_r45112_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertFalse(logic.r45112_condition())

        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertTrue(logic.r45112_condition())


    def test_r45113_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertFalse(logic.r45113_condition())

        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertTrue(logic.r45113_condition())


    def test_r45114_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45114_condition()
        )


    def test_r45115_condition(self):
        logic = Zm396Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45115_condition()
        )


if __name__ == '__main__':
    unittest.main()
