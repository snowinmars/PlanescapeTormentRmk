import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.dhall_logic import DhallLogic


class DhallLogicTest(LogicTest):
    def setUp(self):
        super(DhallLogicTest, self).setUp()
        self.logic = DhallLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = DhallLogic
        self._methods_are_bound()


    def test_dhall_init(self):
        self._init_with_location(
            'mortuary_f2r3',
            self.logic.dhall_init,
            self.settings_manager.get_talked_to_dhall_times
        )


    def test_kill_dhall(self):
        self.assertFalse(self.settings_manager.get_dead_dhall())
        self.assertFalse(self.settings_manager.get_has_dhall_feather())

        self.logic.kill_dhall()

        self.assertTrue(self.settings_manager.get_dead_dhall())
        self.assertTrue(self.settings_manager.get_has_dhall_feather())


    def test_r827_action(self):
        self.logic.r827_action()


    def test_r830_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250
        note_id = '39468'

        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), 0)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))
        before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r830_action()

        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), 2)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))
        after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(before + delta, after)


    def test_r831_action(self):
        who = 'protagonist'
        prop_exp = 'experience'
        prop_good = 'good'
        delta_exp = 250
        delta_good = -3
        note_id = '39469'

        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), 0)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))
        before_exp = self.settings_manager.character_manager.get_property(who, prop_exp)
        before_good = self.settings_manager.character_manager.get_property(who, prop_good)

        self.logic.r831_action()

        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), 2)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))
        after_exp = self.settings_manager.character_manager.get_property(who, prop_exp)
        after_good = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(before_exp + delta_exp, after_exp)
        self.assertEqual(before_good + delta_good, after_good)


    def test_r843_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r843_action
        )


    def test_r5069_action(self):
        note_id = '39460'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r5069_action
        )


    def test_r886_action(self):
        note_id = '39463'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r886_action
        )


    def test_r906_action(self):
        note_id = '39464'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r906_action
        )


    def test_r921_action(self):
        note_id = '39461'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r921_action
        )


    def test_r931_action(self):
        note_id = '39462'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r931_action
        )


    def test_r936_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r936_action
        )


    def test_r953_action(self):
        self._integer_inc_once_action(
            self.settings_manager.get_know_dustmen,
            1,
            self.logic.r953_action
        )


    def test_r958_action(self):
        self._integer_inc_once_action(
            self.settings_manager.get_know_dustmen,
            1,
            self.logic.r958_action
        )


    def test_r1301_action(self):
        note_id = '39470'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r1301_action
        )


    def test_r974_action(self):
        self._integer_inc_once_action(
            self.settings_manager.get_know_dustmen,
            1,
            self.logic.r974_action
        )


    def test_r985_action(self):
        self._integer_inc_once_action(
            self.settings_manager.get_know_dustmen,
            1,
            self.logic.r985_action
        )


    def test_r1327_action(self):
        self._integer_equals_action(
            self.settings_manager.get_dhall_value,
            1,
            self.logic.r1327_action
        )


    def test_r5731_action(self):
        note_id = '39459'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r5731_action
        )


    def test_r5732_action(self):
        note_id = '39459'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r5732_action
        )


    def test_r6033_action(self):
        self._integer_inc_once_action(
            self.settings_manager.get_know_dustmen,
            1,
            self.logic.r6033_action
        )


    def test_r6051_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r6051_action
        )


    def test_r6053_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r6053_action
        )


    def test_r5070_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r5070_condition
        )


    def test_r5071_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r5071_condition
        )


    def test_r5072_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r5072_condition
        )


    def test_r5073_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_wis = 'wisdom'
        delta_int = 12
        delta_wis = 13

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis + 1)
        self.assertFalse(self.logic.r5073_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis)
        self.assertFalse(self.logic.r5073_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis - 1)
        self.assertTrue(self.logic.r5073_condition())


    def test_r5074_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r5074_condition
        )


    def test_r6064_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r6064_condition
        )


    def test_r13288_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r13288_condition
        )


    def test_r830_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_vaxis_lawful(x),
            self.logic.r830_condition
        )


    def test_r831_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_lawful(x),
            self.logic.r831_condition
        )


    def test_r839_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r839_condition
        )


    def test_r835_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_mortualy_alarmed(True)
        self.assertFalse(self.logic.r835_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_mortualy_alarmed(False)
        self.assertTrue(self.logic.r835_condition())


    def test_r5058_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_mortualy_alarmed(False)
        self.assertFalse(self.logic.r5058_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_mortualy_alarmed(True)
        self.assertTrue(self.logic.r5058_condition())


    def test_r842_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_dhall_value(x),
            0,
            self.logic.r842_condition
        )


    def test_r843_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_dhall_value(x),
            0,
            self.logic.r843_condition
        )


    def test_r5062_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_dhall_value(x),
            0,
            self.logic.r5062_condition
        )


    def test_r854_condition(self):
        self.settings_manager.set_vaxis_value(0)
        self.settings_manager.set_dead_vaxis(True)
        self.settings_manager.set_vaxis_leave(True)
        self.settings_manager.set_vaxis_betrayed(1)
        self.assertFalse(self.logic.r854_condition())

        self.settings_manager.set_vaxis_value(1)
        self.settings_manager.set_dead_vaxis(False)
        self.settings_manager.set_vaxis_leave(False)
        self.settings_manager.set_vaxis_betrayed(0)
        self.assertTrue(self.logic.r854_condition())


    def test_r858_condition(self):
        self.settings_manager.set_escape_mortuary(False)
        self.assertTrue(self.logic.r858_condition())

        self.settings_manager.set_escape_mortuary(True)
        self.assertFalse(self.logic.r858_condition())

        self.settings_manager.location_manager.set_location('hive_northeast')
        self.settings_manager.set_escape_mortuary(False)
        self.assertFalse(self.logic.r858_condition())



    def test_r870_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r870_condition
        )


    def test_r891_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r891_condition
        )


    def test_r892_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r892_condition
        )


    def test_r898_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r898_condition
        )


    def test_r910_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r910_condition
        )


    def test_r931_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r931_condition
        )


    def test_r942_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_journal(x),
            self.logic.r942_condition
        )


    def test_r943_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r943_condition
        )


    def test_r6026_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r6026_condition
        )


    def test_r874_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r874_condition
        )


    def test_r948_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r948_condition
        )


    def test_r6027_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r6027_condition
        )


    def test_r6066_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r6066_condition
        )


    def test_r964_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r964_condition
        )


    def test_r968_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r968_condition
        )


    def test_r5076_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r5076_condition
        )


    def test_r5077_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r5077_condition
        )


    def test_r5078_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_wis = 'wisdom'
        delta_int = 12
        delta_wis = 13

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis + 1)
        self.assertFalse(self.logic.r5078_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis)
        self.assertFalse(self.logic.r5078_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis - 1)
        self.assertTrue(self.logic.r5078_condition())


    def test_r5079_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r5079_condition
        )


    def test_r5081_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r5081_condition
        )


    def test_r5082_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_wis = 'wisdom'
        delta_int = 12
        delta_wis = 13

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis + 1)
        self.assertFalse(self.logic.r5082_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis)
        self.assertFalse(self.logic.r5082_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_wis, delta_wis - 1)
        self.assertTrue(self.logic.r5082_condition())


    def test_r5083_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r5083_condition
        )


    def test_r6032_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r6032_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
