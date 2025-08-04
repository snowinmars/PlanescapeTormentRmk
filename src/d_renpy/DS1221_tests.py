import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.s1221_logic import S1221Logic


class S1221LogicTest(LogicTest):
    def setUp(self):
        super(S1221LogicTest, self).setUp()
        self.logic = S1221Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = S1221Logic
        self._methods_are_bound()


    def test_s1221_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.s1221_init,
            self.settings_manager.get_talked_to_s1221_times
        )


    def test_kill_s1221(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s1221,
            self.logic.kill_s1221
        )


    def test_s1221_init(self):
        # TODO [snowinmars]: write the test
        self.logic.s1221_init()


    def test_kill_s1221(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s1221,
            self.logic.kill_s1221
        )


    def test_r35307_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35307_action()


    def test_r35331_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35331_action()


    def test_r35338_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r35338_action
        )


    def test_r35371_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35371_action
        )


    def test_r35379_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35379_action
        )


    def test_r35309_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35309_action
        )


    def test_r35335_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35335_action
        )


    def test_r35340_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35340_action
        )


    def test_r35368_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35368_action
        )


    def test_r35346_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35346_action
        )


    def test_r35349_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35349_action
        )


    def test_r35354_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35354_action()


    def test_r35357_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35357_action()


    def test_r35307_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35307_condition
        )


    def test_r35330_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35330_condition
        )


    def test_r35331_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35331_condition
        )


    def test_r35332_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35332_condition
        )


    def test_r35333_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35333_condition
        )


    def test_r35371_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35371_condition()


    def test_r35372_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35372_condition()


    def test_r35373_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35373_condition()


    def test_r35374_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35374_condition()


    def test_r35375_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35375_condition()


    def test_r35376_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35376_condition()


    def test_r35377_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35377_condition()


    def test_r35378_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35378_condition()


    def test_r35379_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35379_condition()


    def test_r35380_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35380_condition()


    def test_r35381_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35381_condition
        )


    def test_r35309_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35309_condition()


    def test_r35328_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35328_condition()


    def test_r35329_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35329_condition
        )


    def test_r35335_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35335_condition()


    def test_r35336_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35336_condition()


    def test_r35337_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35337_condition
        )


    def test_r35340_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35340_condition()


    def test_r35362_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35362_condition()


    def test_r35363_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35363_condition()


    def test_r35364_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35364_condition()


    def test_r35365_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35365_condition()


    def test_r35366_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35366_condition()


    def test_r35367_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35367_condition()


    def test_r35368_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35368_condition()


    def test_r35369_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35369_condition()


    def test_r35370_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35370_condition
        )


    def test_r35346_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35346_condition()


    def test_r35347_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35347_condition()


    def test_r35348_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35348_condition()


    def test_r35349_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35349_condition()


    def test_r35350_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35350_condition()


    def test_r35351_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35351_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
