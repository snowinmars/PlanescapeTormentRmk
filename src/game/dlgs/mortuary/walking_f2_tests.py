import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.walking_f2_logic import WalkingF2Logic

class WalkingF2LogicTest(LogicTest):
    def test_initialization(self):
        logic = WalkingF2Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = WalkingF2Logic
        self._methods_are_bound()


    def test_walk_to_mortuaryf2r1_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r1_visit()
        )


    def test_walk_to_mortuaryf2r2_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r2_visit()
        )

    def test_walk_to_mortuaryf2r2_scene(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r2'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r2_scene()
        )


    def test_walk_to_mortuaryf2r3_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r3'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r3_visit()
        )


    def test_walk_to_mortuaryf2r3_scene(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r3'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r3_scene()
        )

    def test_walk_to_mortuaryf2r4_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r4'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r4_visit()
        )


    def test_walk_to_mortuaryf2r5_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r5'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r5_visit()
        )


    def test_walk_to_mortuaryf2r6_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r6'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r6_visit()
        )

    def test_walk_to_mortuaryf2r7_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r7'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r7_visit()
        )


    def test_walk_to_mortuaryf2r8_visit(self):
        logic = WalkingF2Logic(self.settings_manager)
        id = 'mortuary_f2r8'

        self._step_into_location_action(
            id,
            lambda: logic.walk_to_mortuaryf2r8_visit()
        )


    def test_walk_mortuaryf2r1_pick_scalpel(self):
        logic = WalkingF2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_scalpel(),
            lambda: logic.walk_mortuaryf2r1_pick_scalpel()
        )


    def test_walk_mortuaryf2r7_pick_embalm(self):
        logic = WalkingF2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_embalm(),
            lambda: logic.walk_mortuaryf2r7_pick_embalm()
        )


    def test_walk_mortuaryf2r7_pick_copper_earring_closed(self):
        logic = WalkingF2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_copper_earring_closed(),
            lambda: logic.walk_mortuaryf2r7_pick_copper_earring_closed()
        )


if __name__ == '__main__':
    unittest.main()
