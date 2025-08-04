import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.dust_logic import DustLogic


class DustLogicTest(LogicTest):
    def setUp(self):
        super(DustLogicTest, self).setUp()
        self.logic = DustLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = DustLogic
        self._methods_are_bound()


    def test_dust_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.dust_init,
            self.settings_manager.get_talked_to_dust_times
        )


    def test_kill_dust(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_dust,
            self.logic.kill_dust
        )


    def test_dust_init(self):
        # TODO [snowinmars]: write the test
        self.logic.dust_init()


    def test_kill_dust(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_dust,
            self.logic.kill_dust
        )


    def test_r313_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r313_action
        )


    def test_r3888_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r3888_action
        )


    def test_r3886_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r3886_action
        )


    def test_r33189_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r33189_action()


    def test_r371_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r371_action()


    def test_r450_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r450_action()


    def test_r399_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r399_action()


    def test_r448_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r448_action
        )


    def test_r449_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r449_action
        )


    def test_r1339_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r1339_action
        )


    def test_r1426_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1426_action()


    def test_r1428_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1428_action()


    def test_r1429_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1429_action()


    def test_r3882_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r3882_action()


    def test_r3884_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r3884_action
        )


    def test_r3890_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r3890_action()


    def test_r327_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r327_condition
        )


    def test_r328_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r328_condition
        )


    def test_r334_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r334_condition
        )


    def test_r344_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r344_condition
        )


    def test_r3887_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3887_condition
        )


    def test_r358_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r358_condition
        )


    def test_r3885_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3885_condition
        )


    def test_r342_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r342_condition()


    def test_r343_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r343_condition()


    def test_r33183_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r33183_condition()


    def test_r33185_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r33185_condition()


    def test_r33186_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r33186_condition()


    def test_r33187_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r33187_condition()


    def test_r33189_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r33189_condition()


    def test_r33190_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r33190_condition()


    def test_r370_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r370_condition
        )


    def test_r371_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r371_condition
        )


    def test_r372_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r372_condition
        )


    def test_r373_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r373_condition
        )


    def test_r1335_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1335_condition
        )


    def test_r378_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r378_condition
        )


    def test_r450_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r450_condition
        )


    def test_r1337_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r1337_condition
        )


    def test_r3904_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3904_condition
        )


    def test_r3905_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3905_condition
        )


    def test_r399_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r399_condition
        )


    def test_r3906_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r3906_condition
        )


    def test_r3907_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3907_condition
        )


    def test_r3908_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3908_condition
        )


    def test_r413_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r413_condition
        )


    def test_r3918_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3918_condition
        )


    def test_r3919_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3919_condition
        )


    def test_r3920_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3920_condition
        )


    def test_r416_condition(self):
        self._is_visited_external_location_condition(
            'AR0202',
            self.logic.r416_condition
        )


    def test_r417_condition(self):
        self._not_is_visited_external_location_condition(
            'AR0202',
            self.logic.r417_condition
        )


    def test_r436_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r436_condition
        )


    def test_r3909_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3909_condition
        )


    def test_r3910_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3910_condition
        )


    def test_r3911_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3911_condition
        )


    def test_r445_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r445_condition
        )


    def test_r446_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r446_condition
        )


    def test_r3912_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3912_condition
        )


    def test_r3913_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3913_condition
        )


    def test_r449_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r449_condition
        )


    def test_r1339_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dust_times(x),
            1,
            self.logic.r1339_condition
        )


    def test_r1420_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r1420_condition()


    def test_r1421_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r1421_condition()


    def test_r1422_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r1422_condition()


    def test_r1423_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r1423_condition
        )


    def test_r1428_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            self.logic.r1428_condition
        )


    def test_r1429_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            self.logic.r1429_condition
        )


    def test_r3914_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3914_condition
        )


    def test_r3915_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3915_condition
        )


    def test_r3898_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3898_condition
        )


    def test_r3899_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3899_condition
        )


    def test_r3900_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3900_condition
        )


    def test_r3901_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3901_condition
        )


    def test_r66675_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66675_condition
        )


    def test_r66676_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66676_condition
        )


    def test_r66677_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66677_condition
        )


    def test_r66678_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66678_condition
        )


    def test_r66679_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66679_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
