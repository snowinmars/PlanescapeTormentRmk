import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.ddhall_logic import DdhallLogic

class DdhallLogicTest(LogicTest):
    def test_initialization(self):
        logic = DdhallLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = DdhallLogic
        self._methods_are_bound()


    def test_ddhall_init(self):
        logic = DdhallLogic(self.settings_manager)
        id = 'mortuary_f2r3'

        self._step_into_location_action(
            id,
            lambda: logic.ddhall_init()
        )


    def test_kill_dhall(self):
        logic = DdhallLogic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_dhall())
        self.assertFalse(self.settings_manager.get_has_dhall_feather())

        logic.kill_dhall()

        self.assertTrue(self.settings_manager.get_dead_dhall())
        self.assertTrue(self.settings_manager.get_has_dhall_feather())


    def test_r827_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dhall(),
            lambda: logic.r827_action()
        )


    def test_r830_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r830_action()
        )


    def test_r831_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r831_action()
        )


    def test_r843_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r843_action()
        )


    def test_r5069_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39460'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r5069_action()
        )


    def test_r886_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39463'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r886_action()
        )


    def test_r906_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39464'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r906_action()
        )


    def test_r921_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39461'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r921_action()
        )


    def test_r931_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39462'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r931_action()
        )


    def test_r936_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r936_action()
        )


    def test_r953_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dustmen(),
            lambda: logic.r953_action()
        )


    def test_r958_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dustmen(),
            lambda: logic.r958_action()
        )


    def test_r1301_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39470'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r1301_action()
        )


    def test_r974_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dustmen(),
            lambda: logic.r974_action()
        )


    def test_r985_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dustmen(),
            lambda: logic.r985_action()
        )


    def test_r1327_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dhall(),
            lambda: logic.r1327_action()
        )


    def test_r5731_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39459'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r5731_action()
        )


    def test_r5732_action(self):
        logic = DdhallLogic(self.settings_manager)
        id = '39459'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r5732_action()
        )


    def test_r6033_action(self):
        logic = DdhallLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_dustmen(),
            lambda: logic.r6033_action()
        )


    def test_r6051_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6051_action()
        )


    def test_r6053_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6053_action()
        )


    def test_r5070_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r5070_condition()
        )


    def test_r5071_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r5071_condition()
        )


    def test_r5072_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r5072_condition()
        )


    def test_r5073_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        propInt = 'intelligence'
        propWis = 'wisdom'
        deltaInt = 12
        deltaWis = 13

        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis + 1)
        self.assertFalse(logic.r5073_condition())

        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis)
        self.assertFalse(logic.r5073_condition())

        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis - 1)
        self.assertTrue(logic.r5073_condition())


    def test_r5074_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r5074_condition()
        )


    def test_r6064_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r6064_condition()
        )


    def test_r13288_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r13288_condition()
        )


    def test_r830_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_vaxis_lawful(x),
            lambda: logic.r830_condition()
        )


    def test_r831_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_lawful(x),
            lambda: logic.r831_condition()
        )


    def test_r839_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r839_condition()
        )


    def test_r835_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_mortualy_alarmed(True)
        self.assertFalse(logic.r835_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_mortualy_alarmed(False)
        self.assertTrue(logic.r835_condition())


    def test_r5058_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_mortualy_alarmed(False)
        self.assertFalse(logic.r5058_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_mortualy_alarmed(True)
        self.assertTrue(logic.r5058_condition())


    def test_r842_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_dhall(x),
            lambda: logic.r842_condition()
        )


    def test_r843_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_dhall(x),
            lambda: logic.r843_condition()
        )


    def test_r5062_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_dhall(x),
            lambda: logic.r5062_condition()
        )


    def test_r854_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self.settings_manager.set_meet_vaxis(False)
        self.settings_manager.set_dead_vaxis(True)
        self.settings_manager.set_vaxis_leave(True)
        self.settings_manager.set_vaxis_betrayed(1)
        self.assertFalse(logic.r854_condition())

        self.settings_manager.set_meet_vaxis(True)
        self.settings_manager.set_dead_vaxis(False)
        self.settings_manager.set_vaxis_leave(False)
        self.settings_manager.set_vaxis_betrayed(0)
        self.assertTrue(logic.r854_condition())


    def test_r854_condition(self):
        logic = DdhallLogic(self.settings_manager)


    def test_r858_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self.settings_manager.set_escape_mortuary(True)
        self.assertFalse(logic.r858_condition())

        self.settings_manager.set_escape_mortuary(False)

        self.assertTrue(logic.r858_condition())


    def test_r870_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r870_condition()
        )


    def test_r891_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r891_condition()
        )


    def test_r892_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r892_condition()
        )


    def test_r898_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r898_condition()
        )


    def test_r910_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r910_condition()
        )


    def test_r931_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r931_condition()
        )


    def test_r942_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_journal(x),
            lambda: logic.r942_condition()
        )


    def test_r943_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r943_condition()
        )


    def test_r6026_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r6026_condition()
        )


    def test_r874_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r874_condition()
        )


    def test_r948_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r948_condition()
        )


    def test_r6027_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r6027_condition()
        )


    def test_r6066_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r6066_condition()
        )


    def test_r964_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r964_condition()
        )


    def test_r968_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r968_condition()
        )

    def test_r5076_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r5076_condition()
        )


    def test_r5077_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r5077_condition()
        )


    def test_r5078_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        propInt = 'intelligence'
        propWis = 'wisdom'
        deltaInt = 12
        deltaWis = 13

        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis + 1)
        self.assertFalse(logic.r5078_condition())

        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis)
        self.assertFalse(logic.r5078_condition())

        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis - 1)
        self.assertTrue(logic.r5078_condition())


    def test_r5079_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r5079_condition()
        )


    def test_r5081_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_deionarra(x),
            lambda: logic.r5081_condition()
        )


    def test_r5082_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        propInt = 'intelligence'
        propWis = 'wisdom'
        deltaInt = 12
        deltaWis = 13

        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis + 1)
        self.assertFalse(logic.r5082_condition())

        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis)
        self.assertFalse(logic.r5082_condition())

        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.settings_manager.gcm.set_property(who, propWis, deltaWis - 1)
        self.assertTrue(logic.r5082_condition())


    def test_r5083_condition(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r5083_condition()
        )


    def test_r6032_condition(self):
        logic = DdhallLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r6032_condition()
        )
