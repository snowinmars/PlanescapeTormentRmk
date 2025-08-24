import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.s863_logic import S863Logic


class S863LogicTest(LogicTest):
    def setUp(self):
        super(S863LogicTest, self).setUp()
        self.logic = S863Logic(self.settings_manager)


    def test_r35538_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_skeleton_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35538_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35538_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())


    def test_r35562_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_skeleton_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35562_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35562_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())


    def test_r35569_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r35569_action
        )


    def test_r35602_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35602_action
        )


    def test_r35610_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35610_action
        )


    def test_r35540_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35540_action
        )


    def test_r35566_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35566_action
        )


    def test_r35571_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35571_action
        )


    def test_r35599_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35599_action
        )


    def test_r35577_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35577_action
        )


    def test_r35580_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35580_action
        )


    def test_r35585_action(self):
        self.settings_manager.set_dead_s863(False)
        self.settings_manager.set_has_spike(False)
        self.settings_manager.set_has_strap(False)

        self.assertFalse(self.settings_manager.get_dead_s863())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        self.logic.r35585_action()

        self.assertTrue(self.settings_manager.get_dead_s863())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())

        self.logic.r35585_action()

        self.assertTrue(self.settings_manager.get_dead_s863())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35588_action(self):
        self.settings_manager.set_dead_s863(False)
        self.settings_manager.set_has_spike(False)
        self.settings_manager.set_has_strap(False)

        self.assertFalse(self.settings_manager.get_dead_s863())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        self.logic.r35588_action()

        self.assertTrue(self.settings_manager.get_dead_s863())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())

        self.logic.r35588_action()

        self.assertTrue(self.settings_manager.get_dead_s863())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r64266_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_dremind,
            self.logic.r64266_action
        )


    def test_r35538_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35538_condition
        )


    def test_r35561_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35561_condition
        )


    def test_r35562_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35562_condition
        )


    def test_r35563_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35563_condition
        )


    def test_r35564_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35564_condition
        )


    def test_r35602_condition(self):
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35602_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35602_condition())


    def test_r35603_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35603_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35603_condition())


    def test_r35604_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35604_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35604_condition())


    def test_r35605_condition(self):
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35605_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35605_condition())


    def test_r35606_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35606_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35606_condition())


    def test_r35607_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35607_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35607_condition())


    def test_r35608_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35608_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35608_condition())


    def test_r35609_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35609_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35609_condition())


    def test_r35610_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35610_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35610_condition())


    def test_r35611_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35611_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35611_condition())


    def test_r35612_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35612_condition
        )


    def test_r35540_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35540_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35540_condition())


    def test_r35559_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35559_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35559_condition())


    def test_r35560_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35560_condition
        )


    def test_r35566_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35566_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35566_condition())


    def test_r35567_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35567_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35567_condition())


    def test_r35568_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35568_condition
        )


    def test_r35571_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35571_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35571_condition())


    def test_r35593_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35593_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35593_condition())


    def test_r35594_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35594_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35594_condition())


    def test_r35595_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35595_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35595_condition())


    def test_r35596_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35596_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35596_condition())


    def test_r35597_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35597_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35597_condition())


    def test_r35598_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35598_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35598_condition())


    def test_r35599_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35599_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35599_condition())


    def test_r35600_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35600_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35600_condition())


    def test_r35601_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35601_condition
        )


    def test_r35577_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35577_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35577_condition())


    def test_r35578_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35578_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35578_condition())


    def test_r35579_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35579_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35579_condition())


    def test_r35580_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35580_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35580_condition())


    def test_r35581_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35581_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35581_condition())


    def test_r35582_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35582_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
