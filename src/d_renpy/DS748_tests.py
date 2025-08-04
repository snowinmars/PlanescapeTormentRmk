import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.s748_logic import S748Logic


class S748LogicTest(LogicTest):
    def setUp(self):
        super(S748LogicTest, self).setUp()
        self.logic = S748Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = S748Logic
        self._methods_are_bound()


    def test_s748_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.s748_init,
            self.settings_manager.get_talked_to_s748_times
        )


    def test_kill_s748(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s748,
            self.logic.kill_s748
        )


    def test_s748_init(self):
        # TODO [snowinmars]: write the test
        self.logic.s748_init()


    def test_kill_s748(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s748,
            self.logic.kill_s748
        )


    def test_r35384_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35384_action()


    def test_r35408_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35408_action()


    def test_r35415_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r35415_action
        )


    def test_r35448_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35448_action
        )


    def test_r35456_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35456_action
        )


    def test_r35386_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35386_action
        )


    def test_r35412_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35412_action
        )


    def test_r35417_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35417_action
        )


    def test_r35445_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35445_action
        )


    def test_r35423_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35423_action
        )


    def test_r35426_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35426_action
        )


    def test_r35431_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35431_action()


    def test_r35434_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35434_action()


    def test_r35384_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35384_condition
        )


    def test_r35407_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35407_condition
        )


    def test_r35408_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35408_condition
        )


    def test_r35409_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35409_condition
        )


    def test_r35410_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35410_condition
        )


    def test_r35448_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35448_condition()


    def test_r35449_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35449_condition()


    def test_r35450_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35450_condition()


    def test_r35451_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35451_condition()


    def test_r35452_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35452_condition()


    def test_r35453_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35453_condition()


    def test_r35454_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35454_condition()


    def test_r35455_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35455_condition()


    def test_r35456_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35456_condition()


    def test_r35457_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35457_condition()


    def test_r35458_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35458_condition
        )


    def test_r35386_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35386_condition()


    def test_r35405_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35405_condition()


    def test_r35406_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35406_condition
        )


    def test_r35412_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35412_condition()


    def test_r35413_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35413_condition()


    def test_r35414_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35414_condition
        )


    def test_r35417_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35417_condition()


    def test_r35439_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35439_condition()


    def test_r35440_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35440_condition()


    def test_r35441_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35441_condition()


    def test_r35442_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35442_condition()


    def test_r35443_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35443_condition()


    def test_r35444_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35444_condition()


    def test_r35445_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35445_condition()


    def test_r35446_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35446_condition()


    def test_r35447_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35447_condition
        )


    def test_r35423_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35423_condition()


    def test_r35424_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35424_condition()


    def test_r35425_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35425_condition()


    def test_r35426_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35426_condition()


    def test_r35427_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35427_condition()


    def test_r35428_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35428_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
