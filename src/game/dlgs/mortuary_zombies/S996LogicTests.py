import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.S996Logic import (S996LogicGenerated, S996Logic)


class S996LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(S996LogicGeneratedTests, self).setUp()
        self.logic = S996LogicGenerated(self.state_manager)


    def test_r35461_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_skeleton_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_skeleton_chaotic())

        self.logic.r35461_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_skeleton_chaotic())

        self.logic.r35461_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_skeleton_chaotic())


    def test_r35485_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_skeleton_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_skeleton_chaotic())

        self.logic.r35485_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_skeleton_chaotic())

        self.logic.r35485_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_skeleton_chaotic())


    def test_r35492_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_skeleton_examine,
            self.logic.r35492_action
        )


    def test_r35525_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip2,
            self.logic.r35525_action
        )


    def test_r35533_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35533_action
        )


    def test_r35463_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35463_action
        )


    def test_r35489_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35489_action
        )


    def test_r35494_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip2,
            self.logic.r35494_action
        )


    def test_r35522_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35522_action
        )


    def test_r35500_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35500_action
        )


    def test_r35503_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35503_action
        )


    def test_r35508_action(self):
        self.state_manager.world_manager.set_dead_s996(False)
        self.state_manager.inventory_items_manager.drop_all_items('has_spike')
        self.state_manager.inventory_items_manager.drop_all_items('has_strap')

        self.assertFalse(self.state_manager.world_manager.get_dead_s996())
        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_spike'))
        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_strap'))

        self.logic.r35508_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_s996())
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_spike'))
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_strap'))

        self.logic.r35508_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_s996())
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_spike'))
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_strap'))


    def test_r35511_action(self):
        self.state_manager.world_manager.set_dead_s996(False)
        self.state_manager.inventory_items_manager.drop_all_items('has_spike')
        self.state_manager.inventory_items_manager.drop_all_items('has_strap')

        self.assertFalse(self.state_manager.world_manager.get_dead_s996())
        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_spike'))
        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_strap'))

        self.logic.r35511_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_s996())
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_spike'))
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_strap'))

        self.logic.r35511_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_s996())
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_spike'))
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_strap'))


    def test_r35461_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_skeleton_chaotic(x),
            self.logic.r35461_condition
        )


    def test_r35484_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_skeleton_chaotic(x),
            self.logic.r35484_condition
        )


    def test_r35485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_skeleton_chaotic(x),
            self.logic.r35485_condition
        )


    def test_r35486_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_skeleton_chaotic(x),
            self.logic.r35486_condition
        )


    def test_r35487_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r35487_condition
        )


    def test_r35525_condition(self):
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35525_condition())

        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35525_condition())


    def test_r35526_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35526_condition())

        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35526_condition())


    def test_r35527_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35527_condition())

        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35527_condition())


    def test_r35528_condition(self):
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.inventory_items_manager.drop_all_items('has_prybar')

        self.assertFalse(self.logic.r35528_condition())

        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')

        self.assertTrue(self.logic.r35528_condition())


    def test_r35529_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35529_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35529_condition())


    def test_r35530_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35530_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35530_condition())


    def test_r35531_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_skeleton_examine(False)
        self.state_manager.inventory_items_manager.drop_all_items('has_prybar')

        self.assertFalse(self.logic.r35531_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_skeleton_examine(True)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')

        self.assertTrue(self.logic.r35531_condition())


    def test_r35532_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35532_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35532_condition())


    def test_r35533_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35533_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35533_condition())


    def test_r35534_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35534_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35534_condition())


    def test_r35535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35535_condition
        )


    def test_r35463_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35463_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35463_condition())


    def test_r35482_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35482_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35482_condition())


    def test_r35483_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35483_condition
        )


    def test_r35489_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35489_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35489_condition())


    def test_r35490_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35490_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35490_condition())


    def test_r35491_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35491_condition
        )


    def test_r35494_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)

        self.assertFalse(self.logic.r35494_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)

        self.assertTrue(self.logic.r35494_condition())


    def test_r35516_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35516_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35516_condition())


    def test_r35517_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35517_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35517_condition())


    def test_r35518_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(False)
        self.state_manager.inventory_items_manager.drop_all_items('has_prybar')

        self.assertFalse(self.logic.r35518_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')

        self.assertTrue(self.logic.r35518_condition())


    def test_r35519_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35519_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35519_condition())


    def test_r35520_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35520_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.inventory_items_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35520_condition())


    def test_r35521_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.inventory_items_manager.drop_all_items('has_prybar')

        self.assertFalse(self.logic.r35521_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.inventory_items_manager.pick_item('has_prybar')

        self.assertTrue(self.logic.r35521_condition())


    def test_r35522_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35522_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35522_condition())


    def test_r35523_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35523_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35523_condition())


    def test_r35524_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35524_condition
        )


    def test_r35500_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35500_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35500_condition())


    def test_r35501_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35501_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35501_condition())


    def test_r35502_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertFalse(self.logic.r35502_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertTrue(self.logic.r35502_condition())


    def test_r35503_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35503_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35503_condition())


    def test_r35504_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)

        self.assertFalse(self.logic.r35504_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_skel_mort_quip(False)

        self.assertTrue(self.logic.r35504_condition())


    def test_r35505_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35505_condition
        )


class S996LogicTests(LogicTests):
    def setUp(self):
        super(S996LogicTests, self).setUp()
        self.logic = S996Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_s996_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
