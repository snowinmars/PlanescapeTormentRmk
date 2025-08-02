import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm506_logic import Zm506Logic

class Zm506LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm506Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm506Logic
        self._methods_are_bound()


    def test_zm506_init(self):
        logic = Zm506Logic(self.settings_manager)
        id = 'mortuary_f2r5'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm506())

        logic.zm506_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm506(), True)


    def test_kill_zm506(self):
        logic = Zm506Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm506())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm506()

        self.assertTrue(self.settings_manager.get_dead_zm506())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r45480_action(self):
        logic = Zm506Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 100

        self.assertFalse(self.settings_manager.get_has_506_thread())
        self.assertFalse(self.settings_manager.get_has_needle())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r45480_action()

        self.assertTrue(self.settings_manager.get_has_506_thread())
        self.assertTrue(self.settings_manager.get_has_needle())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r45484_action(self):
        logic = Zm506Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r45484_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r45484_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r45502_action(self):
        logic = Zm506Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r45502_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r45502_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_know_506_secret(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_506_thread(x),
            lambda: logic.know_506_secret()
        )


    def test_r45420_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_506_thread(x),
            lambda: logic.r45420_condition()
        )

    def test_r45421_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45421_condition()
        )

    def test_r45422_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45422_condition()
        )

    def test_r45480_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            lambda: logic.r45480_condition()
        )


    def test_r45481_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            lambda: logic.r45481_condition()
        )


    def test_r45484_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45484_condition()
        )


    def test_r45496_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45496_condition()
        )


    def test_r45502_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45502_condition()
        )


    def test_r45508_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45508_condition()
        )


    def test_r45510_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45510_condition()
        )


    def test_r45512_condition(self):
        logic = Zm506Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45512_condition()
        )


if __name__ == '__main__':
    unittest.main()
