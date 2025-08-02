import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.walking_logic import WalkingLogic

class WalkingLogicTest(LogicTest):
    def test_initialization(self):
        logic = WalkingLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = WalkingLogic
        self._methods_are_bound()


    def test_mortuary_walking_1_8_closed(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_1_8_closed()
        )


    def test_mortuary_walking_1_up_closed(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_1_up_closed()
        )

    def test_mortuary_walking_1_down_closed(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_1_down_closed()
        )


    def test_mortuary_walking_1_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_1_visit()
        )


    def test_mortuary_walking_2_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r2'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_2_visit()
        )

    def test_mortuary_walking_2_scene(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r2'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_2_scene()
        )


    def test_mortuary_walking_3_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r3'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_3_visit()
        )


    def test_mortuary_walking_3_scene(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r3'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_3_scene()
        )

    def test_mortuary_walking_4_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r4'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_4_visit()
        )


    def test_mortuary_walking_5_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r5'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_5_visit()
        )


    def test_mortuary_walking_6_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r6'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_6_visit()
        )

    def test_mortuary_walking_7_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r7'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_7_visit()
        )


    def test_mortuary_walking_8_visit(self):
        logic = WalkingLogic(self.settings_manager)
        id = 'mortuary_f2r8'

        self._step_into_location_action(
            id,
            lambda: logic.mortuary_walking_8_visit()
        )


    def test_mortuary_walking_1_pick_scalpel(self):
        logic = WalkingLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_scalpel(),
            lambda: logic.mortuary_walking_1_pick_scalpel()
        )


    def test_mortuary_walking_1_pick_embalm(self):
        logic = WalkingLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_embalm(),
            lambda: logic.mortuary_walking_1_pick_embalm()
        )


if __name__ == '__main__':
    unittest.main()
