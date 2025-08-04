import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.s996_logic import S996Logic


class S996LogicTest(LogicTest):
    def setUp(self):
        super(S996LogicTest, self).setUp()
        self.logic = S996Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = S996Logic
        self._methods_are_bound()


    def test_s996_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.s996_init,
            self.settings_manager.get_talked_to_s996_times
        )


    def test_kill_s996(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s996,
            self.logic.kill_s996
        )


    def test_s996_init(self):
        # TODO [snowinmars]: write the test
        self.logic.s996_init()


    def test_kill_s996(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s996,
            self.logic.kill_s996
        )


    def test_r35461_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35461_action()


    def test_r35485_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35485_action()


    def test_r35492_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r35492_action
        )


    def test_r35525_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35525_action
        )


    def test_r35533_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35533_action
        )


    def test_r35463_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35463_action
        )


    def test_r35489_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35489_action
        )


    def test_r35494_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35494_action
        )


    def test_r35522_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35522_action
        )


    def test_r35500_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35500_action
        )


    def test_r35503_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35503_action
        )


    def test_r35508_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35508_action()


    def test_r35511_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35511_action()


    def test_r35461_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35461_condition
        )


    def test_r35484_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35484_condition
        )


    def test_r35485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35485_condition
        )


    def test_r35486_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35486_condition
        )


    def test_r35487_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35487_condition
        )


    def test_r35525_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35525_condition()


    def test_r35526_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35526_condition()


    def test_r35527_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35527_condition()


    def test_r35528_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35528_condition()


    def test_r35529_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35529_condition()


    def test_r35530_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35530_condition()


    def test_r35531_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35531_condition()


    def test_r35532_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35532_condition()


    def test_r35533_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35533_condition()


    def test_r35534_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35534_condition()


    def test_r35535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35535_condition
        )


    def test_r35463_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35463_condition()


    def test_r35482_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35482_condition()


    def test_r35483_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35483_condition
        )


    def test_r35489_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35489_condition()


    def test_r35490_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35490_condition()


    def test_r35491_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35491_condition
        )


    def test_r35494_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35494_condition()


    def test_r35516_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35516_condition()


    def test_r35517_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35517_condition()


    def test_r35518_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35518_condition()


    def test_r35519_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35519_condition()


    def test_r35520_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35520_condition()


    def test_r35521_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35521_condition()


    def test_r35522_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35522_condition()


    def test_r35523_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35523_condition()


    def test_r35524_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35524_condition
        )


    def test_r35500_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35500_condition()


    def test_r35501_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35501_condition()


    def test_r35502_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35502_condition()


    def test_r35503_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35503_condition()


    def test_r35504_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35504_condition()


    def test_r35505_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35505_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
