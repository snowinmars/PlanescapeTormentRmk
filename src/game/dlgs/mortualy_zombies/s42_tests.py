import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.s42_logic import S42Logic

class S42LogicTest(LogicTest):
    def test_initialization(self):
        logic = S42Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = S42Logic
        self._methods_are_bound()


    def test_s42_init(self):
        logic = S42Logic(self.settings_manager)
        id = 'mortuary_f3r8'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_s42())

        logic.s42_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_s42(), True)


    def test_r6613_action(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6613_action()
        )


    def test_r6614_action(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6614_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6614_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6617_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_skeleton_examine(),
            lambda: logic.r6617_action()
        )


    def test_r6618_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r6618_action()
        )


    def test_r6629_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r6629_action()
        )


    def test_r6632_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r6632_action()
        )


    def test_r6635_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r6635_action()
        )


    def test_r6640_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_dead_s42(),
            lambda: logic.r6640_action()
        )


    def test_r6642_action(self):
        logic = S42Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_s42())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r6642_action()

        self.assertTrue(self.settings_manager.get_dead_s42())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r6645_action(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6645_action()
        )


    def test_r6650_action(self):
        logic = S42Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_skeleton_examine(),
            lambda: logic.r6650_action()
        )


    def test_r6652_action(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r6652_action()
        )


    def test_r58984_action(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'gold'
        delta = 99

        self.assertFalse(self.settings_manager.get_has_gs_knife())
        self.assertFalse(self.settings_manager.get_has_rags())
        self.assertFalse(self.settings_manager.get_has_clotchrm())
        self.assertFalse(self.settings_manager.get_has_clotchrm())
        goldBefore = self.settings_manager.get_gold()

        logic.r58984_action()

        self.assertTrue(self.settings_manager.get_has_gs_knife())
        self.assertTrue(self.settings_manager.get_has_rags())
        self.assertTrue(self.settings_manager.get_has_clotchrm())
        self.assertTrue(self.settings_manager.get_has_clotchrm())
        goldAfter = self.settings_manager.get_gold()
        self.assertEqual(goldBefore + delta, goldAfter)

        logic.r58984_action()

        self.assertTrue(self.settings_manager.get_has_gs_knife())
        self.assertTrue(self.settings_manager.get_has_rags())
        self.assertTrue(self.settings_manager.get_has_clotchrm())
        self.assertTrue(self.settings_manager.get_has_clotchrm())
        goldAfterOnce = self.settings_manager.get_gold()
        self.assertEqual(goldAfter + delta, goldAfterOnce)


    def test_r6612_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r6612_condition()
        )


    def test_r6614_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r6614_condition()
        )


    def test_r6615_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r6615_condition()
        )


    def test_r6616_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r6616_condition()
        )


    def test_r6618_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r6618_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r6618_condition())


    def test_r6619_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertFalse(logic.r6619_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertTrue(logic.r6619_condition())


    def test_r6620_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.assertFalse(logic.r6620_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.assertTrue(logic.r6620_condition())


    def test_r6621_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertFalse(logic.r6621_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertTrue(logic.r6621_condition())


    def test_r6622_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r6622_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r6622_condition())


    def test_r6623_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r6623_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r6623_condition())


    def test_r6624_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r6624_condition()
        )


    def test_r6625_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r6625_condition()
        )


    def test_r6626_condition(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self.settings_manager.set_42_secret(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r6626_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r6626_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r6626_condition())

        self.settings_manager.set_42_secret(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r6626_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r6626_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r6626_condition())


    def test_r6629_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r6629_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r6629_condition())


    def test_r6630_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r6630_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r6630_condition())


    def test_r6631_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r6631_condition()
        )


    def test_r63495_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r63495_condition()
        )


    def test_r6632_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r6632_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r6632_condition())


    def test_r6633_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertFalse(logic.r6633_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertTrue(logic.r6633_condition())


    def test_r6634_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r6634_condition()
        )


    def test_r6635_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r6635_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r6635_condition())


    def test_r6636_condition(self):
        logic = S42Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r6636_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r6636_condition())


    def test_r6637_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r6637_condition()
        )


    def test_r6643_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r6643_condition()
        )


    def test_r6644_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r6644_condition()
        )


    def test_r6648_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r6648_condition()
        )


    def test_r6649_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r6649_condition()
        )


    def test_r6653_condition(self):
        logic = S42Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            lambda: logic.r6653_condition()
        )


    def test_r6654_condition(self):
        logic = S42Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self.settings_manager.set_42_secret(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r6654_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r6654_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r6654_condition())

        self.settings_manager.set_42_secret(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r6654_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r6654_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r6654_condition())


if __name__ == '__main__':
    unittest.main()
