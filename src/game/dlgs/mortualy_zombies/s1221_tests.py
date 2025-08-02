import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.s1221_logic import S1221Logic

class S1221LogicTest(LogicTest):
    def test_initialization(self):
        logic = S1221Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = S1221Logic
        self._methods_are_bound()


    def test_s1221_init(self):
        logic = S1221Logic(self.settings_manager)
        id = 'mortuary_f3r8'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_s1221())

        logic.s1221_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_s1221(), True)


    def test_r35307_action(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35307_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35307_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35331_action(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35331_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35331_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35338_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_skeleton_examine(),
            lambda: logic.r35338_action()
        )


    def test_r35371_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35371_action()
        )


    def test_r35379_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35379_action()
        )


    def test_r35309_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35309_action()
        )


    def test_r35335_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35335_action()
        )


    def test_r35340_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35340_action()
        )


    def test_r35368_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35368_action()
        )


    def test_r35346_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35346_action()
        )


    def test_r35349_action(self):
        logic = S1221Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35349_action()
        )


    def test_r35354_action(self):
        logic = S1221Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_s1221())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35354_action()

        self.assertTrue(self.settings_manager.get_dead_s1221())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35357_action(self):
        logic = S1221Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_s1221())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35357_action()

        self.assertTrue(self.settings_manager.get_dead_s1221())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35307_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35307_condition()
        )


    def test_r35330_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35330_condition()
        )


    def test_r35331_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35331_condition()
        )


    def test_r35332_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35332_condition()
        )


    def test_r35333_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35333_condition()
        )


    def test_r35371_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35371_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35371_condition())


    def test_r35372_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35372_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35372_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35372_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35372_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35372_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35372_condition())


    def test_r35373_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35373_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35373_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35373_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35373_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35373_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35373_condition())


    def test_r35374_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35374_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35374_condition())


    def test_r35375_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35375_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35375_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35375_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35375_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35375_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35375_condition())


    def test_r35376_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35376_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35376_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35376_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35376_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35376_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35376_condition())


    def test_r35377_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35377_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35377_condition())


    def test_r35378_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertFalse(logic.r35378_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertTrue(logic.r35378_condition())


    def test_r35379_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35379_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35379_condition())


    def test_r35380_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35380_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35380_condition())


    def test_r35381_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35381_condition()
        )


    def test_r35309_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35309_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35309_condition())


    def test_r35328_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35328_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35328_condition())


    def test_r35329_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35329_condition()
        )


    def test_r35335_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35335_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35335_condition())


    def test_r35336_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35336_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35336_condition())


    def test_r35337_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35337_condition()
        )


    def test_r35340_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35340_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35340_condition())


    def test_r35362_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35362_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35362_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35362_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35362_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35362_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35362_condition())


    def test_r35363_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35363_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35363_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35363_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35363_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35363_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35363_condition())


    def test_r35364_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35364_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35364_condition())


    def test_r35365_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35365_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35365_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35365_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35365_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35365_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35365_condition())


    def test_r35366_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35366_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35366_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35366_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35366_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35366_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35366_condition())


    def test_r35367_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35367_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35367_condition())


    def test_r35368_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35368_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35368_condition())


    def test_r35369_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35369_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35369_condition())


    def test_r35370_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35370_condition()
        )


    def test_r35346_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35346_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35346_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35346_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35346_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35346_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35346_condition())


    def test_r35347_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35347_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35347_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35347_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35347_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35347_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35347_condition())


    def test_r35348_condition(self):
        logic = S1221Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35348_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35348_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35348_condition())

        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35348_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35348_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35348_condition())


    def test_r35349_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35349_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35349_condition())


    def test_r35350_condition(self):
        logic = S1221Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35350_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35350_condition())


    def test_r35351_condition(self):
        logic = S1221Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35351_condition()
        )


if __name__ == '__main__':
    unittest.main()
