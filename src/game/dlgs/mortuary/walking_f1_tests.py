import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.walking_f1_logic import WalkingF1Logic

class WalkingF1LogicTest(LogicTest):
    def test_initialization(self):
        logic = WalkingF1Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = WalkingF1Logic
        self._methods_are_bound()


    def test_walk_to_mortuaryf1r1_visit(self):
        logic = WalkingF1Logic(self.settings_manager)
        id = 'mortuary_f1r1'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf1r1_visit()
        )