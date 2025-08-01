import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm1664_logic import Zm1664Logic

class Zm1664LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm1664Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm1664Logic
        self._methods_are_bound()


    def test_zm1664_init(self):
        logic = Zm1664Logic(self.settings_manager)
        id = 'mortuary_f2r4'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm1664())

        logic.zm1664_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm1664(), True)


    def test_kill_zm1664(self):
        logic = Zm1664Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1664())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm1664()

        self.assertTrue(self.settings_manager.get_dead_zm1664())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r47014_action(self):
        logic = Zm1664Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_has_logpage())
        self.assertFalse(self.settings_manager.get_has_zm1664_page())

        logic.r47014_action()

        self.assertTrue(self.settings_manager.get_has_logpage())
        self.assertTrue(self.settings_manager.get_has_zm1664_page())


    def test_r47003_condition(self):
        logic = Zm1664Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_zm1664_page(x),
            lambda: logic.r47003_condition()
        )

    def test_r47004_condition(self):
        logic = Zm1664Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_zm1664_page(x),
            lambda: logic.r47004_condition()
        )


    def test_r47005_condition(self):
        logic = Zm1664Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r47005_condition()
        )


    def test_r47006_condition(self):
        logic = Zm1664Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r47006_condition()
        )


if __name__ == '__main__':
    unittest.main()
