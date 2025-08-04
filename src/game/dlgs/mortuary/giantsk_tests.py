import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.giantsk_logic import GiantskLogic


class GiantskLogicTest(LogicTest):
    def setUp(self):
        super(GiantskLogicTest, self).setUp()
        self.logic = GiantskLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = GiantskLogic
        self._methods_are_bound()


    def test_giantsk_init(self):
        self._init_with_location(
            'mortuary_f1rc',
            self.logic.giantsk_init,
            self.settings_manager.get_talked_to_giantsk_times
        )


    def test_kill_giantsk(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 500

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_giantsk()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r293_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r293_action
        )


    def test_r1165_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r1165_action
        )


    def test_r4042_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r4042_action
        )


    def test_r4079_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 500

        self.assertEqual(self.settings_manager.get_giant_skeleton_enchant(), 0)
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r4079_action()

        self.assertEqual(self.settings_manager.get_giant_skeleton_enchant(), 1)
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r4087_action(self):
        delta = 1

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        before = self.settings_manager.get_giant_skeleton_enchant()

        self.logic.r4087_action()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        after = self.settings_manager.get_giant_skeleton_enchant()
        self.assertEqual(before + delta, after)


    def test_r4088_action(self):
        delta = 1

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        before = self.settings_manager.get_giant_skeleton_enchant()

        self.logic.r4088_action()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        after = self.settings_manager.get_giant_skeleton_enchant()
        self.assertEqual(before + delta, after)


    def test_r4095_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r4095_action
        )


    def test_r4096_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 800

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4096_action
        )


    def test_r4097_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_breast1,
            self.logic.r4097_action
        )


    def test_r4098_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 800

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4098_action
        )


    def test_r4099_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_breast2,
            self.logic.r4099_action
        )


    def test_r4100_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_breast3,
            self.logic.r4100_action
        )


    def test_r4101_action(self):
        self.assertFalse(self.settings_manager.get_has_breast4())
        self.assertFalse(self.settings_manager.get_dead_giantsk())

        self.logic.r4101_action()

        self.assertTrue(self.settings_manager.get_has_breast4())
        self.assertTrue(self.settings_manager.get_dead_giantsk())


    def test_r64301_action(self):
        delta = 1

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        before = self.settings_manager.get_giant_skeleton_enchant()

        self.logic.r64301_action()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        after = self.settings_manager.get_giant_skeleton_enchant()
        self.assertEqual(before + delta, after)


    def test_r64302_action(self):
        delta = 1

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        before = self.settings_manager.get_giant_skeleton_enchant()

        self.logic.r64302_action()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        after = self.settings_manager.get_giant_skeleton_enchant()
        self.assertEqual(before + delta, after)


    def test_r3997_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            0,
            self.logic.r3997_condition
        )


    def test_r3998_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r3998_condition
        )


    def test_r3999_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r3999_condition
        )


    def test_r4000_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4000_condition
        )


    def test_r4001_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4001_condition
        )


    def test_r4002_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4002_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4002_condition())


    def test_r4003_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r4003_condition
        )


    def test_r4035_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            0,
            self.logic.r4035_condition
        )


    def test_r4036_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4036_condition
        )


    def test_r4037_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4037_condition
        )


    def test_r4038_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4038_condition
        )


    def test_r4039_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4039_condition
        )


    def test_r4040_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4040_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4040_condition())


    def test_r4048_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4048_condition
        )


    def test_r4049_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4049_condition
        )


    def test_r4050_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4050_condition
        )


    def test_r4051_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4051_condition
        )


    def test_r4052_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4052_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4052_condition())


    def test_r4054_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_wis = 'wisdom'
        delta_int = 12
        delta_wis = 13

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis + 1)
        self.assertFalse(self.logic.r4054_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis)
        self.assertFalse(self.logic.r4054_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis - 1)
        self.assertTrue(self.logic.r4054_condition())


    def test_r4055_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4055_condition
        )


    def test_r64293_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_wis = 'wisdom'
        delta_int = 12
        delta_wis = 13

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis + 1)
        self.assertFalse(self.logic.r64293_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis)
        self.assertFalse(self.logic.r64293_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis - 1)
        self.assertTrue(self.logic.r64293_condition())


    def test_r4056_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4056_condition
        )


    def test_r4057_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4057_condition
        )


    def test_r4058_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4058_condition
        )


    def test_r4059_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4059_condition
        )


    def test_r4060_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4060_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4060_condition())


    def test_r4062_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4062_condition
        )


    def test_r4063_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 16

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4063_condition
        )


    def test_r4064_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4064_condition
        )


    def test_r4065_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4065_condition
        )


    def test_r4066_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4066_condition
        )


    def test_r4067_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4067_condition
        )


    def test_r4068_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4068_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4068_condition())


    def test_r64294_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_tome_ba(x),
            self.logic.r64294_condition
        )


    def test_r4072_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4072_condition
        )


    def test_r4073_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4073_condition
        )


    def test_r4074_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4074_condition
        )


    def test_r4075_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4075_condition
        )


    def test_r4076_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4076_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4076_condition())


    def test_r4079_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            0,
            self.logic.r4079_condition
        )


    def test_r4080_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            0,
            self.logic.r4080_condition
        )


    def test_r4081_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4081_condition
        )


    def test_r4082_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4082_condition
        )


    def test_r4083_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4083_condition
        )


    def test_r4084_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4084_condition
        )


    def test_r4085_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4085_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4085_condition())


    def test_r64296_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_tome_ba(x),
            self.logic.r64296_condition
        )


    def test_r4087_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            2,
            self.logic.r4087_condition
        )


    def test_r4088_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            1,
            self.logic.r4088_condition
        )


    def test_r4089_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4089_condition
        )


    def test_r4090_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4090_condition
        )


    def test_r4091_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4091_condition
        )


    def test_r4092_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4092_condition
        )


    def test_r4093_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r4093_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r4093_condition())


    def test_r4099_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            3,
            self.logic.r4099_condition
        )


    def test_r4100_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            4,
            self.logic.r4100_condition
        )


    def test_r4101_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            5,
            self.logic.r4101_condition
        )


    def test_r64301_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            2,
            self.logic.r64301_condition
        )


    def test_r64302_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_giant_skeleton_enchant(x),
            1,
            self.logic.r64302_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
