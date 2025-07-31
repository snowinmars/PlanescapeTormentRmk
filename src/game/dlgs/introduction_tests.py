import unittest

from engine.tests import (LogicTest)
from dlgs.introduction_logic import IntroductionLogic

class IntroductionLogicTest(LogicTest):
    def test_initialization(self):
        logic = IntroductionLogic(self.settings_manager)
        self.assertFalse(logic.can_spoiler)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = IntroductionLogic
        self._methods_are_bound()


    def test_setup_new_life_as_mage(self):
        logic = IntroductionLogic(self.settings_manager)
        logic.setup_new_life_as_mage()

        props = self.settings_manager.gcm.get_character('protagonist').get_all_properties()
        self.assertEqual(props['intelligence'], 16)
        self.assertEqual(props['wisdom'], 17)
        self.assertEqual(props['charisma'], 15)


    def test_setup_as_highlvl(self):
        logic = IntroductionLogic(self.settings_manager)
        logic.setup_as_highlvl()

        self.assertEqual(self.settings_manager.get_can_speak_with_dead(), True)


    def test_set_can_spoiler_true(self):
        logic = IntroductionLogic(self.settings_manager)
        self._false_then_true_action(
            lambda: logic.can_spoiler,
            lambda: logic.set_can_spoiler_true()
        )


if __name__ == '__main__':
    unittest.main()
