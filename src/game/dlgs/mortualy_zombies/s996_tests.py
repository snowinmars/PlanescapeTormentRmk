import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.s996_logic import S996Logic

class S996LogicTest(LogicTest):
    def test_initialization(self):
        logic = S996Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = S996Logic
        self._methods_are_bound()


    def test_s996_init(self):
        logic = S996Logic(self.settings_manager)
        id = 'mortuary_f3r6'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_s996())

        logic.s996_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_s996(), True)


    def test_r35461_action(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35461_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35461_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35485_action(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r35485_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r35485_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r35492_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_skeleton_examine(),
            lambda: logic.r35492_action()
        )


    def test_r35525_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35525_action()
        )


    def test_r35533_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35533_action()
        )


    def test_r35463_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35463_action()
        )


    def test_r35489_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35489_action()
        )


    def test_r35494_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip2(),
            lambda: logic.r35494_action()
        )


    def test_r35522_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35522_action()
        )


    def test_r35500_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35500_action()
        )


    def test_r35503_action(self):
        logic = S996Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_skel_mort_quip(),
            lambda: logic.r35503_action()
        )


    def test_r35508_action(self):
        logic = S996Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_s996())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35508_action()

        self.assertTrue(self.settings_manager.get_dead_s996())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35511_action(self):
        logic = S996Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_dead_s996())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        logic.r35511_action()

        self.assertTrue(self.settings_manager.get_dead_s996())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35461_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35461_condition()
        )


    def test_r35484_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35484_condition()
        )


    def test_r35485_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35485_condition()
        )


    def test_r35486_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            lambda: logic.r35486_condition()
        )


    def test_r35487_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r35487_condition()
        )


    def test_r35525_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35525_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35525_condition())


    def test_r35526_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35526_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35526_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35526_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35526_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35526_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35526_condition())


    def test_r35527_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35527_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35527_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35527_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35527_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35527_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35527_condition())


    def test_r35528_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35528_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35528_condition())


    def test_r35529_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35529_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35529_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35529_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35529_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35529_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35529_condition())


    def test_r35530_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35530_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35530_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35530_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35530_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35530_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35530_condition())


    def test_r35531_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35531_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35531_condition())


    def test_r35532_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertFalse(logic.r35532_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertTrue(logic.r35532_condition())


    def test_r35533_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35533_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35533_condition())


    def test_r35534_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35534_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35534_condition())


    def test_r35535_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35535_condition()
        )


    def test_r35463_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35463_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35463_condition())


    def test_r35482_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35482_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35482_condition())


    def test_r35483_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35483_condition()
        )


    def test_r35489_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35489_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35489_condition())


    def test_r35490_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35490_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35490_condition())


    def test_r35491_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35491_condition()
        )


    def test_r35494_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(logic.r35494_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(logic.r35494_condition())


    def test_r35516_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35516_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35516_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35516_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35516_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35516_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35516_condition())


    def test_r35517_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35517_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35517_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35517_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35517_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35517_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35517_condition())


    def test_r35518_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35518_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35518_condition())


    def test_r35519_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35519_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35519_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35519_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertTrue(logic.r35519_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35519_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35519_condition())


    def test_r35520_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35520_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35520_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35520_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35520_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35520_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35520_condition())


    def test_r35521_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(logic.r35521_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(logic.r35521_condition())


    def test_r35522_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35522_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35522_condition())


    def test_r35523_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35523_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35523_condition())


    def test_r35524_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35524_condition()
        )


    def test_r35500_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35500_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35500_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35500_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35500_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35500_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35500_condition())


    def test_r35501_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35501_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35501_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35501_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35501_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35501_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35501_condition())


    def test_r35502_condition(self):
        logic = S996Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35502_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35502_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r35502_condition())

        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r35502_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r35502_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r35502_condition())


    def test_r35503_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35503_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35503_condition())


    def test_r35504_condition(self):
        logic = S996Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(logic.r35504_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(logic.r35504_condition())


    def test_r35505_condition(self):
        logic = S996Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            lambda: logic.r35505_condition()
        )


if __name__ == '__main__':
    unittest.main()
