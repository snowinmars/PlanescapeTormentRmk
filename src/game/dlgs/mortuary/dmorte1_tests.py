import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.dmorte1_logic import Dmorte1Logic

class Dmorte1LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dmorte1Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dmorte1Logic
        self._methods_are_bound()


    def test_dmorte1_init(self):
        logic = Dmorte1Logic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.glm.get_location(), 'mortuary_f2r1')
        self.assertEqual(self.settings_manager.get_in_party_morte(), False)
        self.assertEqual(self.settings_manager.get_meet_morte(), False)

        logic.dmorte1_init()

        self.assertEqual(self.settings_manager.glm.get_location(), 'mortuary_f2r1')
        self.assertEqual(self.settings_manager.get_in_party_morte(), True)
        self.assertEqual(self.settings_manager.get_meet_morte(), True)


    def test_r39824_action(self):
        logic = Dmorte1Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r39824_action()
        )


    def test_r39829_action(self):
        logic = Dmorte1Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_scalpel(),
            lambda: logic.r39829_action()
        )


    def test_r39852_action(self):
        logic = Dmorte1Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_in_party_morte(),
            lambda: logic.r39852_action()
        )


    def test_r39856_action(self):
        logic = Dmorte1Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_in_party_morte(),
            lambda: logic.r39856_action()
        )


    def test_r39859_action(self):
        logic = Dmorte1Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_in_party_morte(),
            lambda: logic.r39859_action()
        )


    def test_kill_morte(self):
        logic = Dmorte1Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_dead_morte(),
            lambda: logic.kill_morte()
        )


    def test_s24_action(self):
        logic = Dmorte1Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_intro_key(),
            lambda: logic.s24_action()
        )


if __name__ == '__main__':
    unittest.main()
