import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.ds748_logic import Ds748Logic

class Ds748LogicTest(LogicTest):
    def test_initialization(self):
        logic = Ds748Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Ds748Logic
        self._methods_are_bound()


    def test_r35384_action(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35384_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35384_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35408_action(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35408_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35408_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35415_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_skeleton_examine(),
            lambda: logic.r35415_action()
        )


    def test_r35448_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35448_action()
        )


    def test_r35456_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35456_action()
        )


    def test_r35386_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35386_action()
        )


    def test_r35412_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35412_action()
        )


    def test_r35417_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35417_action()
        )


    def test_r35445_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35445_action()
        )


    def test_r35423_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35423_action()
        )


    def test_r35426_action(self):
        logic = Ds748Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35426_action()
        )


    def test_r35431_action(self):
        logic = Ds748Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_ds748())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35431_action()

        self.assertTrue(self.settings_manager.get_dead_ds748())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35434_action(self):
        logic = Ds748Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_ds748())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35434_action()

        self.assertTrue(self.settings_manager.get_dead_ds748())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35384_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35384_condition()
        )


    def test_r35407_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35407_condition()
        )


    def test_r35408_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35408_condition()
        )


    def test_r35409_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35409_condition()
        )


    def test_r35410_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35410_condition()
        )


    def test_r35448_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35448_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35448_condition())


    def test_r35449_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35449_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35449_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35449_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35449_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35449_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35449_condition())


    def test_r35450_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35450_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35450_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35450_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35450_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35450_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35450_condition())


    def test_r35451_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35451_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35451_condition())


    def test_r35452_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35452_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35452_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35452_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35452_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35452_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35452_condition())


    def test_r35453_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35453_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35453_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35453_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35453_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35453_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35453_condition())


    def test_r35454_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35454_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35454_condition())


    def test_r35455_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertFalse(logic.r35455_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertTrue(logic.r35455_condition())


    def test_r35456_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35456_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35456_condition())


    def test_r35457_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35457_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35457_condition())


    def test_r35458_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35458_condition()
        )


    def test_r35386_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35386_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35386_condition())


    def test_r35405_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35405_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35405_condition())


    def test_r35406_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35406_condition()
        )


    def test_r35412_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35412_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35412_condition())


    def test_r35413_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35413_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35413_condition())


    def test_r35414_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35414_condition()
        )


    def test_r35417_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35417_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35417_condition())


    def test_r35439_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35439_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35439_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35439_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35439_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35439_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35439_condition())


    def test_r35440_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35440_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35440_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35440_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35440_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35440_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35440_condition())


    def test_r35441_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35441_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35441_condition())


    def test_r35442_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35442_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35442_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35442_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35442_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35442_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35442_condition())


    def test_r35443_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35443_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35443_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35443_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35443_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35443_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35443_condition())


    def test_r35444_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35444_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35444_condition())


    def test_r35445_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35445_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35445_condition())


    def test_r35446_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35446_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35446_condition())


    def test_r35447_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35447_condition()
        )


    def test_r35423_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35423_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35423_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35423_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35423_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35423_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35423_condition())


    def test_r35424_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35424_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35424_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35424_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35424_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35424_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35424_condition())


    def test_r35425_condition(self):
        logic = Ds748Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35425_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35425_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35425_condition())

        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35425_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35425_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35425_condition())


    def test_r35426_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35426_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35426_condition())


    def test_r35427_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35427_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35427_condition())


    def test_r35428_condition(self):
        logic = Ds748Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35428_condition()
        )


if __name__ == '__main__':
    unittest.main()
