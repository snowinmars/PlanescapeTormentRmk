import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.ds863_logic import Ds863Logic

class Ds863LogicTest(LogicTest):
    def test_initialization(self):
        logic = Ds863Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Ds863Logic
        self._methods_are_bound()


    def test_r35538_action(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35538_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35538_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35562_action(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35562_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35562_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35569_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_skeleton_examine(),
            lambda: logic.r35569_action()
        )


    def test_r35602_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35602_action()
        )


    def test_r35610_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35610_action()
        )


    def test_r35540_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35540_action()
        )


    def test_r35566_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35566_action()
        )


    def test_r35571_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35571_action()
        )


    def test_r35599_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35599_action()
        )


    def test_r35577_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35577_action()
        )


    def test_r35580_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35580_action()
        )


    def test_r35585_action(self):
        logic = Ds863Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_ds863())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35585_action()

        self.assertTrue(self.settings_manager.get_dead_ds863())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35588_action(self):
        logic = Ds863Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_ds863())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35588_action()

        self.assertTrue(self.settings_manager.get_dead_ds863())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r64266_action(self):
        logic = Ds863Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_dremind(),
            lambda: logic.r64266_action()
        )


    def test_r35538_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35538_condition()
        )


    def test_r35561_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35561_condition()
        )


    def test_r35562_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35562_condition()
        )


    def test_r35563_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35563_condition()
        )


    def test_r35564_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35564_condition()
        )


    def test_r35602_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35602_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35602_condition())


    def test_r35603_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35603_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35603_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35603_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35603_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35603_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35603_condition())


    def test_r35604_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35604_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35604_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35604_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35604_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35604_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35604_condition())


    def test_r35605_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35605_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35605_condition())


    def test_r35606_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35606_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35606_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35606_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35606_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35606_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35606_condition())


    def test_r35607_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35607_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35607_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35607_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35607_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35607_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35607_condition())


    def test_r35608_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35608_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35608_condition())


    def test_r35609_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertFalse(logic.r35609_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertTrue(logic.r35609_condition())


    def test_r35610_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35610_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35610_condition())


    def test_r35611_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35611_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35611_condition())


    def test_r35612_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35612_condition()
        )


    def test_r35540_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35540_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35540_condition())


    def test_r35559_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35559_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35559_condition())


    def test_r35560_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35560_condition()
        )


    def test_r35566_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35566_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35566_condition())


    def test_r35567_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35567_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35567_condition())


    def test_r35568_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35568_condition()
        )


    def test_r35571_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35571_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35571_condition())


    def test_r35593_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35593_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35593_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35593_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35593_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35593_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35593_condition())


    def test_r35594_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35594_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35594_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35594_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35594_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35594_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35594_condition())


    def test_r35595_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35595_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35595_condition())


    def test_r35596_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35596_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35596_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35596_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35596_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35596_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35596_condition())


    def test_r35597_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35597_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35597_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35597_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35597_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35597_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35597_condition())


    def test_r35598_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35598_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35598_condition())


    def test_r35599_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35599_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35599_condition())


    def test_r35600_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35600_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35600_condition())


    def test_r35601_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35601_condition()
        )


    def test_r35577_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35577_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35577_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35577_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35577_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35577_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35577_condition())


    def test_r35578_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35578_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35578_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35578_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35578_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35578_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35578_condition())


    def test_r35579_condition(self):
        logic = Ds863Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35579_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35579_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35579_condition())

        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35579_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35579_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35579_condition())


    def test_r35580_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35580_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35580_condition())


    def test_r35581_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35581_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35581_condition())


    def test_r35582_condition(self):
        logic = Ds863Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35582_condition()
        )


if __name__ == '__main__':
    unittest.main()
