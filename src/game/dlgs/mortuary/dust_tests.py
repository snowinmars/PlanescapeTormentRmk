import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.dust_logic import DustLogic

class DustLogicTest(LogicTest):
    def test_initialization(self):
        logic = DustLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_dust_init(self):
        self._init_(
            'mortuary_f3r4',
            DustLogic(self.settings_manager).dust_init,
            self.settings_manager.get_talked_to_dust_times
        )


    def test_methods_are_bound(self):
        self.target_class = DustLogic
        self._methods_are_bound()


    def test_r313_action(self):
        logic = DustLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r313_action()
        )


    def test_r3888_action(self):
        logic = DustLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r3888_action()
        )


    def test_r3886_action(self):
        logic = DustLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r3886_action()
        )


    def test_r33189_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r33189_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r33189_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r371_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r371_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r371_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r450_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r450_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r450_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r399_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertEqual(self.settings_manager.get_adahn(), 0)
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r399_action()

        self.assertEqual(self.settings_manager.get_adahn(), 1)
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r399_action()

        self.assertEqual(self.settings_manager.get_adahn(), 2)
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r448_action(self):
        logic = DustLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r448_action()
        )


    def test_r449_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_mortualy_alarmed())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r449_action()

        self.assertTrue(self.settings_manager.get_mortualy_alarmed())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r449_action()
        self.assertTrue(self.settings_manager.get_mortualy_alarmed())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r1339_action(self):
        logic = DustLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r1339_action()
        )


    def test_r1426_action(self):
        logic = DustLogic(self.settings_manager)

        logic.r1426_action()


    def test_r1428_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 15

        self.assertEqual(self.settings_manager.get_choke(), 0)
        self.assertFalse(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), 0)
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r1428_action()

        self.assertEqual(self.settings_manager.get_choke(), 1)
        self.assertTrue(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), 1)
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r1429_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 15

        self.assertEqual(self.settings_manager.get_choke(), 0)
        self.assertEqual(self.settings_manager.get_choke_dustman(), 0)
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r1429_action()

        self.assertEqual(self.settings_manager.get_choke(), 1)
        self.assertEqual(self.settings_manager.get_choke_dustman(), 1)
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r3882_action(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r3882_action()
        )


    def test_r3884_action(self):
        logic = DustLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r3884_action()
        )


    def test_r3890_action(self):
        logic = DustLogic(self.settings_manager)

        logic.r3890_action()


    def test_r327_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r327_condition()
        )


    def test_r328_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r328_condition()
        )


    def test_r334_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r334_condition()
        )

    def test_r344_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r344_condition()
        )


    def test_r3887_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3887_condition()
        )


    def test_r358_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r358_condition()
        )


    def test_r3885_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3885_condition()
        )


    def test_r342_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.settings_manager.set_dhall_value(0)

        self.assertFalse(logic.r342_condition())

        self.settings_manager.set_dhall_value(1)
        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r342_condition())


    def test_r343_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.settings_manager.set_dhall_value(0)

        self.assertFalse(logic.r343_condition())

        self.settings_manager.set_dhall_value(1)

        self.assertTrue(logic.r343_condition())


    def test_r33183_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_deionarra_value(0)

        self.assertFalse(logic.r33183_condition())

        self.settings_manager.set_deionarra_value(1)
        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r33183_condition())


    def test_r33185_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_deionarra_value(0)

        self.assertFalse(logic.r33185_condition())

        self.settings_manager.set_deionarra_value(1)

        self.assertTrue(logic.r33185_condition())


    def test_r33186_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_soego_value(0)

        self.assertFalse(logic.r33186_condition())

        self.settings_manager.set_soego_value(1)
        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r33186_condition())


    def test_r33187_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f1r1'

        self.settings_manager.set_soego_value(0)

        self.assertFalse(logic.r33187_condition())

        self.settings_manager.set_soego_value(1)

        self.assertTrue(logic.r33187_condition())


    def test_r33189_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33189_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33189_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r33189_condition())

        self.settings_manager.set_talked_to_dust_times(1)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 1)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33189_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33189_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r33189_condition())


    def test_r33190_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33190_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33190_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r33190_condition())

        self.settings_manager.set_talked_to_dust_times(1)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 1)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33190_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33190_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r33190_condition())

        self.settings_manager.set_talked_to_dust_times(2)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 2)
        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r33190_condition())
        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r33190_condition())
        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r33190_condition())


    def test_r370_condition(self):
        logic = DustLogic(self.settings_manager)

        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            lambda: logic.r370_condition()
        )


    def test_r371_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r371_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertTrue(logic.r371_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertFalse(logic.r371_condition())


    def test_r372_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r372_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertFalse(logic.r372_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertTrue(logic.r372_condition())


    def test_r373_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r373_condition()
        )


    def test_r1335_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1335_condition()
        )


    def test_r378_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r378_condition()
        )


    def test_r450_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r450_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertTrue(logic.r450_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertFalse(logic.r450_condition())


    def test_r1337_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r1337_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertFalse(logic.r1337_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertTrue(logic.r1337_condition())


    def test_r3904_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3904_condition()
        )


    def test_r3905_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3905_condition()
        )


    def test_r399_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r399_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertTrue(logic.r399_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertFalse(logic.r399_condition())


    def test_r3906_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r3906_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertFalse(logic.r3906_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertTrue(logic.r3906_condition())


    def test_r3907_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3907_condition()
        )


    def test_r3908_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3908_condition()
        )


    def test_r413_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r413_condition()
        )


    def test_r3918_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3918_condition()
        )


    def test_r3919_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3919_condition()
        )


    def test_r3920_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3920_condition()
        )


    def test_r416_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertFalse(logic.r416_condition())

        self.settings_manager.glm.set_location(id)

        self.assertTrue(logic.r416_condition())


    def test_r417_condition(self):
        logic = DustLogic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertTrue(logic.r417_condition())

        self.settings_manager.glm.set_location(id)

        self.assertFalse(logic.r417_condition())


    def test_r436_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r436_condition()
        )


    def test_r3909_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3909_condition()
        )


    def test_r3910_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3910_condition()
        )


    def test_r3911_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3911_condition()
        )


    def test_r445_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r445_condition()
        )


    def test_r446_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r446_condition()
        )


    def test_r3912_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3912_condition()
        )


    def test_r3913_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3913_condition()
        )


    def test_r449_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r449_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertTrue(logic.r449_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertFalse(logic.r449_condition())


    def test_r1339_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_talked_to_dust_times(), 0)
        self.assertFalse(logic.r1339_condition())

        self.settings_manager.set_talked_to_dust_times(1)
        self.assertFalse(logic.r1339_condition())

        self.settings_manager.set_talked_to_dust_times(2)
        self.assertTrue(logic.r1339_condition())


    def test_r1420_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertFalse(logic.r1420_condition())

        self.settings_manager.set_in_party_morte(True)

        self.assertTrue(logic.r1420_condition())


    def test_r1421_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertFalse(logic.r1421_condition())

        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(logic.r1421_condition())

        self.settings_manager.set_warning(1)
        self.assertTrue(logic.r1421_condition())


    def test_r1422_condition(self):
        logic = DustLogic(self.settings_manager)

        self.assertFalse(logic.r1422_condition())

        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(logic.r1422_condition())

        self.settings_manager.set_warning(1)
        self.assertFalse(logic.r1422_condition())

        self.settings_manager.set_warning(2)
        self.assertTrue(logic.r1422_condition())


    def test_r1423_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r1423_condition()
        )

    def test_r1428_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            lambda: logic.r1428_condition()
        )


    def test_r1429_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            lambda: logic.r1429_condition()
        )


    def test_r3914_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3914_condition()
        )


    def test_r3915_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3915_condition()
        )


    def test_r3898_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3898_condition()
        )


    def test_r3899_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3899_condition()
        )


    def test_r3900_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r3900_condition()
        )


    def test_r3901_condition(self):
        logic = DustLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r3901_condition()
        )


    def test_r66675_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66675_condition()
        )


    def test_r66676_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66676_condition()
        )

    def test_r66677_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66677_condition()
        )


    def test_r66678_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66678_condition()
        )


    def test_r66679_condition(self):
        logic = DustLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_join_dustmen(x),
            lambda: logic.r66679_condition()
        )


if __name__ == '__main__':
    unittest.main()
