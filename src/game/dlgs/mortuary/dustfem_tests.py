import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.dustfem_logic import DustfemLogic


class DustfemLogicTest(LogicTest):
    def setUp(self):
        super(DustfemLogicTest, self).setUp()
        self.logic = DustfemLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = DustfemLogic
        self._methods_are_bound()


    def test_dustfem_init(self):
        self._init_with_location(
            'mortuary_f3r3',
            self.logic.dustfem_init,
            self.settings_manager.get_talked_to_dustfem_times
        )


    def test_kill_dustfem(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_dustfem,
            self.logic.kill_dustfem
        )


    def test_r1225_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r1225_action
        )


    def test_r1246_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r1246_action
        )


    def test_r1249_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r1249_action
        )


    def test_r33227_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r33227_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r33227_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r1273_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r1273_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r1273_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r1290_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r1290_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r1290_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r1294_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r1294_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r1294_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r4307_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r4307_action
        )


    def test_r4308_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_mortualy_alarmed())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r4308_action()

        self.assertTrue(self.settings_manager.get_mortualy_alarmed())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r4308_action()
        self.assertTrue(self.settings_manager.get_mortualy_alarmed())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r4309_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r4309_action
        )


    def test_r4317_action(self):
        self.logic.r4317_action()


    def test_r4318_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 15

        self.assertEqual(self.settings_manager.get_choke(), 0)
        self.assertFalse(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), 0)
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r4318_action()

        self.assertEqual(self.settings_manager.get_choke(), 1)
        self.assertTrue(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), 1)
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r4319_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 15

        self.assertEqual(self.settings_manager.get_choke(), 0)
        self.assertEqual(self.settings_manager.get_choke_dustman(), 0)
        self.assertFalse(self.settings_manager.get_dead_dustfem())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r4319_action()

        self.assertEqual(self.settings_manager.get_choke(), 1)
        self.assertEqual(self.settings_manager.get_choke_dustman(), 1)
        self.assertTrue(self.settings_manager.get_dead_dustfem())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r4320_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertFalse(self.settings_manager.get_dead_dustfem())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r4320_action()

        self.assertTrue(self.settings_manager.get_dead_dustfem())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r4321_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r4321_action
        )


    def test_r4322_action(self):
        self.logic.r4322_action()


    def test_r1235_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1235_condition
        )


    def test_r1236_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1236_condition
        )


    def test_r1242_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1242_condition
        )


    def test_r1244_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1244_condition
        )


    def test_r1245_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1245_condition
        )


    def test_r1247_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1247_condition
        )


    def test_r1248_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1248_condition
        )


    def test_r1253_condition(self):
        location = 'mortuary_f2r1'

        self.settings_manager.set_dhall_value(0)
        self.assertFalse(self.logic.r1253_condition())

        self.settings_manager.set_dhall_value(1)
        self.settings_manager.location_manager.set_location(location)
        self.assertTrue(self.logic.r1253_condition())


    def test_r1255_condition(self):
        location = 'mortuary_f2r1'

        self.settings_manager.set_dhall_value(0)
        self.assertFalse(self.logic.r1255_condition())

        self.settings_manager.set_dhall_value(1)
        self.assertTrue(self.logic.r1255_condition())

        self.settings_manager.set_dhall_value(1)
        self.settings_manager.location_manager.set_location(location)
        self.assertFalse(self.logic.r1255_condition())


    def test_r1258_condition(self):
        location = 'mortuary_f1r1'

        self.settings_manager.set_deionarra_value(0)
        self.assertFalse(self.logic.r1258_condition())

        self.settings_manager.set_deionarra_value(1)
        self.settings_manager.location_manager.set_location(location)
        self.assertTrue(self.logic.r1258_condition())


    def test_r4336_condition(self):
        location = 'mortuary_f1r1'

        self.settings_manager.set_deionarra_value(0)
        self.assertFalse(self.logic.r4336_condition())

        self.settings_manager.set_deionarra_value(1)
        self.assertTrue(self.logic.r4336_condition())

        self.settings_manager.set_dhall_value(1)
        self.settings_manager.location_manager.set_location(location)
        self.assertFalse(self.logic.r4336_condition())


    def test_r33224_condition(self):
        location = 'mortuary_f1r1'

        self.settings_manager.set_soego_value(0)
        self.assertFalse(self.logic.r33224_condition())

        self.settings_manager.set_soego_value(1)
        self.settings_manager.location_manager.set_location(location)
        self.assertTrue(self.logic.r33224_condition())


    def test_r33226_condition(self):
        location = 'mortuary_f1r1'

        self.settings_manager.set_soego_value(0)
        self.assertFalse(self.logic.r33226_condition())

        self.settings_manager.set_soego_value(1)
        self.assertTrue(self.logic.r33226_condition())

        self.settings_manager.set_soego_value(1)
        self.settings_manager.location_manager.set_location(location)
        self.assertFalse(self.logic.r33226_condition())


    def test_r33227_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r33227_condition())
        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r33227_condition())
        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r33227_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 1)
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r33227_condition())
        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r33227_condition())
        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r33227_condition())


    def test_r33229_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r33229_condition())
        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r33229_condition())
        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r33229_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 1)
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r33229_condition())
        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r33229_condition())
        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r33229_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 2)
        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r33229_condition())
        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r33229_condition())
        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r33229_condition())


    def test_r1272_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r1272_condition
        )


    def test_r1273_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1273_condition
        )


    def test_r1274_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1274_condition
        )


    def test_r1275_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1275_condition
        )


    def test_r1276_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1276_condition
        )


    def test_r1281_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1281_condition
        )


    def test_r1290_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1290_condition
        )


    def test_r1291_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1291_condition
        )


    def test_r1292_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1292_condition
        )


    def test_r1293_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1293_condition
        )


    def test_r1294_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1294_condition
        )


    def test_r1295_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1295_condition
        )


    def test_r1296_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1296_condition
        )


    def test_r1297_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1297_condition
        )


    def test_r1396_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1396_condition
        )


    def test_r1397_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1397_condition
        )


    def test_r1398_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1398_condition
        )


    def test_r1399_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1399_condition
        )


    def test_r4281_condition(self):
        self._is_visited_external_location_condition(
            'mortuary_f2r3',
            self.logic.r4281_condition
        )


    def test_r4282_condition(self):
        self._not_is_visited_external_location_condition(
            'mortuary_f2r3',
            self.logic.r4282_condition
        )


    def test_r4296_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4296_condition
        )


    def test_r4297_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4297_condition
        )


    def test_r4298_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4298_condition
        )


    def test_r4300_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4300_condition
        )


    def test_r4303_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4303_condition
        )


    def test_r4304_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4304_condition
        )


    def test_r4305_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4305_condition
        )


    def test_r4306_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4306_condition
        )


    def test_r4308_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r4308_condition
        )


    def test_r4309_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r4309_condition
        )


    def test_r4312_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_warning(1)
        self.assertFalse(self.logic.r4312_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_warning(0)
        self.assertTrue(self.logic.r4312_condition())


    def test_r4313_condition(self):
        self.settings_manager.set_warning(0)
        self.settings_manager.set_in_party_morte(False)
        self.assertFalse(self.logic.r4313_condition())

        self.settings_manager.set_warning(1)
        self.settings_manager.set_in_party_morte(True)
        self.assertTrue(self.logic.r4313_condition())


    def test_r4314_condition(self):
        self.assertFalse(self.logic.r4314_condition())

        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(self.logic.r4314_condition())

        self.settings_manager.set_warning(1)
        self.assertFalse(self.logic.r4314_condition())

        self.settings_manager.set_warning(2)
        self.assertTrue(self.logic.r4314_condition())


    def test_r4315_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r4315_condition
        )


    def test_r4318_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            self.logic.r4318_condition
        )


    def test_r4319_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            self.logic.r4319_condition
        )


    def test_r4324_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4324_condition
        )


    def test_r4325_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4325_condition
        )


    def test_r4329_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4329_condition
        )


    def test_r4331_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4331_condition
        )


    def test_r4332_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4332_condition
        )


    def test_r4333_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4333_condition
        )


    def test_r66684_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66684_condition
        )


    def test_r66685_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66685_condition
        )


    def test_r66686_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66686_condition
        )


    def test_r66687_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66687_condition
        )


    def test_r66688_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            1,
            self.logic.r66688_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
