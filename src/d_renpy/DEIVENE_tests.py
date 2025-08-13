import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.eivene_logic import EiveneLogic


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
        location = 'LOCATION'
        delta_talked_to_eivene_times = 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_eivene_times(), 0)

        self.logic.eivene_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_eivene_times(), delta_talked_to_eivene_times)

        self.logic.eivene_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_eivene_times(), 2 * delta_talked_to_eivene_times)


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
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        note_id = '37701'

        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertFalse(self.settings_manager.get_eivene_delivery())
        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3424_action()

        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3424_action()

        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))


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
        who_max_health = 'protagonist'
        prop_max_health = 'max_health'
        delta_max_health = 1
        who = 'protagonist'
        prop_max_health = 'max_health'
        prop_current_health = 'current_health'
        delta_max_health = 1
        note_id = '38199'

        max_health_before = self.settings_manager.character_manager.get_property(who_max_health, prop_max_health)
        max_health_before = self.settings_manager.character_manager.get_property(who, prop_max_health)
        self.settings_manager.character_manager.set_property(who, prop_current_health, max_health_before / 2)
        current_health_before = self.settings_manager.character_manager.get_property(who, prop_current_health)
        self.assertNotEqual(max_health_before, current_health_before)
        self.assertEqual(self.settings_manager.get_ravel_eivene(), 0)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3449_action()

        max_health_after = self.settings_manager.character_manager.get_property(who_max_health, prop_max_health)
        self.assertEqual(max_health_before + delta_max_health, max_health_after)
        max_health_after = self.settings_manager.character_manager.get_property(who, prop_max_health)
        current_health_after = self.settings_manager.character_manager.get_property(who, prop_current_health)
        self.assertEqual(max_health_before + delta_max_health, max_health_after)
        self.assertEqual(max_health_after, current_health_after)
        self.assertEqual(self.settings_manager.get_ravel_eivene(), 1)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3449_action()

        max_health_after_once = self.settings_manager.character_manager.get_property(who_max_health, prop_max_health)
        self.assertEqual(max_health_after + delta_max_health, max_health_after_once)
        max_health_after_once = self.settings_manager.character_manager.get_property(who, prop_max_health)
        current_health_after_once = self.settings_manager.character_manager.get_property(who, prop_current_health)
        self.assertEqual(max_health_after + delta_max_health, max_health_after_once)
        self.assertEqual(max_health_after_once, current_health_after_once)
        self.assertEqual(self.settings_manager.get_ravel_eivene(), 1)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))


    def test_r3456_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 1)
        self.assertFalse(self.settings_manager.get_has_keyem())

        self.logic.r3456_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())

        self.logic.r3456_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())


    def test_r3459_action(self):
        note_id = '61612'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3459_action
        )


    def test_r3469_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        note_id = '38202'

        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertFalse(self.settings_manager.get_eivene_delivery())
        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3469_action()

        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))

        self.logic.r3469_action()

        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))


    def test_r3470_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 1)
        self.assertFalse(self.settings_manager.get_has_keyem())

        self.logic.r3470_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())

        self.logic.r3470_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())


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
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 1)
        self.assertFalse(self.settings_manager.get_has_keyem())

        self.logic.r3501_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())

        self.logic.r3501_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 2)
        self.assertTrue(self.settings_manager.get_has_keyem())


    def test_r63478_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.settings_manager.get_42_secret())

        self.logic.r63478_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.settings_manager.get_42_secret())

        self.logic.r63478_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.settings_manager.get_42_secret())


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
