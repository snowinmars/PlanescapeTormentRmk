import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.dustfem_logic import DustfemLogic

class DustfemLogicTest(LogicTest):
    def test_initialization(self):
        logic = DustfemLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = DustfemLogic
        self._methods_are_bound()


    def test_dustfem_init(self):
        self._init_(
            'mortuary_f3r6',
            DustfemLogic(self.settings_manager).dustfem_init,
            self.settings_manager.get_talked_to_dustfem_times
        )


    def test_r1225_action(self):
        logic = DustfemLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r1225_action()
        )


    def test_r1246_action(self):
        logic = DustfemLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r1246_action()
        )


    def test_r1249_action(self):
        logic = DustfemLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r1249_action()
        )


    def test_r33227_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r33227_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r33227_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r1273_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r1273_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r1273_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r1290_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r1290_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r1290_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r1294_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r1294_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r1294_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r4307_action(self):
        logic = DustfemLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r4307_action()
        )


    def test_r4308_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_mortualy_alarmed())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r4308_action()

        self.assertTrue(self.settings_manager.get_mortualy_alarmed())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r4308_action()
        self.assertTrue(self.settings_manager.get_mortualy_alarmed())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r4309_action(self):
        logic = DustfemLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r4309_action()
        )


    def test_r4317_action(self):
        logic = DustfemLogic(self.settings_manager)

        logic.r4317_action()


    def test_r4318_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 15

        self.assertEqual(self.settings_manager.get_choke(), 0)
        self.assertFalse(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), 0)
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r4318_action()

        self.assertEqual(self.settings_manager.get_choke(), 1)
        self.assertTrue(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), 1)
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r4319_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 15

        self.assertEqual(self.settings_manager.get_choke(), 0)
        self.assertEqual(self.settings_manager.get_choke_dustman(), 0)
        self.assertFalse(self.settings_manager.get_dead_dustfem())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r4319_action()

        self.assertEqual(self.settings_manager.get_choke(), 1)
        self.assertEqual(self.settings_manager.get_choke_dustman(), 1)
        self.assertTrue(self.settings_manager.get_dead_dustfem())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r4320_action(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4320_action()
        )


    def test_r4321_action(self):
        logic = DustfemLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r4321_action()
        )


    def test_r4322_action(self):
        logic = DustfemLogic(self.settings_manager)

        logic.r4322_action()


    def test_r1235_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1235_condition()
        )


    def test_r1236_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1236_condition()
        )


    def test_r1242_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1242_condition()
        )


    def test_r1244_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1244_condition()
        )


    def test_r1245_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1245_condition()
        )

    def test_r1247_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1247_condition()
        )


    def test_r1248_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1248_condition()
        )


    def test_r1253_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.settings_manager.set_dhall_value(0)

        self.assertFalse(logic.r1253_condition())

        self.settings_manager.set_dhall_value(1)
        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r1253_condition())


    def test_r1255_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.settings_manager.set_dhall_value(0)

        self.assertFalse(logic.r1255_condition())

        self.settings_manager.set_dhall_value(1)

        self.assertTrue(logic.r1255_condition())


    def test_r1258_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_deionarra_value(0)

        self.assertFalse(logic.r1258_condition())

        self.settings_manager.set_deionarra_value(1)
        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r1258_condition())


    def test_r4336_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_deionarra_value(0)

        self.assertFalse(logic.r4336_condition())

        self.settings_manager.set_deionarra_value(1)

        self.assertTrue(logic.r4336_condition())


    def test_r33224_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_soego_value(0)

        self.assertFalse(logic.r33224_condition())

        self.settings_manager.set_soego_value(1)
        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r33224_condition())


    def test_r33226_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_soego_value(0)

        self.assertFalse(logic.r33226_condition())

        self.settings_manager.set_soego_value(1)

        self.assertTrue(logic.r33226_condition())


    def test_r33227_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33227_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33227_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r33227_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 1)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33227_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33227_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r33227_condition())


    def test_r33229_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33229_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33229_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r33229_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 1)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33229_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33229_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r33229_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 2)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33229_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33229_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r33229_condition())


    def test_r1272_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            lambda: logic.r1272_condition()
        )

    def test_r1273_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r1273_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertTrue(logic.r1273_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertFalse(logic.r1273_condition())


    def test_r1274_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r1274_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertFalse(logic.r1274_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertTrue(logic.r1274_condition())


    def test_r1275_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1275_condition()
        )


    def test_r1276_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1276_condition()
        )


    def test_r1281_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1281_condition()
        )


    def test_r1290_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r1290_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertTrue(logic.r1290_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertFalse(logic.r1290_condition())


    def test_r1291_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r1291_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertFalse(logic.r1291_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertTrue(logic.r1291_condition())


    def test_r1292_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1292_condition()
        )


    def test_r1293_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1293_condition()
        )


    def test_r1294_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r1294_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertTrue(logic.r1294_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertFalse(logic.r1294_condition())


    def test_r1295_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r1295_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertFalse(logic.r1295_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertTrue(logic.r1295_condition())


    def test_r1296_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1296_condition()
        )


    def test_r1297_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1297_condition()
        )


    def test_r1396_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1396_condition()
        )


    def test_r1397_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1397_condition()
        )


    def test_r1398_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1398_condition()
        )


    def test_r1399_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1399_condition()
        )


    def test_r4281_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertFalse(logic.r4281_condition())

        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r4281_condition())


    def test_r4282_condition(self):
        logic = DustfemLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertTrue(logic.r4282_condition())

        self.settings_manager.glm.set_location(id)

        self.assertFalse(logic.r4282_condition())


    def test_r4296_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4296_condition()
        )


    def test_r4297_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4297_condition()
        )

    def test_r4298_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4298_condition()
        )

    def test_r4300_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4300_condition()
        )


    def test_r4303_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4303_condition()
        )

    def test_r4304_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4304_condition()
        )

    def test_r4305_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4305_condition()
        )

    def test_r4306_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4306_condition()
        )


    def test_r4308_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r4308_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertTrue(logic.r4308_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertFalse(logic.r4308_condition())


    def test_r4309_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dustfem_times(), 0)
        self.assertFalse(logic.r4309_condition())

        self.settings_manager.set_talked_to_dustfem_times(1)
        self.assertFalse(logic.r4309_condition())

        self.settings_manager.set_talked_to_dustfem_times(2)
        self.assertTrue(logic.r4309_condition())


    def test_r4312_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertFalse(logic.r4312_condition())

        self.settings_manager.set_in_party_morte(True)

        self.assertTrue(logic.r4312_condition())


    def test_r4313_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertFalse(logic.r4313_condition())

        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(logic.r4313_condition())

        self.settings_manager.set_warning(1)
        self.assertTrue(logic.r4313_condition())


    def test_r4314_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self.assertFalse(logic.r4314_condition())

        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(logic.r4314_condition())

        self.settings_manager.set_warning(1)
        self.assertFalse(logic.r4314_condition())

        self.settings_manager.set_warning(2)
        self.assertTrue(logic.r4314_condition())


    def test_r4315_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4315_condition()
        )

    def test_r4318_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            lambda: logic.r4318_condition()
        )


    def test_r4319_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            lambda: logic.r4319_condition()
        )


    def test_r4324_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4324_condition()
        )


    def test_r4325_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4325_condition()
        )


    def test_r4329_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4329_condition()
        )


    def test_r4331_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4331_condition()
        )


    def test_r4332_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4332_condition()
        )


    def test_r4333_condition(self):
        logic = DustfemLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4333_condition()
        )


    def test_r66684_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66684_condition()
        )


    def test_r66685_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66685_condition()
        )

    def test_r66686_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66686_condition()
        )

    def test_r66687_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66687_condition()
        )

    def test_r66688_condition(self):
        logic = DustfemLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66688_condition()
        )


if __name__ == '__main__':
    unittest.main()
