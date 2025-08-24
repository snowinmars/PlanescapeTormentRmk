import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.dhall_logic import DhallLogic


class DhallLogicTest(LogicTest):
    def setUp(self):
        super(DhallLogicTest, self).setUp()
        self.logic = DhallLogic(self.settings_manager)


    def test_r827_action(self):
        self.logic.r827_action()


    def test_j39468_s3_r830_action(self):
        note_id = '39468'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39468_s3_r830_action
        )


    def test_r830_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        vaxis_betrayed_before = 1
        vaxis_betrayed_after = 2
        vaxis_betrayed_after_once = 2
        self.settings_manager.set_vaxis_betrayed(vaxis_betrayed_before)

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), vaxis_betrayed_before)

        self.logic.r830_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), vaxis_betrayed_after)

        self.logic.r830_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), vaxis_betrayed_after_once)


    def test_r831_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        vaxis_betrayed_before = 1
        vaxis_betrayed_after = 2
        vaxis_betrayed_after_once = 2
        self.settings_manager.set_vaxis_betrayed(vaxis_betrayed_before)
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = -3
        note_id = '39469'

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), vaxis_betrayed_before)
        good_before = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r831_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), vaxis_betrayed_after)
        good_after = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r831_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.settings_manager.get_vaxis_betrayed(), vaxis_betrayed_after_once)
        good_after_once = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))


    def test_r843_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r843_action
        )


    def test_j39460_s9_r5069_action(self):
        note_id = '39460'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39460_s9_r5069_action
        )


    def test_j39463_s15_r886_action(self):
        note_id = '39463'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39463_s15_r886_action
        )


    def test_j39464_s19_r906_action(self):
        note_id = '39464'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39464_s19_r906_action
        )


    def test_j39461_s21_r921_action(self):
        note_id = '39461'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39461_s21_r921_action
        )


    def test_j39462_s25_r931_action(self):
        note_id = '39462'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39462_s25_r931_action
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


    def test_j39470_s34_r1301_action(self):
        note_id = '39470'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39470_s34_r1301_action
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
        self.settings_manager.set_dhall_value(2)
        self._integer_equals_action(
            self.settings_manager.get_dhall_value,
            1,
            self.logic.r1327_action
        )


    def test_j39459_s45_r5731_action(self):
        note_id = '39459'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39459_s45_r5731_action
        )


    def test_j39459_s45_r5732_action(self):
        note_id = '39459'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39459_s45_r5732_action
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
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12
        who_wisdom = 'protagonist'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.character_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r5073_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.character_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

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
        location_AR0200 = 'hive_northeast' # AR0200

        self.settings_manager.set_escape_mortuary(True)
        self.settings_manager.location_manager.set_location(location_AR0200)
        self.assertTrue(self.settings_manager.location_manager.is_visited(location_AR0200))

        self.assertFalse(self.logic.r858_condition())

        self.settings_manager.set_escape_mortuary(False)
        self.settings_manager.location_manager._current_external = None
        self.settings_manager.location_manager._current_internal = None
        self.settings_manager.location_manager._visited_externals = set()
        self.settings_manager.location_manager._visited_internals = set()
        self.assertFalse(self.settings_manager.location_manager.is_visited(location_AR0200))

        self.assertTrue(self.logic.r858_condition())


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
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12
        who_wisdom = 'protagonist'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.character_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r5078_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.character_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

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
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12
        who_wisdom = 'protagonist'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.character_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r5082_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.character_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

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
