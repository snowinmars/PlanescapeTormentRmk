import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.dmorte_logic import DmorteLogic

class DmorteLogicTest(LogicTest):
    def test_initialization(self):
        logic = DmorteLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = DmorteLogic
        self._methods_are_bound()


    def test_r3871_action(self):
        logic = DmorteLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_warning(), 0)
        logic.r3871_action()
        self.assertEqual(self.settings_manager.get_warning(), 1)


    def test_r3874_action(self):
        logic = DmorteLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_warning(), 0)
        logic.r3874_action()
        self.assertEqual(self.settings_manager.get_warning(), 2)


    def test_r3877_action(self):
        logic = DmorteLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_warning(), 0)
        logic.r3877_action()
        self.assertEqual(self.settings_manager.get_warning(), 2)


    def test_r4339_action(self):
        logic = DmorteLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_warning(), 0)
        logic.r4339_action()
        self.assertEqual(self.settings_manager.get_warning(), 1)


    def test_r4342_action(self):
        logic = DmorteLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_warning(), 0)
        logic.r4342_action()
        self.assertEqual(self.settings_manager.get_warning(), 2)


    def test_r4345_action(self):
        logic = DmorteLogic(self.settings_manager)

        self.assertEqual(self.settings_manager.get_warning(), 0)
        logic.r4345_action()
        self.assertEqual(self.settings_manager.get_warning(), 2)


    def test_r34991_action(self):
        logic = DmorteLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_quip(),
            lambda: logic.r34991_action()
        )


    def test_r35001_action(self):
        logic = DmorteLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_quip(),
            lambda: logic.r35001_action()
        )


    def test_r34993_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r34993_action()
        )


    def test_r45093_action(self):
        logic = DmorteLogic(self.settings_manager)
        id = '39477'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r45093_action()
        )


    def test_r45103_action(self):
        logic = DmorteLogic(self.settings_manager)
        id = '39477'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r45103_action()
        )


    def test_r4676_action(self):
        logic = DmorteLogic(self.settings_manager)
        id = '64512'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4676_action()
        )


    def test_r3483_action(self):
        logic = DmorteLogic(self.settings_manager)
        id = '38205'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3483_action()
        )


    def test_r4678_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -3

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4678_action()
        )


    def test_r4679_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4679_action()
        )


    def test_r4682_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = 3

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4682_action()
        )


    def test_r4687_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        deltaLaw = 1
        deltaGood = 1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r4687_action()
        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + deltaLaw, lawAfter)
        self.assertEqual(goodBefore + deltaGood, goodAfter)

        logic.r4687_action()
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r4693_action(self):
        logic = DmorteLogic(self.settings_manager)
        id = '64512'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4693_action()
        )


    def test_r4695_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -3

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4695_action()
        )


    def test_r4699_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = 3

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4699_action()
        )


    def test_r35396_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35396_action()
        )


    def test_r35435_action(self):
        logic = DmorteLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35435_action()
        )


    def test_r64535_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        propExp = 'experience'
        propLooks = 'looks_like'
        delta = 500
        targetLooks = 'zombie'

        expBefore = self.settings_manager.gcm.get_character_property(who, propExp)
        looksBefore = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertNotEqual(looksBefore, targetLooks)

        logic.r64535_action()

        expAfter = self.settings_manager.gcm.get_character_property(who, propExp)
        looksAfter = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertEqual(looksAfter, targetLooks)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r64534_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'looks_like'
        delta = 500
        targetLooks = 'zombie'

        looksBefore = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertNotEqual(looksBefore, targetLooks)

        logic.r64534_action()

        looksAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(looksAfter, targetLooks)


    def test_r3474_action(self):
        logic = DmorteLogic(self.settings_manager)
        id = '38205'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r3474_action()
        )


    def test_r6658_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6658_action()
        )


    def test_r6659_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6659_action()
        )


    def test_r35319_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35319_action()
        )


    def test_r35342_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35342_action()
        )


    def test_r35360_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35360_action()
        )


    def test_r35473_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35473_action()
        )


    def test_r35496_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35496_action()
        )


    def test_r35514_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35514_action()
        )


    def test_r6664_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r6664_condition()
        )


    def test_r35512_action(self):
        logic = DmorteLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35512_action()
        )


    def test_r35550_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35550_action()
        )


    def test_r35573_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35573_action()
        )


    def test_r35591_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35591_action()
        )


    def test_r35589_action(self):
        logic = DmorteLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35589_action()
        )


    def test_r35358_action(self):
        logic = DmorteLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35358_action()
        )


    def test_r35419_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35419_action()
        )


    def test_r35437_action(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r35437_action()
        )


    def test_r6665_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        targetValue = 12

        self.settings_manager.set_42_secret(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r6665_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r6665_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r6665_condition())

        self.settings_manager.set_42_secret(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r6665_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r6665_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertTrue(logic.r6665_condition())


    def test_r35344_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 13

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35344_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35344_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35344_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertTrue(logic.r35344_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35344_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35344_condition())


    def test_r35352_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 12

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35352_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35352_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35352_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35352_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35352_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertTrue(logic.r35352_condition())


    def test_r35355_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            lambda: logic.r35355_condition()
        )


    def test_r35358_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35358_condition()
        )


    def test_r35359_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35359_condition()
        )


    def test_r35421_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 13

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35421_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35421_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35421_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertTrue(logic.r35421_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35421_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35421_condition())


    def test_r35429_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 12

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35429_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35429_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35429_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35429_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35429_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertTrue(logic.r35429_condition())


    def test_r35432_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            lambda: logic.r35432_condition()
        )


    def test_r35435_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35435_condition()
        )


    def test_r35436_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35436_condition()
        )


    def test_r35498_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 13

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35498_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35498_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35498_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertTrue(logic.r35498_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35498_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35498_condition())


    def test_r35506_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 12

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35506_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35506_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35506_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35506_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35506_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertTrue(logic.r35506_condition())


    def test_r35509_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            lambda: logic.r35509_condition()
        )


    def test_r35512_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35512_condition()
        )


    def test_r35513_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35513_condition()
        )


    def test_r35575_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 13

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35575_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35575_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35575_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertTrue(logic.r35575_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35575_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35575_condition())


    def test_r35583_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        targetValue = 12

        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35583_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35583_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertFalse(logic.r35583_condition())

        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, targetValue - 1)
        self.assertFalse(logic.r35583_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue)
        self.assertFalse(logic.r35583_condition())

        self.settings_manager.gcm.set_property(who, prop, targetValue + 1)
        self.assertTrue(logic.r35583_condition())


    def test_r35586_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            lambda: logic.r35586_condition()
        )


    def test_r35589_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35589_condition()
        )


    def test_r35590_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35590_condition()
        )


    def test_r4686_condition(self):
        logic = DmorteLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 13

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4686_condition()
        )


    def test_r64535_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_vaxis_global_xp(x),
            lambda: logic.r64535_condition()
        )


    def test_r64534_condition(self):
        logic = DmorteLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_global_xp(x),
            lambda: logic.r64534_condition()
        )


if __name__ == '__main__':
    unittest.main()
