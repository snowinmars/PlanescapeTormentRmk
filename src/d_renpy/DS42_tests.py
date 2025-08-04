import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.s42_logic import S42Logic


class S42LogicTest(LogicTest):
    def setUp(self):
        super(S42LogicTest, self).setUp()
        self.logic = S42Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = S42Logic
        self._methods_are_bound()


    def test_s42_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.s42_init,
            self.settings_manager.get_talked_to_s42_times
        )


    def test_kill_s42(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s42,
            self.logic.kill_s42
        )


    def test_s42_init(self):
        # TODO [snowinmars]: write the test
        self.logic.s42_init()


    def test_kill_s42(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s42,
            self.logic.kill_s42
        )


    def test_r6613_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r6613_action
        )


    def test_r6614_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6614_action()


    def test_r6617_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r6617_action
        )


    def test_r6618_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r6618_action
        )


    def test_r6629_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r6629_action
        )


    def test_r6632_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r6632_action
        )


    def test_r6635_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r6635_action
        )


    def test_r6640_action(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s42,
            self.logic.r6640_action
        )


    def test_r6642_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6642_action()


    def test_r6645_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r6645_action
        )


    def test_r6650_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r6650_action
        )


    def test_r6652_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r6652_action
        )


    def test_r58984_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r58984_action()


    def test_r6612_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r6612_condition
        )


    def test_r6614_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r6614_condition
        )


    def test_r6615_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r6615_condition
        )


    def test_r6616_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6616_condition
        )


    def test_r6618_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6618_condition()


    def test_r6619_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6619_condition()


    def test_r6620_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6620_condition()


    def test_r6621_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6621_condition()


    def test_r6622_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6622_condition()


    def test_r6623_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6623_condition()


    def test_r6624_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r6624_condition
        )


    def test_r6625_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r6625_condition
        )


    def test_r6626_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6626_condition()


    def test_r6629_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6629_condition()


    def test_r6630_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6630_condition()


    def test_r6631_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r6631_condition
        )


    def test_r63495_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r63495_condition
        )


    def test_r6632_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6632_condition()


    def test_r6633_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6633_condition()


    def test_r6634_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r6634_condition
        )


    def test_r6635_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6635_condition()


    def test_r6636_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6636_condition()


    def test_r6637_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r6637_condition
        )


    def test_r6643_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r6643_condition
        )


    def test_r6644_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r6644_condition
        )


    def test_r6648_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r6648_condition
        )


    def test_r6649_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r6649_condition
        )


    def test_r6653_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r6653_condition
        )


    def test_r6654_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6654_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
