import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.s748_logic import (S748LogicGenerated, S748Logic)


class S748LogicTest(LogicTest):
    def setUp(self):
        super(S748LogicTest, self).setUp()
        self.logic = S748Logic(self.state_manager)


class S748LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(S748LogicGeneratedTest, self).setUp()
        self.logic = S748LogicGenerated(self.state_manager)


    def test_r35384_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_skeleton_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_skeleton_chaotic())

        self.logic.r35384_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_skeleton_chaotic())

        self.logic.r35384_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_skeleton_chaotic())


    def test_r35408_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.set_skeleton_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.get_skeleton_chaotic())

        self.logic.r35408_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.get_skeleton_chaotic())

        self.logic.r35408_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.get_skeleton_chaotic())


    def test_r35415_action(self):
        self._false_then_true_action(
            self.state_manager.get_skeleton_examine,
            self.logic.r35415_action
        )


    def test_r35448_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip2,
            self.logic.r35448_action
        )


    def test_r35456_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip,
            self.logic.r35456_action
        )


    def test_r35386_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip,
            self.logic.r35386_action
        )


    def test_r35412_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip,
            self.logic.r35412_action
        )


    def test_r35417_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip2,
            self.logic.r35417_action
        )


    def test_r35445_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip,
            self.logic.r35445_action
        )


    def test_r35423_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip,
            self.logic.r35423_action
        )


    def test_r35426_action(self):
        self._false_then_true_action(
            self.state_manager.get_morte_skel_mort_quip,
            self.logic.r35426_action
        )


    def test_r35431_action(self):
        self.state_manager.set_dead_s748(False)
        self.state_manager.set_has_spike(False)
        self.state_manager.set_has_strap(False)

        self.assertFalse(self.state_manager.get_dead_s748())
        self.assertFalse(self.state_manager.get_has_spike())
        self.assertFalse(self.state_manager.get_has_strap())

        self.logic.r35431_action()

        self.assertTrue(self.state_manager.get_dead_s748())
        self.assertTrue(self.state_manager.get_has_spike())
        self.assertTrue(self.state_manager.get_has_strap())

        self.logic.r35431_action()

        self.assertTrue(self.state_manager.get_dead_s748())
        self.assertTrue(self.state_manager.get_has_spike())
        self.assertTrue(self.state_manager.get_has_strap())


    def test_r35434_action(self):
        self.state_manager.set_dead_s748(False)
        self.state_manager.set_has_spike(False)
        self.state_manager.set_has_strap(False)

        self.assertFalse(self.state_manager.get_dead_s748())
        self.assertFalse(self.state_manager.get_has_spike())
        self.assertFalse(self.state_manager.get_has_strap())

        self.logic.r35434_action()

        self.assertTrue(self.state_manager.get_dead_s748())
        self.assertTrue(self.state_manager.get_has_spike())
        self.assertTrue(self.state_manager.get_has_strap())

        self.logic.r35434_action()

        self.assertTrue(self.state_manager.get_dead_s748())
        self.assertTrue(self.state_manager.get_has_spike())
        self.assertTrue(self.state_manager.get_has_strap())


    def test_r35384_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_skeleton_chaotic(x),
            self.logic.r35384_condition
        )


    def test_r35407_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_skeleton_chaotic(x),
            self.logic.r35407_condition
        )


    def test_r35408_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_skeleton_chaotic(x),
            self.logic.r35408_condition
        )


    def test_r35409_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_skeleton_chaotic(x),
            self.logic.r35409_condition
        )


    def test_r35410_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r35410_condition
        )


    def test_r35448_condition(self):
        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35448_condition())

        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35448_condition())


    def test_r35449_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35449_condition())

        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35449_condition())


    def test_r35450_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35450_condition())

        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35450_condition())


    def test_r35451_condition(self):
        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35451_condition())

        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35451_condition())


    def test_r35452_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35452_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35452_condition())


    def test_r35453_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35453_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35453_condition())


    def test_r35454_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_skeleton_examine(False)
        self.state_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35454_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_skeleton_examine(True)
        self.state_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35454_condition())


    def test_r35455_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35455_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35455_condition())


    def test_r35456_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35456_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35456_condition())


    def test_r35457_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35457_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35457_condition())


    def test_r35458_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_skel_mort_quip(x),
            self.logic.r35458_condition
        )


    def test_r35386_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35386_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35386_condition())


    def test_r35405_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35405_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35405_condition())


    def test_r35406_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_skel_mort_quip(x),
            self.logic.r35406_condition
        )


    def test_r35412_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35412_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35412_condition())


    def test_r35413_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35413_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35413_condition())


    def test_r35414_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_skel_mort_quip(x),
            self.logic.r35414_condition
        )


    def test_r35417_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35417_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35417_condition())


    def test_r35439_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35439_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35439_condition())


    def test_r35440_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35440_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35440_condition())


    def test_r35441_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35441_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35441_condition())


    def test_r35442_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35442_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35442_condition())


    def test_r35443_condition(self):
        who_strength = 'protagonist'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_has_prybar(True)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35443_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_has_prybar(False)
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35443_condition())


    def test_r35444_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_has_prybar(False)

        self.assertFalse(self.logic.r35444_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_has_prybar(True)

        self.assertTrue(self.logic.r35444_condition())


    def test_r35445_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35445_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35445_condition())


    def test_r35446_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35446_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35446_condition())


    def test_r35447_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_skel_mort_quip(x),
            self.logic.r35447_condition
        )


    def test_r35423_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35423_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35423_condition())


    def test_r35424_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35424_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35424_condition())


    def test_r35425_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35425_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35425_condition())


    def test_r35426_condition(self):
        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35426_condition())

        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35426_condition())


    def test_r35427_condition(self):
        self.state_manager.set_in_party_morte(True)
        self.state_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35427_condition())

        self.state_manager.set_in_party_morte(False)
        self.state_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35427_condition())


    def test_r35428_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_morte_skel_mort_quip(x),
            self.logic.r35428_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
