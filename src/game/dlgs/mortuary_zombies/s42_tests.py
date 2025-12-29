import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.s42_logic import (S42LogicGenerated, S42Logic)


class S42LogicTest(LogicTest):
    def setUp(self):
        super(S42LogicTest, self).setUp()
        self.logic = S42Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_s42_times,
            1,
            self.logic.talk
        )


class S42LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(S42LogicGeneratedTest, self).setUp()
        self.logic = S42LogicGenerated(self.state_manager)


    def test_r6613_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6613_action
        )


    def test_r6614_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_skeleton_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_skeleton_chaotic())

        self.logic.r6614_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_skeleton_chaotic())

        self.logic.r6614_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_skeleton_chaotic())


    def test_r6617_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_skeleton_examine,
            self.logic.r6617_action
        )


    def test_r6618_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip2,
            self.logic.r6618_action
        )


    def test_r6629_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r6629_action
        )


    def test_r6632_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip2,
            self.logic.r6632_action
        )


    def test_r6635_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r6635_action
        )


    def test_r6640_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_dead_s42,
            self.logic.r6640_action
        )


    def test_r6642_action(self):
        self.state_manager.world_manager.set_dead_s42(False)
        self.state_manager.world_manager.set_has_spike(False)
        self.state_manager.world_manager.set_has_strap(False)

        self.assertFalse(self.state_manager.world_manager.get_dead_s42())
        self.assertFalse(self.state_manager.world_manager.get_has_spike())
        self.assertFalse(self.state_manager.world_manager.get_has_strap())

        self.logic.r6642_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_s42())
        self.assertTrue(self.state_manager.world_manager.get_has_spike())
        self.assertTrue(self.state_manager.world_manager.get_has_strap())

        self.logic.r6642_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_s42())
        self.assertTrue(self.state_manager.world_manager.get_has_spike())
        self.assertTrue(self.state_manager.world_manager.get_has_strap())


    def test_r6645_action(self):
        who = 'protagonist_character_name'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6645_action
        )


    def test_r6650_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_skeleton_examine,
            self.logic.r6650_action
        )


    def test_r6652_action(self):
        who = 'protagonist_character_name'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6652_action
        )


    def test_r58984_action(self):
        self.state_manager.world_manager.set_has_gs_knife(False)
        self.state_manager.world_manager.set_has_rags(False)
        self.state_manager.world_manager.set_has_clotchrm(False)
        self.state_manager.world_manager.set_has_clotchrm(False)
        gold_before = 0
        gold_after = 99
        gold_after_once = 2 * 99
        self.state_manager.world_manager.set_gold(gold_before)

        self.assertFalse(self.state_manager.world_manager.get_has_gs_knife())
        self.assertFalse(self.state_manager.world_manager.get_has_rags())
        self.assertFalse(self.state_manager.world_manager.get_has_clotchrm())
        self.assertFalse(self.state_manager.world_manager.get_has_clotchrm())
        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_before)

        self.logic.r58984_action()

        self.assertTrue(self.state_manager.world_manager.get_has_gs_knife())
        self.assertTrue(self.state_manager.world_manager.get_has_rags())
        self.assertTrue(self.state_manager.world_manager.get_has_clotchrm())
        self.assertTrue(self.state_manager.world_manager.get_has_clotchrm())
        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_after)

        self.logic.r58984_action()

        self.assertTrue(self.state_manager.world_manager.get_has_gs_knife())
        self.assertTrue(self.state_manager.world_manager.get_has_rags())
        self.assertTrue(self.state_manager.world_manager.get_has_clotchrm())
        self.assertTrue(self.state_manager.world_manager.get_has_clotchrm())
        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_after_once)


    def test_r6612_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r6612_condition
        )


    def test_r6614_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_skeleton_chaotic(x),
            self.logic.r6614_condition
        )


    def test_r6615_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_skeleton_chaotic(x),
            self.logic.r6615_condition
        )


    def test_r6616_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6616_condition
        )


    def test_r6618_condition(self):
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r6618_condition())

        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r6618_condition())


    def test_r6619_condition(self):
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)

        self.assertFalse(self.logic.r6619_condition())

        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)

        self.assertTrue(self.logic.r6619_condition())


    def test_r6620_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_skeleton_examine(False)

        self.assertFalse(self.logic.r6620_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_skeleton_examine(True)

        self.assertTrue(self.logic.r6620_condition())


    def test_r6621_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r6621_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r6621_condition())


    def test_r6622_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r6622_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r6622_condition())


    def test_r6623_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r6623_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r6623_condition())


    def test_r6624_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r6624_condition
        )


    def test_r6625_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r6625_condition
        )


    def test_r6626_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)
        self.state_manager.world_manager.set_42_secret(True)

        self.assertFalse(self.logic.r6626_condition())

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)
        self.state_manager.world_manager.set_42_secret(False)

        self.assertTrue(self.logic.r6626_condition())


    def test_r6629_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r6629_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r6629_condition())


    def test_r6630_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r6630_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r6630_condition())


    def test_r6631_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r6631_condition
        )


    def test_r63495_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r63495_condition
        )


    def test_r6632_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r6632_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r6632_condition())


    def test_r6633_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)

        self.assertFalse(self.logic.r6633_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)

        self.assertTrue(self.logic.r6633_condition())


    def test_r6634_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r6634_condition
        )


    def test_r6635_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r6635_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r6635_condition())


    def test_r6636_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r6636_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r6636_condition())


    def test_r6637_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r6637_condition
        )


    def test_r6643_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r6643_condition
        )


    def test_r6644_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r6644_condition
        )


    def test_r6648_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r6648_condition
        )


    def test_r6649_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r6649_condition
        )


    def test_r6653_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r6653_condition
        )


    def test_r6654_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)
        self.state_manager.world_manager.set_42_secret(True)

        self.assertFalse(self.logic.r6654_condition())

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)
        self.state_manager.world_manager.set_42_secret(False)

        self.assertTrue(self.logic.r6654_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
