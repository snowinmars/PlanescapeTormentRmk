import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.eivene_logic import EiveneLogic


class EiveneLogicTest(LogicTest):
    def setUp(self):
        super(EiveneLogicTest, self).setUp()
        self.logic = EiveneLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = EiveneLogic
        self._methods_are_bound()


    def test_eivene_init(self):
        self._init_with_location(
            'mortuary_f2r5',
            self.logic.eivene_init,
            self.settings_manager.get_talked_to_eivene_times
        )


    def test_kill_eivene(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_eivene,
            self.logic.kill_eivene
        )


    def test_r3418_action(self):
        self.logic.r3418_action()


    def test_r3422_action(self):
        self._integer_equals_action(
            self.settings_manager.get_eivene_value,
            1,
            self.logic.r3422_action
        )


    def test_r3424_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertFalse(self.settings_manager.get_eivene_delivery())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r3424_action()

        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        self.assertEqual(exp_before + delta, exp_after)


    def test_r3425_action(self):
        note_id = '37702'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3425_action
        )


    def test_r3426_action(self):
        note_id = '37702'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3426_action
        )


    def test_r3427_action(self):
        note_id = '37702'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3427_action
        )


    def test_r3428_action(self):
        note_id = '37702'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3428_action
        )


    def test_r3429_action(self):
        note_id = '37702'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3429_action
        )


    def test_r3491_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r3491_action
        )


    def test_r3449_action(self):
        who = 'protagonist'
        prop_max_hp = 'max_health'
        prop_cur_hp = 'current_health'
        delta = 1
        note_id = '38199'

        maxHp_before = self.settings_manager.character_manager.get_property(who, prop_max_hp)
        self.settings_manager.character_manager.set_property(who, prop_cur_hp, maxHp_before - 5)
        self.assertEqual(self.settings_manager.get_ravel_eivene(), 0)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3449_action()

        maxHp_after = self.settings_manager.character_manager.get_property(who, prop_max_hp)
        curHp_after = self.settings_manager.character_manager.get_property(who, prop_cur_hp)
        self.assertEqual(maxHp_before + delta, maxHp_after)
        self.assertEqual(maxHp_after, curHp_after)
        self.assertEqual(self.settings_manager.get_ravel_eivene(), 1)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))


    def test_r3456_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 0)
        self.assertFalse(self.settings_manager.get_has_keyem())
        before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r3456_action()

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())
        after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(before + delta, after)


    def test_r3459_action(self):
        note_id = '61612'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3459_action
        )


    def test_r3469_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertFalse(self.settings_manager.get_eivene_delivery())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r3469_action()

        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r3470_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 0)
        self.assertFalse(self.settings_manager.get_has_keyem())
        before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r3470_action()

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())
        after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(before + delta, after)


    def test_r3494_action(self):
        note_id = '38203'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3494_action
        )


    def test_r3495_action(self):
        note_id = '38203'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3495_action
        )


    def test_r3496_action(self):
        note_id = '38203'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3496_action
        )


    def test_r3501_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 0)
        self.assertFalse(self.settings_manager.get_has_keyem())
        before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r3501_action()

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())
        after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(before + delta, after)


    def test_r63478_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertFalse(self.settings_manager.get_42_secret())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r63478_action()

        self.assertTrue(self.settings_manager.get_42_secret())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r3412_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3412_condition
        )


    def test_r3413_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3413_condition
        )


    def test_r3414_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3414_condition
        )


    def test_r3415_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3415_condition
        )


    def test_r3424_condition(self):
        self.settings_manager.set_has_embalm(False)
        self.settings_manager.set_has_needle(False)

        self.assertFalse(self.logic.r3424_condition())

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(self.logic.r3424_condition())


    def test_r3425_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3425_condition
        )


    def test_r3426_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3426_condition
        )


    def test_r3427_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3427_condition
        )


    def test_r3428_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3428_condition
        )


    def test_r3440_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3440_condition
        )


    def test_r3441_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3441_condition
        )


    def test_r3442_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3442_condition
        )


    def test_r3443_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3443_condition
        )


    def test_r3452_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3452_condition
        )


    def test_r3453_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3453_condition
        )


    def test_r3456_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(False)
        self.assertFalse(self.logic.r3456_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)
        self.assertTrue(self.logic.r3456_condition())


    def test_r3457_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(True)
        self.assertFalse(self.logic.r3457_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)
        self.assertTrue(self.logic.r3457_condition())


    def test_r3459_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r3459_condition
        )


    def test_r3463_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            self.logic.r3463_condition
        )


    def test_r4351_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            self.logic.r4351_condition
        )


    def test_r3469_condition(self):
        self.settings_manager.set_has_embalm(False)
        self.settings_manager.set_has_needle(False)
        self.assertFalse(self.logic.r3469_condition())

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)
        self.assertTrue(self.logic.r3469_condition())


    def test_r3470_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(False)
        self.assertFalse(self.logic.r3470_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)
        self.assertTrue(self.logic.r3470_condition())


    def test_r3497_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(True)
        self.assertFalse(self.logic.r3497_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)
        self.assertTrue(self.logic.r3497_condition())


    def test_r3494_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3494_condition
        )


    def test_r3495_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r3495_condition
        )


    def test_r3501_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(False)
        self.assertFalse(self.logic.r3501_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)
        self.assertTrue(self.logic.r3501_condition())


    def test_r3502_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(True)
        self.assertFalse(self.logic.r3502_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)
        self.assertTrue(self.logic.r3502_condition())


    def test_r4354_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            self.logic.r4354_condition
        )


    def test_r4355_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            self.logic.r4355_condition
        )


    def test_r63478_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r63478_condition
        )


    def test_r63479_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r63479_condition
        )


    def test_r63482_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            self.logic.r63482_condition
        )


    def test_r63481_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            self.logic.r63481_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
