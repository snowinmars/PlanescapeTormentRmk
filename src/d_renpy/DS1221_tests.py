import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.s1221_logic import S1221Logic


class S1221LogicTest(LogicTest):
    def setUp(self):
        super(S1221LogicTest, self).setUp()
        self.logic = S1221Logic(self.settings_manager)


    def test_r35307_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_skeleton_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35307_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35307_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())


    def test_r35331_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_skeleton_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35331_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())

        self.logic.r35331_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_skeleton_chaotic())


    def test_r35338_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r35338_action
        )


    def test_r35371_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35371_action
        )


    def test_r35379_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35379_action
        )


    def test_r35309_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35309_action
        )


    def test_r35335_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35335_action
        )


    def test_r35340_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35340_action
        )


    def test_r35368_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35368_action
        )


    def test_r35346_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35346_action
        )


    def test_r35349_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35349_action
        )


    def test_r35354_action(self):
        self.settings_manager.set_dead_s1221(False)
        self.settings_manager.set_has_spike(False)
        self.settings_manager.set_has_strap(False)

        self.assertFalse(self.settings_manager.get_dead_s1221())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        self.logic.r35354_action()

        self.assertTrue(self.settings_manager.get_dead_s1221())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())

        self.logic.r35354_action()

        self.assertTrue(self.settings_manager.get_dead_s1221())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35357_action(self):
        self.settings_manager.set_dead_s1221(False)
        self.settings_manager.set_has_spike(False)
        self.settings_manager.set_has_strap(False)

        self.assertFalse(self.settings_manager.get_dead_s1221())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        self.logic.r35357_action()

        self.assertTrue(self.settings_manager.get_dead_s1221())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())

        self.logic.r35357_action()

        self.assertTrue(self.settings_manager.get_dead_s1221())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35307_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35307_condition
        )


    def test_r35330_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35330_condition
        )


    def test_r35331_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35331_condition
        )


    def test_r35332_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35332_condition
        )


    def test_r35333_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35333_condition
        )


    def test_r35371_condition(self):
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35371_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35371_condition())


    def test_r35372_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35372_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35372_condition())


    def test_r35373_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35373_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35373_condition())


    def test_r35374_condition(self):
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35374_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35374_condition())


    def test_r35375_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35375_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35375_condition())


    def test_r35376_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35376_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35376_condition())


    def test_r35377_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35377_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35377_condition())


    def test_r35378_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35378_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35378_condition())


    def test_r35379_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35379_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35379_condition())


    def test_r35380_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35380_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35380_condition())


    def test_r35381_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35381_condition
        )


    def test_r35309_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35309_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35309_condition())


    def test_r35328_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35328_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35328_condition())


    def test_r35329_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35329_condition
        )


    def test_r35335_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35335_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35335_condition())


    def test_r35336_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35336_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35336_condition())


    def test_r35337_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35337_condition
        )


    def test_r35340_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35340_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35340_condition())


    def test_r35362_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35362_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35362_condition())


    def test_r35363_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35363_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35363_condition())


    def test_r35364_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35364_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35364_condition())


    def test_r35365_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35365_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35365_condition())


    def test_r35366_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35366_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)
        self.settings_manager.character_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35366_condition())


    def test_r35367_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35367_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35367_condition())


    def test_r35368_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35368_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35368_condition())


    def test_r35369_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35369_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35369_condition())


    def test_r35370_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35370_condition
        )


    def test_r35346_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35346_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35346_condition())


    def test_r35347_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35347_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35347_condition())


    def test_r35348_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35348_condition())

        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35348_condition())


    def test_r35349_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35349_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35349_condition())


    def test_r35350_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35350_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35350_condition())


    def test_r35351_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35351_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
