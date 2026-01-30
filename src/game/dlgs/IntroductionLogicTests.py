import unittest

from game.engine.LogicTests import (LogicTests)
from game.dlgs.IntroductionLogic import (IntroductionLogic)


class IntroductionLogicTests(LogicTests):
    def test_ctor(self):
        logic = IntroductionLogic(self.state_manager)
        self.assertFalse(logic.can_spoiler)
        self.assertIsNotNone(logic.state_manager)


    def test_methods_are_bound(self):
        self.target_class = IntroductionLogic
        self._methods_are_bound()


    def test_setup_as_highlvl(self):
        logic = IntroductionLogic(self.state_manager)
        logic.setup_as_highlvl()

        self.assertEqual(self.state_manager.world_manager.get_can_speak_with_dead(), True)


    def test_set_can_spoiler_true(self):
        logic = IntroductionLogic(self.state_manager)
        self._false_then_true_action(
            lambda: logic.can_spoiler,
            logic.set_can_spoiler_true
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
