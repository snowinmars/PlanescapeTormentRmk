import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.s996_logic import S996Logic


class S996LogicTest(LogicTest):
    def setUp(self):
        super(S996LogicTest, self).setUp()
        self.logic = S996Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = S996Logic
        self._methods_are_bound()


    def test_s996_init(self):
        self._init_with_location(
            'mortuary_f3r3',
            self.logic.s996_init,
            self.settings_manager.get_talked_to_s996_times
        )


    def test_kill_s996(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_s996,
            self.logic.kill_s996
        )


    def test_r35461_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r35461_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r35461_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r35485_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_skeleton_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r35485_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r35485_action()

        self.assertTrue(self.settings_manager.get_skeleton_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r35492_action(self):
        self._false_then_true_action(
            self.settings_manager.get_skeleton_examine,
            self.logic.r35492_action
        )


    def test_r35525_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35525_action
        )


    def test_r35533_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35533_action
        )


    def test_r35463_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35463_action
        )


    def test_r35489_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35489_action
        )


    def test_r35494_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip2,
            self.logic.r35494_action
        )


    def test_r35522_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35522_action
        )


    def test_r35500_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35500_action
        )


    def test_r35503_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35503_action
        )


    def test_r35508_action(self):
        self.assertFalse(self.settings_manager.get_dead_s996())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        self.logic.r35508_action()

        self.assertTrue(self.settings_manager.get_dead_s996())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35511_action(self):
        self.assertFalse(self.settings_manager.get_dead_s996())
        self.assertFalse(self.settings_manager.get_has_spike())
        self.assertFalse(self.settings_manager.get_has_strap())

        self.logic.r35511_action()

        self.assertTrue(self.settings_manager.get_dead_s996())
        self.assertTrue(self.settings_manager.get_has_spike())
        self.assertTrue(self.settings_manager.get_has_strap())


    def test_r35461_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35461_condition
        )


    def test_r35484_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35484_condition
        )


    def test_r35485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35485_condition
        )


    def test_r35486_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_skeleton_chaotic(x),
            self.logic.r35486_condition
        )


    def test_r35487_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35487_condition
        )


    def test_r35525_condition(self):
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(self.logic.r35525_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(self.logic.r35525_condition())


    def test_r35526_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35526_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35526_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35526_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertTrue(self.logic.r35526_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35526_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35526_condition())


    def test_r35527_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35527_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35527_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35527_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35527_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35527_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35527_condition())


    def test_r35528_condition(self):
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(self.logic.r35528_condition())

        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(self.logic.r35528_condition())


    def test_r35529_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35529_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35529_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35529_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertTrue(self.logic.r35529_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35529_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35529_condition())


    def test_r35530_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35530_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35530_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35530_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35530_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35530_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35530_condition())


    def test_r35531_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_skeleton_examine(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(self.logic.r35531_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_skeleton_examine(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(self.logic.r35531_condition())


    def test_r35532_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertFalse(self.logic.r35532_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertTrue(self.logic.r35532_condition())


    def test_r35533_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35533_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35533_condition())


    def test_r35534_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35534_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35534_condition())


    def test_r35535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35535_condition
        )


    def test_r35463_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35463_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35463_condition())


    def test_r35482_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35482_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35482_condition())


    def test_r35483_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35483_condition
        )


    def test_r35489_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35489_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35489_condition())


    def test_r35490_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35490_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35490_condition())


    def test_r35491_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35491_condition
        )


    def test_r35494_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.assertFalse(self.logic.r35494_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.assertTrue(self.logic.r35494_condition())


    def test_r35516_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35516_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35516_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35516_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertTrue(self.logic.r35516_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35516_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35516_condition())


    def test_r35517_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35517_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35517_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35517_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35517_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35517_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35517_condition())


    def test_r35518_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip2(False)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(self.logic.r35518_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip2(True)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(self.logic.r35518_condition())


    def test_r35519_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 13

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35519_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35519_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35519_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertTrue(self.logic.r35519_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35519_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35519_condition())


    def test_r35520_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35520_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35520_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35520_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35520_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35520_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35520_condition())


    def test_r35521_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_prybar(False)
        self.assertFalse(self.logic.r35521_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_prybar(True)
        self.assertTrue(self.logic.r35521_condition())


    def test_r35522_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35522_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35522_condition())


    def test_r35523_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35523_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35523_condition())


    def test_r35524_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35524_condition
        )


    def test_r35500_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35500_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35500_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35500_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35500_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35500_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35500_condition())


    def test_r35501_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35501_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35501_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35501_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35501_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35501_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35501_condition())


    def test_r35502_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_morte_skel_mort_quip(False)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35502_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35502_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertFalse(self.logic.r35502_condition())

        self.settings_manager.set_morte_skel_mort_quip(True)

        self.settings_manager.character_manager.set_property(who, prop, value - 1)
        self.assertFalse(self.logic.r35502_condition())

        self.settings_manager.character_manager.set_property(who, prop, value)
        self.assertFalse(self.logic.r35502_condition())

        self.settings_manager.character_manager.set_property(who, prop, value + 1)
        self.assertTrue(self.logic.r35502_condition())


    def test_r35503_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35503_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35503_condition())


    def test_r35504_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_skel_mort_quip(True)
        self.assertFalse(self.logic.r35504_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_skel_mort_quip(False)
        self.assertTrue(self.logic.r35504_condition())


    def test_r35505_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35505_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
