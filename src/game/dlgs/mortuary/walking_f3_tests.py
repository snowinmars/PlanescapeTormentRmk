import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.walking_f3_logic import WalkingF3Logic

class WalkingF3LogicTest(LogicTest):
    def test_initialization(self):
        logic = WalkingF3Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = WalkingF3Logic
        self._methods_are_bound()


    def test_walk_to_mortuaryf3r4_visit(self):
        logic = WalkingF3Logic(self.settings_manager)
        id = 'mortuary_f3r4'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf3r4_visit()
        )


    def test_walk_to_mortuaryf3r6_visit(self):
        logic = WalkingF3Logic(self.settings_manager)
        id = 'mortuary_f3r6'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf3r6_visit()
        )


    def test_walk_to_mortuaryf3r8_visit(self):
        logic = WalkingF3Logic(self.settings_manager)
        id = 'mortuary_f3r8'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf3r8_visit()
        )


    def test_walk_to_mortuaryf3r2_visit(self):
        logic = WalkingF3Logic(self.settings_manager)
        id = 'mortuary_f3r2'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf3r2_visit()
        )


    def test_walk_mortuaryf3r8_pick_prybar(self):
        logic = WalkingF3Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_prybar(),
            lambda: logic.walk_mortuaryf3r8_pick_prybar()
        )


    def test_walk_mortuaryf3r8_pick_dustman_request(self):
        logic = WalkingF3Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_dustman_request(),
            lambda: logic.walk_mortuaryf3r8_pick_dustman_request()
        )

    def test_walk_mortuaryf3r8_pick_needle(self):
        logic = WalkingF3Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_needle(),
            lambda: logic.walk_mortuaryf3r8_pick_needle()
        )


    def test_walk_mortuaryf3r8_pick_mortuary_key(self):
        logic = WalkingF3Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_mortuary_key(),
            lambda: logic.walk_mortuaryf3r8_pick_mortuary_key()
        )


    def test_walk_mortuaryf3r8_pick_mortuary_task_list(self):
        logic = WalkingF3Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_mortuary_task_list(),
            lambda: logic.walk_mortuaryf3r8_pick_mortuary_task_list()
        )
