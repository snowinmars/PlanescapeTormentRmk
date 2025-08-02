import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.deivene_logic import DeiveneLogic

class DeiveneLogicTest(LogicTest):
    def test_initialization(self):
        logic = DeiveneLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = DeiveneLogic
        self._methods_are_bound()


    def test_eivene_init(self):
        logic = DeiveneLogic(self.settings_manager)
        id = 'mortuary_f2r5'

        self._step_into_location_action(
            id,
            lambda: logic.eivene_init()
        )


    def test_kill_eivene(self):
        logic = DeiveneLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_dead_eivene(),
            lambda: logic.kill_eivene()
        )


    def test_meet_eivene(self):
        logic = DeiveneLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_eivene(),
            lambda: logic.meet_eivene()
        )


    def test_r3424_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertFalse(self.settings_manager.get_eivene_delivery())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r3424_action()

        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        self.assertEqual(expBefore + delta, expAfter)


    def test_r3425_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '37702'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3425_action()
        )


    def test_r3426_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '37702'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3426_action()
        )


    def test_r3427_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '37702'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3427_action()
        )


    def test_r3428_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '37702'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3428_action()
        )


    def test_r3429_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '37702'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3429_action()
        )


    def test_r3491_action(self):
        logic = DeiveneLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r3491_action()
        )


    def test_r3449_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        propMaxHp = 'maxHealth'
        propCurHp = 'current_health'
        delta = 1
        id = '38199'

        maxHpBefore = self.settings_manager.gcm.get_character_property(who, propMaxHp)
        self.settings_manager.gcm.set_property(who, propCurHp, maxHpBefore - 5)
        self.assertFalse(self.settings_manager.get_ravel_eivene())
        self.assertFalse(self.settings_manager.has_journal_note(id))

        logic.r3449_action()

        maxHpAfter = self.settings_manager.gcm.get_character_property(who, propMaxHp)
        curHpAfter = self.settings_manager.gcm.get_character_property(who, propCurHp)
        self.assertEqual(maxHpBefore + delta, maxHpAfter)
        self.assertEqual(maxHpAfter, curHpAfter)
        self.assertTrue(self.settings_manager.get_ravel_eivene())
        self.assertTrue(self.settings_manager.has_journal_note(id))


    def test_r3456_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r3456_action()
        )


    def test_r3456_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '61612'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3459_action()
        )


    def test_r3469_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertFalse(self.settings_manager.get_eivene_delivery())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r3469_action()

        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        self.assertTrue(self.settings_manager.get_eivene_delivery())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r3470_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r3470_action()
        )


    def test_r3494_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '38203'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3494_action()
        )


    def test_r3495_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '38203'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3495_action()
        )


    def test_r3496_action(self):
        logic = DeiveneLogic(self.settings_manager)
        id = '38203'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3496_action()
        )


    def test_r3501_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r3501_action()
        )


    def test_r63478_action(self):
        logic = DeiveneLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertFalse(self.settings_manager.get_42_secret())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r63478_action()

        self.assertTrue(self.settings_manager.get_42_secret())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r3412_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3412_condition()
        )


    def test_r3413_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3413_condition()
        )


    def test_r3414_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3414_condition()
        )


    def test_r3415_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3415_condition()
        )


    def test_r3424_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.settings_manager.set_has_embalm(False)
        self.settings_manager.set_has_needle(True)

        self.assertFalse(logic.r3424_condition())

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(logic.r3424_condition())


    def test_r3425_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3425_condition()
        )


    def test_r3426_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3426_condition()
        )


    def test_r3427_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3427_condition()
        )


    def test_r3428_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3428_condition()
        )


    def test_r3440_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3440_condition()
        )


    def test_r3441_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3441_condition()
        )


    def test_r3442_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3442_condition()
        )


    def test_r3443_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3443_condition()
        )


    def test_r3452_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3452_condition()
        )


    def test_r3453_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3453_condition()
        )


    def test_r3456_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3456_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)

        self.assertTrue(logic.r3456_condition())


    def test_r3457_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3457_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)

        self.assertTrue(logic.r3457_condition())


    def test_r3459_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r3459_condition()
        )


    def test_r3463_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            lambda: logic.r3463_condition()
        )


    def test_r4351_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            lambda: logic.r4351_condition()
        )


    def test_r3469_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3469_condition())

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)

        self.assertTrue(logic.r3469_condition())


    def test_r3470_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3470_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)

        self.assertTrue(logic.r3470_condition())


    def test_r3497_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3497_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)

        self.assertTrue(logic.r3497_condition())


    def test_r3494_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3494_condition()
        )


    def test_r3495_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r3495_condition()
        )


    def test_r3501_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3501_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)

        self.assertTrue(logic.r3501_condition())


    def test_r3502_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self.assertFalse(logic.r3502_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)

        self.assertTrue(logic.r3502_condition())


    def test_r4354_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            lambda: logic.r4354_condition()
        )


    def test_r4355_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            lambda: logic.r4355_condition()
        )


    def test_r63478_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r63478_condition()
        )


    def test_r63479_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r63479_condition()
        )


    def test_r63482_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            lambda: logic.r63482_condition()
        )


    def test_r63481_condition(self):
        logic = DeiveneLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_eivene_delivery(x),
            lambda: logic.r63481_condition()
        )


if __name__ == '__main__':
    unittest.main()
