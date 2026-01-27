import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.morte_logic import (MorteLogicGenerated, MorteLogic)


class MorteLogicGeneratedTest(LogicTest):
    def setUp(self):
        super(MorteLogicGeneratedTest, self).setUp()
        self.logic = MorteLogicGenerated(self.state_manager)


    def test_r17833_action(self):
        self.state_manager.inventory_manager.drop_all_items('has_intro_key')
        morte_before = 0
        morte_after = 1
        morte_after_once = 1
        self.state_manager.world_manager.set_morte(morte_before)
        self.state_manager.world_manager.set_read_scars(False)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.state_manager.inventory_manager.is_own_item('has_intro_key'))
        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_before)
        self.assertFalse(self.state_manager.world_manager.get_read_scars())
        self.assertFalse(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r17833_action()

        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_intro_key'))
        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after)
        self.assertTrue(self.state_manager.world_manager.get_read_scars())
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r17833_action()

        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_intro_key'))
        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after_once)
        self.assertTrue(self.state_manager.world_manager.get_read_scars())
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())


    def test_r1088_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_read_scars,
            self.logic.r1088_action
        )


    def test_r1079_action(self):
        morte_before = 0
        morte_after = 1
        morte_after_once = 1
        self.state_manager.world_manager.set_morte(morte_before)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_before)
        self.assertFalse(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r1079_action()

        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after)
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r1079_action()

        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after_once)
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())


    def test_r1845_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_harlot_quip_1,
            self.logic.r1845_action
        )


    def test_r1846_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_harlot_quip_1,
            self.logic.r1846_action
        )


    def test_r1847_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_harlot_quip_1,
            self.logic.r1847_action
        )


    def test_r2080_action(self):
        self.state_manager.world_manager.set_know_mimir(False)
        morte_mimir_before = 0
        morte_mimir_after = 1
        morte_mimir_after_once = 1
        self.state_manager.world_manager.set_morte_mimir(morte_mimir_before)

        self.assertFalse(self.state_manager.world_manager.get_know_mimir())
        self.assertEqual(self.state_manager.world_manager.get_morte_mimir(), morte_mimir_before)

        self.logic.r2080_action()

        self.assertTrue(self.state_manager.world_manager.get_know_mimir())
        self.assertEqual(self.state_manager.world_manager.get_morte_mimir(), morte_mimir_after)

        self.logic.r2080_action()

        self.assertTrue(self.state_manager.world_manager.get_know_mimir())
        self.assertEqual(self.state_manager.world_manager.get_morte_mimir(), morte_mimir_after_once)


    def test_r9029_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_gith,
            self.logic.r9029_action
        )


    def test_r2603_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r2603_action
        )


    def test_r2602_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r2602_action
        )


    def test_r2605_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r2605_action
        )


    def test_r6952_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_lady,
            self.logic.r6952_action
        )


    def test_j38205_s55_r3474_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j38205_s55_r3474_action
        )


    def test_j38205_s57_r3483_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j38205_s57_r3483_action
        )


    def test_r3871_action(self):
        self.state_manager.world_manager.set_warning(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            1,
            self.logic.r3871_action
        )


    def test_r3874_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r3874_action
        )


    def test_r3877_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r3877_action
        )


    def test_r3965_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r3965_action
        )


    def test_r3966_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r3966_action
        )


    def test_r3972_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r3972_action
        )


    def test_r3988_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r3988_action
        )


    def test_r4029_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4029_action
        )


    def test_r4144_action(self):
        self.state_manager.world_manager.set_warning(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            1,
            self.logic.r4144_action
        )


    def test_r4145_action(self):
        self.state_manager.world_manager.set_warning(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            1,
            self.logic.r4145_action
        )


    def test_r4142_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r4142_action
        )


    def test_r4143_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r4143_action
        )


    def test_r4140_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r4140_action
        )


    def test_r4339_action(self):
        self.state_manager.world_manager.set_warning(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            1,
            self.logic.r4339_action
        )


    def test_r4342_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r4342_action
        )


    def test_r4345_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r4345_action
        )


    def test_j64512_s85_r4676_action(self):
        note_id = '64512'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64512_s85_r4676_action
        )


    def test_r4678_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -3

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4678_action
        )


    def test_r4679_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4679_action
        )


    def test_r4682_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = 3

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4682_action
        )


    def test_r4687_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = 1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r4687_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r4687_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_j64512_s89_r4693_action(self):
        note_id = '64512'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64512_s89_r4693_action
        )


    def test_r4695_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -3

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4695_action
        )


    def test_r4699_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = 3

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4699_action
        )


    def test_r64535_action(self):
        who_looks_like = 'protagonist_character_name'
        prop_looks_like = 'looks_like'
        delta_looks_like = 'zombie'
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 500
        self.state_manager.world_manager.set_vaxis_global_xp(False)

        looks_like_before = self.state_manager.characters_manager.get_property(who_looks_like, prop_looks_like)
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_global_xp())

        self.logic.r64535_action()

        looks_like_after = self.state_manager.characters_manager.get_property(who_looks_like, prop_looks_like)
        self.assertEqual(delta_looks_like, looks_like_after)
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_global_xp())

        self.logic.r64535_action()

        looks_like_after_once = self.state_manager.characters_manager.get_property(who_looks_like, prop_looks_like)
        self.assertEqual(looks_like_after, looks_like_after_once)
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_global_xp())


    def test_r64534_action(self):
        who = 'protagonist_character_name'
        prop = 'looks_like'
        delta = 'zombie'

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r64534_action
        )


    def test_r5030_action(self):
        self.state_manager.world_manager.set_warning(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            1,
            self.logic.r5030_action
        )


    def test_r5033_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r5033_action
        )


    def test_r5036_action(self):
        self.state_manager.world_manager.set_warning(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_warning,
            2,
            self.logic.r5036_action
        )


    def test_r6075_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_deionarra_quip_1,
            self.logic.r6075_action
        )


    def test_r6658_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6658_action
        )


    def test_r6659_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6659_action
        )


    def test_r6957_action(self):
        self.state_manager.world_manager.set_translate_dabus(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_translate_dabus,
            0,
            self.logic.r6957_action
        )


    def test_r7056_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_zombie_female_bar_quip,
            self.logic.r7056_action
        )


    def test_r7057_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r7057_action
        )


    def test_r7058_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r7058_action
        )


    def test_r7483_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_bd_morte_morale,
            1,
            self.logic.r7483_action
        )


    def test_r7485_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_morte_taunt,
            1,
            self.logic.r7485_action
        )


    def test_r11977_action(self):
        self.state_manager.world_manager.set_ingress_teeth_installed(False)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1

        self.assertFalse(self.state_manager.world_manager.get_ingress_teeth_installed())
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r11977_action()

        self.assertTrue(self.state_manager.world_manager.get_ingress_teeth_installed())
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r11977_action()

        self.assertTrue(self.state_manager.world_manager.get_ingress_teeth_installed())
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r11980_action(self):
        self.state_manager.world_manager.set_ingress_teeth_installed(False)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1

        self.assertFalse(self.state_manager.world_manager.get_ingress_teeth_installed())
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r11980_action()

        self.assertTrue(self.state_manager.world_manager.get_ingress_teeth_installed())
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r11980_action()

        self.assertTrue(self.state_manager.world_manager.get_ingress_teeth_installed())
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r11982_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_morale_morte,
            1,
            self.logic.r11982_action
        )


    def test_r11983_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_ingress_teeth_installed,
            self.logic.r11983_action
        )


    def test_r12554_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_morale_morte,
            2,
            self.logic.r12554_action
        )


    def test_r12555_action(self):
        self.logic.r12555_action()


    def test_r12556_action(self):
        self.state_manager.world_manager.set_baria(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_baria,
            2,
            self.logic.r12556_action
        )


    def test_r12855_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_mimir,
            self.logic.r12855_action
        )


    def test_r12858_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_mimir,
            self.logic.r12858_action
        )


    def test_r12860_action(self):
        self.state_manager.world_manager.set_morte_mimir(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte_mimir,
            1,
            self.logic.r12860_action
        )


    def test_r12861_action(self):
        self.state_manager.world_manager.set_morte_mimir(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte_mimir,
            1,
            self.logic.r12861_action
        )


    def test_r13774_action(self):
        self.state_manager.world_manager.set_morte_sdthug_quip_1(False)
        self.state_manager.world_manager.set_know_chaosmen(False)

        self.assertFalse(self.state_manager.world_manager.get_morte_sdthug_quip_1())
        self.assertFalse(self.state_manager.world_manager.get_know_chaosmen())

        self.logic.r13774_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_sdthug_quip_1())
        self.assertTrue(self.state_manager.world_manager.get_know_chaosmen())

        self.logic.r13774_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_sdthug_quip_1())
        self.assertTrue(self.state_manager.world_manager.get_know_chaosmen())


    def test_r13775_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_sdthug_quip_1,
            self.logic.r13775_action
        )


    def test_r13776_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_sdthug_quip_1,
            self.logic.r13776_action
        )


    def test_r13986_action(self):
        self.state_manager.world_manager.set_morte_wilder_quip_1(False)
        self.state_manager.world_manager.set_know_chaosmen(False)

        self.assertFalse(self.state_manager.world_manager.get_morte_wilder_quip_1())
        self.assertFalse(self.state_manager.world_manager.get_know_chaosmen())

        self.logic.r13986_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_wilder_quip_1())
        self.assertTrue(self.state_manager.world_manager.get_know_chaosmen())

        self.logic.r13986_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_wilder_quip_1())
        self.assertTrue(self.state_manager.world_manager.get_know_chaosmen())


    def test_r13987_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_wilder_quip_1,
            self.logic.r13987_action
        )


    def test_r13988_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_wilder_quip_1,
            self.logic.r13988_action
        )


    def test_r15492_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_bd_morte_morale,
            1,
            self.logic.r15492_action
        )


    def test_s178_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_mimir,
            self.logic.s178_action
        )


    def test_s179_action(self):
        self._integer_inc_once_action(
            self.state_manager.world_manager.get_morte_mimir,
            1,
            self.logic.s179_action
        )


    def test_r15495_action(self):
        self.state_manager.world_manager.set_adyzoel(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_adyzoel,
            2,
            self.logic.r15495_action
        )


    def test_r16882_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_tree_helpers,
            1,
            self.logic.r16882_action
        )


    def test_r16884_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_a,
            self.logic.r16884_action
        )


    def test_r16885_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_i,
            self.logic.r16885_action
        )


    def test_r16886_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_g,
            self.logic.r16886_action
        )


    def test_r16887_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_d,
            self.logic.r16887_action
        )


    def test_r16888_action(self):
        bd_dakkon_morale_before = 0
        bd_dakkon_morale_after = 1
        bd_dakkon_morale_after_once = 2 * 1
        self.state_manager.world_manager.set_bd_dakkon_morale(bd_dakkon_morale_before)
        self.state_manager.world_manager.set_tree_d(False)

        self.assertEqual(self.state_manager.world_manager.get_bd_dakkon_morale(), bd_dakkon_morale_before)
        self.assertFalse(self.state_manager.world_manager.get_tree_d())

        self.logic.r16888_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_dakkon_morale(), bd_dakkon_morale_after)
        self.assertTrue(self.state_manager.world_manager.get_tree_d())

        self.logic.r16888_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_dakkon_morale(), bd_dakkon_morale_after_once)
        self.assertTrue(self.state_manager.world_manager.get_tree_d())


    def test_r16889_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_n,
            self.logic.r16889_action
        )


    def test_r16890_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_v,
            self.logic.r16890_action
        )


    def test_r16893_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_m,
            self.logic.r16893_action
        )


    def test_r16894_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_a,
            self.logic.r16894_action
        )


    def test_r16895_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_i,
            self.logic.r16895_action
        )


    def test_r16896_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_g,
            self.logic.r16896_action
        )


    def test_r16897_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_d,
            self.logic.r16897_action
        )


    def test_r16898_action(self):
        bd_dakkon_morale_before = 0
        bd_dakkon_morale_after = 1
        bd_dakkon_morale_after_once = 2 * 1
        self.state_manager.world_manager.set_bd_dakkon_morale(bd_dakkon_morale_before)
        self.state_manager.world_manager.set_tree_d(False)

        self.assertEqual(self.state_manager.world_manager.get_bd_dakkon_morale(), bd_dakkon_morale_before)
        self.assertFalse(self.state_manager.world_manager.get_tree_d())

        self.logic.r16898_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_dakkon_morale(), bd_dakkon_morale_after)
        self.assertTrue(self.state_manager.world_manager.get_tree_d())

        self.logic.r16898_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_dakkon_morale(), bd_dakkon_morale_after_once)
        self.assertTrue(self.state_manager.world_manager.get_tree_d())


    def test_r16899_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_tree_v,
            self.logic.r16899_action
        )


    def test_r17584_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            40,
            self.logic.r17584_action
        )


    def test_r18802_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_bd_morte_morale,
            1,
            self.logic.r18802_action
        )


    def test_r18578_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r18578_action
        )


    def test_r18808_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r18808_action
        )


    def test_r18820_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            5,
            self.logic.r18820_action
        )


    def test_r18821_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            50,
            self.logic.r18821_action
        )


    def test_r18822_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            100,
            self.logic.r18822_action
        )


    def test_r18823_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            500,
            self.logic.r18823_action
        )


    def test_r18830_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            5,
            self.logic.r18830_action
        )


    def test_r18833_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            5,
            self.logic.r18833_action
        )


    def test_r18834_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            10,
            self.logic.r18834_action
        )


    def test_r18835_action(self):
        gold_before = 0
        gold_after = -50
        gold_after_once = -2 * 50
        self.state_manager.world_manager.set_gold(gold_before)
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 1

        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_before)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r18835_action()

        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r18835_action()

        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r18836_action(self):
        gold_before = 0
        gold_after = -100
        gold_after_once = -2 * 100
        self.state_manager.world_manager.set_gold(gold_before)
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 1

        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_before)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r18836_action()

        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r18836_action()

        self.assertEqual(self.state_manager.world_manager.get_gold(), gold_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r20612_action(self):
        know_marta_work_before = 1
        know_marta_work_after = 3
        know_marta_work_after_once = 3
        self.state_manager.world_manager.set_know_marta_work(know_marta_work_before)
        note_id = '20538'

        self.assertEqual(self.state_manager.world_manager.get_know_marta_work(), know_marta_work_before)
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r20612_action()

        self.assertEqual(self.state_manager.world_manager.get_know_marta_work(), know_marta_work_after)
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r20612_action()

        self.assertEqual(self.state_manager.world_manager.get_know_marta_work(), know_marta_work_after_once)
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_j20538_s209_r20613_action(self):
        note_id = '20538'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j20538_s209_r20613_action
        )


    def test_r24697_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_lady,
            self.logic.r24697_action
        )


    def test_r22850_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r22850_action
        )


    def test_r22853_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r22853_action
        )


    def test_r22856_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r22856_action
        )


    def test_r24904_action(self):
        self.state_manager.world_manager.set_morte(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte,
            1,
            self.logic.r24904_action
        )


    def test_r24905_action(self):
        morte_before = 0
        morte_after = 1
        morte_after_once = 1
        self.state_manager.world_manager.set_morte(morte_before)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_before)
        self.assertFalse(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r24905_action()

        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after)
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r24905_action()

        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after_once)
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())


    def test_r24925_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r24925_action
        )


    def test_r24932_action(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        note_id = '24933'

        self.assertFalse(self.state_manager.world_manager.get_in_party_morte())
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r24932_action()

        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r24932_action()

        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_s244_action(self):
        self._integer_inc_once_action(
            self.state_manager.world_manager.get_morte_mimir,
            1,
            self.logic.s244_action
        )


    def test_s268_action(self):
        self._integer_inc_once_action(
            self.state_manager.world_manager.get_morte_mimir,
            1,
            self.logic.s268_action
        )


    def test_r28041_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            10,
            self.logic.r28041_action
        )


    def test_r28042_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            10,
            self.logic.r28042_action
        )


    def test_r28038_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            30,
            self.logic.r28038_action
        )


    def test_r28039_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            30,
            self.logic.r28039_action
        )


    def test_r28040_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            50,
            self.logic.r28040_action
        )


    def test_r28044_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            50,
            self.logic.r28044_action
        )


    def test_r28045_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            50,
            self.logic.r28045_action
        )


    def test_r28046_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            50,
            self.logic.r28046_action
        )


    def test_r28047_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            80,
            self.logic.r28047_action
        )


    def test_r28048_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_gold,
            80,
            self.logic.r28048_action
        )


    def test_r28743_action(self):
        self.state_manager.world_manager.set_morte_stolen(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte_stolen,
            3,
            self.logic.r28743_action
        )


    def test_r28744_action(self):
        bd_morte_morale_before = 0
        bd_morte_morale_after = 1
        bd_morte_morale_after_once = 2 * 1
        self.state_manager.world_manager.set_bd_morte_morale(bd_morte_morale_before)
        morte_stolen_before = 1
        morte_stolen_after = 3
        morte_stolen_after_once = 3
        self.state_manager.world_manager.set_morte_stolen(morte_stolen_before)

        self.assertEqual(self.state_manager.world_manager.get_bd_morte_morale(), bd_morte_morale_before)
        self.assertEqual(self.state_manager.world_manager.get_morte_stolen(), morte_stolen_before)

        self.logic.r28744_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_morte_morale(), bd_morte_morale_after)
        self.assertEqual(self.state_manager.world_manager.get_morte_stolen(), morte_stolen_after)

        self.logic.r28744_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_morte_morale(), bd_morte_morale_after_once)
        self.assertEqual(self.state_manager.world_manager.get_morte_stolen(), morte_stolen_after_once)


    def test_r28745_action(self):
        self.state_manager.world_manager.set_morte_stolen(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte_stolen,
            3,
            self.logic.r28745_action
        )


    def test_r28968_action(self):
        self.state_manager.world_manager.set_qui_sai(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_qui_sai,
            2,
            self.logic.r28968_action
        )


    def test_r28971_action(self):
        self.state_manager.world_manager.set_qui_sai(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_qui_sai,
            2,
            self.logic.r28971_action
        )


    def test_r28975_action(self):
        self.state_manager.world_manager.set_qui_sai(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_qui_sai,
            2,
            self.logic.r28975_action
        )


    def test_r28976_action(self):
        self.state_manager.world_manager.set_qui_sai(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_qui_sai,
            2,
            self.logic.r28976_action
        )


    def test_r30826_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_able,
            self.logic.r30826_action
        )


    def test_r31567_action(self):
        self.logic.r31567_action()


    def test_r32370_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32370_action
        )


    def test_r32375_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32375_action
        )


    def test_r32380_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32380_action
        )


    def test_r32385_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32385_action
        )


    def test_r32390_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32390_action
        )


    def test_r32395_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32395_action
        )


    def test_r32400_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32400_action
        )


    def test_r32405_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r32405_action
        )


    def test_r33076_action(self):
        self.state_manager.world_manager.set_lecture_ghysis(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_ghysis,
            2,
            self.logic.r33076_action
        )


    def test_r33959_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_in_party_morte,
            self.logic.r33959_action
        )


    def test_r33963_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_in_party_morte,
            self.logic.r33963_action
        )


    def test_r33966_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_in_party_morte,
            self.logic.r33966_action
        )


    def test_r34991_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r34991_action
        )


    def test_r35001_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35001_action
        )


    def test_r34993_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r34993_action
        )


    def test_r35023_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35023_action
        )


    def test_r35033_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35033_action
        )


    def test_r35025_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35025_action
        )


    def test_r35055_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35055_action
        )


    def test_r35065_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35065_action
        )


    def test_r35057_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35057_action
        )


    def test_r35087_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35087_action
        )


    def test_r35097_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35097_action
        )


    def test_r35089_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35089_action
        )


    def test_r35119_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35119_action
        )


    def test_r35129_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35129_action
        )


    def test_r35121_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35121_action
        )


    def test_r35151_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35151_action
        )


    def test_r35161_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35161_action
        )


    def test_r35153_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35153_action
        )


    def test_r35183_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35183_action
        )


    def test_r35193_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35193_action
        )


    def test_r35185_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35185_action
        )


    def test_r35215_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35215_action
        )


    def test_r35225_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35225_action
        )


    def test_r35217_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35217_action
        )


    def test_r35247_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35247_action
        )


    def test_r35257_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35257_action
        )


    def test_r35249_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35249_action
        )


    def test_r35279_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35279_action
        )


    def test_r35289_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_quip,
            self.logic.r35289_action
        )


    def test_r35281_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35281_action
        )


    def test_r35319_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35319_action
        )


    def test_r35342_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35342_action
        )


    def test_r35360_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35360_action
        )


    def test_r35358_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35358_action
        )


    def test_r35396_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35396_action
        )


    def test_r35419_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35419_action
        )


    def test_r35437_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35437_action
        )


    def test_r35435_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35435_action
        )


    def test_r35473_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35473_action
        )


    def test_r35496_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35496_action
        )


    def test_r35514_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35514_action
        )


    def test_r35512_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35512_action
        )


    def test_r35550_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35550_action
        )


    def test_r35573_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35573_action
        )


    def test_r35591_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r35591_action
        )


    def test_r35589_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_skel_mort_quip,
            self.logic.r35589_action
        )


    def test_r39716_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_yves_shared,
            self.logic.r39716_action
        )


    def test_r39719_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_yves_shared,
            self.logic.r39719_action
        )


    def test_r39721_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_yves_shared,
            self.logic.r39721_action
        )


    def test_r39722_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_yves_shared,
            self.logic.r39722_action
        )


    def test_s413_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_yves_shared,
            self.logic.s413_action
        )


    def test_r40848_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_met_modrons,
            self.logic.r40848_action
        )


    def test_r40852_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_met_modrons,
            self.logic.r40852_action
        )


    def test_r40856_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_met_modrons,
            self.logic.r40856_action
        )


    def test_j39516_s443_r41837_action(self):
        note_id = '39516'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39516_s443_r41837_action
        )


    def test_r41911_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_mortuary_walkthrough_2,
            self.logic.r41911_action
        )


    def test_r41921_action(self):
        self.state_manager.world_manager.set_jumble_reekwind(False)
        note_id = '67862'

        self.assertFalse(self.state_manager.world_manager.get_jumble_reekwind())
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r41921_action()

        self.assertTrue(self.state_manager.world_manager.get_jumble_reekwind())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r41921_action()

        self.assertTrue(self.state_manager.world_manager.get_jumble_reekwind())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_r43910_action(self):
        nemelle_before = 1
        nemelle_after = 3
        nemelle_after_once = 3
        self.state_manager.world_manager.set_nemelle(nemelle_before)
        aelwyn_before = 1
        aelwyn_after = 4
        aelwyn_after_once = 4
        self.state_manager.world_manager.set_aelwyn(aelwyn_before)
        note_id = '39490'

        self.assertEqual(self.state_manager.world_manager.get_nemelle(), nemelle_before)
        self.assertEqual(self.state_manager.world_manager.get_aelwyn(), aelwyn_before)
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r43910_action()

        self.assertEqual(self.state_manager.world_manager.get_nemelle(), nemelle_after)
        self.assertEqual(self.state_manager.world_manager.get_aelwyn(), aelwyn_after)
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r43910_action()

        self.assertEqual(self.state_manager.world_manager.get_nemelle(), nemelle_after_once)
        self.assertEqual(self.state_manager.world_manager.get_aelwyn(), aelwyn_after_once)
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_r43918_action(self):
        nemelle_before = 1
        nemelle_after = 3
        nemelle_after_once = 3
        self.state_manager.world_manager.set_nemelle(nemelle_before)
        aelwyn_before = 1
        aelwyn_after = 4
        aelwyn_after_once = 4
        self.state_manager.world_manager.set_aelwyn(aelwyn_before)
        note_id = '39490'

        self.assertEqual(self.state_manager.world_manager.get_nemelle(), nemelle_before)
        self.assertEqual(self.state_manager.world_manager.get_aelwyn(), aelwyn_before)
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r43918_action()

        self.assertEqual(self.state_manager.world_manager.get_nemelle(), nemelle_after)
        self.assertEqual(self.state_manager.world_manager.get_aelwyn(), aelwyn_after)
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r43918_action()

        self.assertEqual(self.state_manager.world_manager.get_nemelle(), nemelle_after_once)
        self.assertEqual(self.state_manager.world_manager.get_aelwyn(), aelwyn_after_once)
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_r45029_action(self):
        self.state_manager.world_manager.set_lecture_death(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_lecture_death,
            2,
            self.logic.r45029_action
        )


    def test_j39477_s478_r45093_action(self):
        note_id = '39477'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39477_s478_r45093_action
        )


    def test_j39477_s481_r45103_action(self):
        note_id = '39477'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j39477_s481_r45103_action
        )


    def test_r50166_action(self):
        self.state_manager.world_manager.set_translate_dabus(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_translate_dabus,
            0,
            self.logic.r50166_action
        )


    def test_r50325_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_lady,
            self.logic.r50325_action
        )


    def test_r50416_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_morale_morte,
            1,
            self.logic.r50416_action
        )


    def test_s505_action(self):
        self.logic.s505_action()


    def test_r52577_action(self):
        self.state_manager.world_manager.set_ravel_grace(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_ravel_grace,
            2,
            self.logic.r52577_action
        )


    def test_r52578_action(self):
        self.state_manager.world_manager.set_ravel_annah(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_ravel_annah,
            2,
            self.logic.r52578_action
        )


    def test_r53625_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_morale_morte,
            1,
            self.logic.r53625_action
        )


    def test_r53629_action(self):
        self.state_manager.world_manager.set_morte_story(False)
        note_id = '53633'

        self.assertFalse(self.state_manager.world_manager.get_morte_story())
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r53629_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_story())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r53629_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_story())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_r53630_action(self):
        morale_morte_before = 0
        morale_morte_after = -1
        morale_morte_after_once = -2 * 1
        self.state_manager.world_manager.set_morale_morte(morale_morte_before)
        self.state_manager.world_manager.set_morte_story(False)
        note_id = '53661'

        self.assertEqual(self.state_manager.world_manager.get_morale_morte(), morale_morte_before)
        self.assertFalse(self.state_manager.world_manager.get_morte_story())
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r53630_action()

        self.assertEqual(self.state_manager.world_manager.get_morale_morte(), morale_morte_after)
        self.assertTrue(self.state_manager.world_manager.get_morte_story())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r53630_action()

        self.assertEqual(self.state_manager.world_manager.get_morale_morte(), morale_morte_after_once)
        self.assertTrue(self.state_manager.world_manager.get_morte_story())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_r53795_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_morale_morte,
            1,
            self.logic.r53795_action
        )


    def test_r53801_action(self):
        self._integer_dec_action(
            self.state_manager.world_manager.get_morale_morte,
            1,
            self.logic.r53801_action
        )


    def test_j53633_s521_r53807_action(self):
        note_id = '53633'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j53633_s521_r53807_action
        )


    def test_r53825_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_pillar_musk,
            self.logic.r53825_action
        )


    def test_r53826_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_pillar_musk,
            self.logic.r53826_action
        )


    def test_r53841_action(self):
        self.state_manager.world_manager.set_pillar_question(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_pillar_question,
            0,
            self.logic.r53841_action
        )


    def test_r53843_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1
        pillar_before = 1
        pillar_after = 2
        pillar_after_once = 2
        self.state_manager.world_manager.set_pillar(pillar_before)

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(self.state_manager.world_manager.get_pillar(), pillar_before)

        self.logic.r53843_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        self.assertEqual(self.state_manager.world_manager.get_pillar(), pillar_after)

        self.logic.r53843_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        self.assertEqual(self.state_manager.world_manager.get_pillar(), pillar_after_once)


    def test_r53867_action(self):
        self.state_manager.world_manager.set_pillar_question(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_pillar_question,
            0,
            self.logic.r53867_action
        )


    def test_r53850_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1
        pillar_before = 1
        pillar_after = 2
        pillar_after_once = 2
        self.state_manager.world_manager.set_pillar(pillar_before)

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(self.state_manager.world_manager.get_pillar(), pillar_before)

        self.logic.r53850_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        self.assertEqual(self.state_manager.world_manager.get_pillar(), pillar_after)

        self.logic.r53850_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        self.assertEqual(self.state_manager.world_manager.get_pillar(), pillar_after_once)


    def test_r53856_action(self):
        self.state_manager.world_manager.set_pillar_question(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_pillar_question,
            0,
            self.logic.r53856_action
        )


    def test_r54160_action(self):
        self.logic.r54160_action()


    def test_r54180_action(self):
        self.logic.r54180_action()


    def test_r54192_action(self):
        self.logic.r54192_action()


    def test_r54197_action(self):
        self.logic.r54197_action()


    def test_r54201_action(self):
        self.logic.r54201_action()


    def test_r54205_action(self):
        self.logic.r54205_action()


    def test_r54210_action(self):
        self.logic.r54210_action()


    def test_r54214_action(self):
        self.logic.r54214_action()


    def test_r54218_action(self):
        self.logic.r54218_action()


    def test_r54227_action(self):
        self.logic.r54227_action()


    def test_r54233_action(self):
        self.logic.r54233_action()


    def test_r54238_action(self):
        self.logic.r54238_action()


    def test_r54242_action(self):
        self.logic.r54242_action()


    def test_r54244_action(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_morte_quip_regret_portal,
            2,
            self.logic.r54244_action
        )


    def test_r54246_action(self):
        self.logic.r54246_action()


    def test_r54262_action(self):
        self.logic.r54262_action()


    def test_r54267_action(self):
        self.logic.r54267_action()


    def test_r54272_action(self):
        self.logic.r54272_action()


    def test_r54276_action(self):
        self.logic.r54276_action()


    def test_r54278_action(self):
        bd_morte_morale_before = 0
        bd_morte_morale_after = 1
        bd_morte_morale_after_once = 2 * 1
        self.state_manager.world_manager.set_bd_morte_morale(bd_morte_morale_before)
        self.state_manager.world_manager.set_morte_morale_fortress_portal(False)

        self.assertEqual(self.state_manager.world_manager.get_bd_morte_morale(), bd_morte_morale_before)
        self.assertFalse(self.state_manager.world_manager.get_morte_morale_fortress_portal())

        self.logic.r54278_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_morte_morale(), bd_morte_morale_after)
        self.assertTrue(self.state_manager.world_manager.get_morte_morale_fortress_portal())

        self.logic.r54278_action()

        self.assertEqual(self.state_manager.world_manager.get_bd_morte_morale(), bd_morte_morale_after_once)
        self.assertTrue(self.state_manager.world_manager.get_morte_morale_fortress_portal())


    def test_r54280_action(self):
        self.logic.r54280_action()


    def test_r54833_action(self):
        self.logic.r54833_action()


    def test_r54836_action(self):
        self.logic.r54836_action()


    def test_r54839_action(self):
        self.logic.r54839_action()


    def test_s576_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_source,
            self.logic.s576_action
        )


    def test_r55902_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r55902_action
        )


    def test_r55925_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_mechanus,
            self.logic.r55925_action
        )


    def test_r55931_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = 2

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r55931_action
        )


    def test_r55941_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -2

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r55941_action
        )


    def test_r61414_action(self):
        self.logic.r61414_action()


    def test_s603_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            1,
            self.logic.s603_action
        )


    def test_s604_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            1,
            self.logic.s604_action
        )


    def test_s606_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            1,
            self.logic.s606_action
        )


    def test_s607_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            1,
            self.logic.s607_action
        )


    def test_s608_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            1,
            self.logic.s608_action
        )


    def test_s610_action(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            1,
            self.logic.s610_action
        )


    def test_s611_action(self):
        self.state_manager.world_manager.set_grace_talked_morte(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_grace_talked_morte,
            0,
            self.logic.s611_action
        )


    def test_s615_action(self):
        self.state_manager.world_manager.set_annah_talked_morte(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_annah_talked_morte,
            3,
            self.logic.s615_action
        )


    def test_s620_action(self):
        self.state_manager.world_manager.set_annah_talked_morte(9)
        self._integer_equals_action(
            self.state_manager.world_manager.get_annah_talked_morte,
            8,
            self.logic.s620_action
        )


    def test_s622_action(self):
        self.state_manager.world_manager.set_annah_talked_morte(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_annah_talked_morte,
            0,
            self.logic.s622_action
        )


    def test_s623_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            1,
            self.logic.s623_action
        )


    def test_s625_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            3,
            self.logic.s625_action
        )


    def test_s628_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(6)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            5,
            self.logic.s628_action
        )


    def test_s629_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(7)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            6,
            self.logic.s629_action
        )


    def test_s631_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(8)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            7,
            self.logic.s631_action
        )


    def test_s633_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(9)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            8,
            self.logic.s633_action
        )


    def test_s635_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(10)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            9,
            self.logic.s635_action
        )


    def test_s640_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            1,
            self.logic.s640_action
        )


    def test_s642_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_morte,
            0,
            self.logic.s642_action
        )


    def test_s643_action(self):
        self.state_manager.world_manager.set_nordom_talked_annah(1)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_annah,
            0,
            self.logic.s643_action
        )


    def test_s644_action(self):
        self.state_manager.world_manager.set_nordom_talked_grace(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_grace,
            2,
            self.logic.s644_action
        )


    def test_s645_action(self):
        self.state_manager.world_manager.set_nordom_talked_grace(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_nordom_talked_grace,
            3,
            self.logic.s645_action
        )


    def test_j65573_s652_r65569_action(self):
        note_id = '65573'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65573_s652_r65569_action
        )


    def test_r65569_action(self):
        self.state_manager.world_manager.set_morte_tattoo_xp(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 1000

        self.assertFalse(self.state_manager.world_manager.get_morte_tattoo_xp())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r65569_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_tattoo_xp())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r65569_action()

        self.assertTrue(self.state_manager.world_manager.get_morte_tattoo_xp())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_j65625_s665_r65621_action(self):
        note_id = '65625'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65625_s665_r65621_action
        )


    def test_r65621_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_talent,
            self.logic.r65621_action
        )


    def test_j65637_s667_r65631_action(self):
        note_id = '65637'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65637_s667_r65631_action
        )


    def test_j65669_s675_r65666_action(self):
        note_id = '65669'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65669_s675_r65666_action
        )


    def test_j65678_s677_r65674_action(self):
        note_id = '65678'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65678_s677_r65674_action
        )


    def test_j65712_s686_r65710_action(self):
        note_id = '65712'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65712_s686_r65710_action
        )


    def test_j65712_s686_r65711_action(self):
        note_id = '65712'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j65712_s686_r65711_action
        )


    def test_r65731_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_story,
            self.logic.r65731_action
        )


    def test_r65733_action(self):
        who = 'protagonist_character_name'
        prop = 'experience'
        delta = 12000

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r65733_action
        )


    def test_r65750_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r65750_action
        )


    def test_r65751_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r65751_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r65751_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_j53633_s699_r65753_action(self):
        note_id = '53633'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j53633_s699_r65753_action
        )


    def test_r65758_action(self):
        self.logic.r65758_action()


    def test_r65763_action(self):
        self.logic.r65763_action()


    def test_r65766_action(self):
        self.logic.r65766_action()


    def test_r65769_action(self):
        self.logic.r65769_action()


    def test_r65772_action(self):
        self.logic.r65772_action()


    def test_r65774_action(self):
        self.state_manager.world_manager.set_memory_morte_pillar(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 12000

        self.assertFalse(self.state_manager.world_manager.get_memory_morte_pillar())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r65774_action()

        self.assertTrue(self.state_manager.world_manager.get_memory_morte_pillar())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r65774_action()

        self.assertTrue(self.state_manager.world_manager.get_memory_morte_pillar())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r65775_action(self):
        self.logic.r65775_action()


    def test_r65781_action(self):
        self.logic.r65781_action()


    def test_r65789_action(self):
        self.logic.r65789_action()


    def test_s713_action(self):
        self.state_manager.world_manager.set_know_morte_pillar(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_know_morte_pillar,
            1,
            self.logic.s713_action
        )


    def test_s719_action(self):
        self.state_manager.world_manager.set_know_morte_pillar(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_know_morte_pillar,
            2,
            self.logic.s719_action
        )


    def test_r65821_action(self):
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 12000
        morale_morte_before = 0
        morale_morte_after = 3
        morale_morte_after_once = 2 * 3
        self.state_manager.world_manager.set_morale_morte(morale_morte_before)
        who_strength = 'morte_character_name'
        prop_strength = 'strength'
        delta_strength = 4
        who_dexterity = 'morte_character_name'
        prop_dexterity = 'dexterity'
        delta_dexterity = 2
        who_constitution = 'morte_character_name'
        prop_constitution = 'constitution'
        delta_constitution = 2
        self.state_manager.world_manager.set_bd_morte_story(False)
        note_id = '65825'

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.state_manager.world_manager.get_morale_morte(), morale_morte_before)
        strength_before = self.state_manager.characters_manager.get_property(who_strength, prop_strength)
        dexterity_before = self.state_manager.characters_manager.get_property(who_dexterity, prop_dexterity)
        constitution_before = self.state_manager.characters_manager.get_property(who_constitution, prop_constitution)
        self.assertFalse(self.state_manager.world_manager.get_bd_morte_story())
        self.assertFalse(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r65821_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.state_manager.world_manager.get_morale_morte(), morale_morte_after)
        strength_after = self.state_manager.characters_manager.get_property(who_strength, prop_strength)
        self.assertEqual(strength_before + delta_strength, strength_after)
        dexterity_after = self.state_manager.characters_manager.get_property(who_dexterity, prop_dexterity)
        self.assertEqual(dexterity_before + delta_dexterity, dexterity_after)
        constitution_after = self.state_manager.characters_manager.get_property(who_constitution, prop_constitution)
        self.assertEqual(constitution_before + delta_constitution, constitution_after)
        self.assertTrue(self.state_manager.world_manager.get_bd_morte_story())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))

        self.logic.r65821_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.state_manager.world_manager.get_morale_morte(), morale_morte_after_once)
        strength_after_once = self.state_manager.characters_manager.get_property(who_strength, prop_strength)
        self.assertEqual(strength_after + delta_strength, strength_after_once)
        dexterity_after_once = self.state_manager.characters_manager.get_property(who_dexterity, prop_dexterity)
        self.assertEqual(dexterity_after + delta_dexterity, dexterity_after_once)
        constitution_after_once = self.state_manager.characters_manager.get_property(who_constitution, prop_constitution)
        self.assertEqual(constitution_after + delta_constitution, constitution_after_once)
        self.assertTrue(self.state_manager.world_manager.get_bd_morte_story())
        self.assertTrue(self.state_manager.journal_manager.found_journal_note(note_id))


    def test_r68176_action(self):
        fortress_morte_before = 1
        fortress_morte_after = 4
        fortress_morte_after_once = 4
        self.state_manager.world_manager.set_fortress_morte(fortress_morte_before)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertEqual(self.state_manager.world_manager.get_fortress_morte(), fortress_morte_before)
        self.assertFalse(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r68176_action()

        self.assertEqual(self.state_manager.world_manager.get_fortress_morte(), fortress_morte_after)
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r68176_action()

        self.assertEqual(self.state_manager.world_manager.get_fortress_morte(), fortress_morte_after_once)
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())


    def test_r68189_action(self):
        self.logic.r68189_action()


    def test_r68190_action(self):
        self.logic.r68190_action()


    def test_r68191_action(self):
        self.logic.r68191_action()


    def test_r68192_action(self):
        self.logic.r68192_action()


    def test_r68193_action(self):
        self.logic.r68193_action()


    def test_r68194_action(self):
        self.logic.r68194_action()


    def test_r68239_action(self):
        self.logic.r68239_action()


    def test_r68438_action(self):
        self.logic.r68438_action()


    def test_r68439_action(self):
        self.logic.r68439_action()


    def test_r68446_action(self):
        self.logic.r68446_action()


    def test_r68175_action(self):
        self.logic.r68175_action()


    def test_r68179_action(self):
        self.logic.r68179_action()


    def test_r68180_action(self):
        self.logic.r68180_action()


    def test_r68181_action(self):
        self.logic.r68181_action()


    def test_r68182_action(self):
        self.logic.r68182_action()


    def test_r68183_action(self):
        self.logic.r68183_action()


    def test_r68319_action(self):
        self.logic.r68319_action()


    def test_r68320_action(self):
        self.logic.r68320_action()


    def test_r68321_action(self):
        self.logic.r68321_action()


    def test_r68322_action(self):
        self.logic.r68322_action()


    def test_r68323_action(self):
        self.logic.r68323_action()


    def test_r68324_action(self):
        self.logic.r68324_action()


    def test_r68325_action(self):
        self.logic.r68325_action()


    def test_r68490_action(self):
        self.logic.r68490_action()


    def test_r68491_action(self):
        self.logic.r68491_action()


    def test_r68492_action(self):
        self.logic.r68492_action()


    def test_r1006_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1006_condition
        )


    def test_r1015_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1015_condition
        )


    def test_r1019_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1019_condition
        )


    def test_r1050_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1050_condition
        )


    def test_r1051_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1051_condition
        )


    def test_r1077_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1077_condition
        )


    def test_r1083_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1083_condition
        )


    def test_r1095_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1095_condition
        )


    def test_r1120_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1120_condition
        )


    def test_r1125_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1125_condition
        )


    def test_r1130_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_read_scars(x),
            self.logic.r1130_condition
        )


    def test_r9029_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_gith(x),
            self.logic.r9029_condition
        )


    def test_r9030_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_gith(x),
            self.logic.r9030_condition
        )


    def test_r6952_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r6952_condition
        )


    def test_r6953_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r6953_condition
        )


    def test_r6954_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r6954_condition
        )


    def test_r3969_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r3969_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r3969_condition())


    def test_r3970_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r3970_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r3970_condition())


    def test_r3971_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_manager.pick_item('has_prybar') if x else self.state_manager.inventory_manager.drop_item('has_prybar'),
            self.logic.r3971_condition
        )


    def test_r3972_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r3972_condition
        )


    def test_r3973_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r3973_condition
        )


    def test_r4023_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4023_condition
        )


    def test_r4024_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4024_condition
        )


    def test_r4027_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4027_condition
        )


    def test_r4028_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4028_condition
        )


    def test_r4031_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4031_condition
        )


    def test_r4032_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4032_condition
        )


    def test_r4034_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4034_condition
        )


    def test_r4686_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 13

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4686_condition
        )


    def test_r64535_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_global_xp(x),
            self.logic.r64535_condition
        )


    def test_r64534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_global_xp(x),
            self.logic.r64534_condition
        )


    def test_r6325_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_has_cobble(x),
            self.logic.r6325_condition
        )


    def test_r6326_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_has_cobble(x),
            self.logic.r6326_condition
        )


    def test_r6327_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r6327_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

        self.assertTrue(self.logic.r6327_condition())


    def test_r6328_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r6328_condition
        )


    def test_r6329_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r6329_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence - 1)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

        self.assertTrue(self.logic.r6329_condition())


    def test_r6330_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6330_condition
        )


    def test_r6664_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_42_secret(x),
            self.logic.r6664_condition
        )


    def test_r6665_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)
        self.state_manager.world_manager.set_42_secret(True)

        self.assertFalse(self.logic.r6665_condition())

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)
        self.state_manager.world_manager.set_42_secret(False)

        self.assertTrue(self.logic.r6665_condition())


    def test_r7056_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r7056_condition
        )


    def test_r7057_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r7057_condition
        )


    def test_r7058_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_quip(x),
            self.logic.r7058_condition
        )


    def test_r11985_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_evil_ingress_teeth_1(x),
            self.logic.r11985_condition
        )


    def test_r11986_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_good_ingress_teeth_1(x),
            self.logic.r11986_condition
        )


    def test_r11988_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_good_ingress_teeth_1(x),
            self.logic.r11988_condition
        )


    def test_r11989_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_evil_ingress_teeth_1(x),
            self.logic.r11989_condition
        )


    def test_r11990_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_good_ingress_teeth_1(x),
            self.logic.r11990_condition
        )


    def test_r11991_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_evil_ingress_teeth_1(x),
            self.logic.r11991_condition
        )


    def test_r12855_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_mimir(x),
            self.logic.r12855_condition
        )


    def test_r12858_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_mimir(x),
            self.logic.r12858_condition
        )


    def test_r13774_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_chaosmen(x),
            self.logic.r13774_condition
        )


    def test_r13775_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_chaosmen(x),
            self.logic.r13775_condition
        )


    def test_r13776_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_chaosmen(x),
            self.logic.r13776_condition
        )


    def test_r13986_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_chaosmen(x),
            self.logic.r13986_condition
        )


    def test_r13987_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_chaosmen(x),
            self.logic.r13987_condition
        )


    def test_r13988_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_chaosmen(x),
            self.logic.r13988_condition
        )


    def test_r13989_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_join_chaosmen(x),
            0,
            self.logic.r13989_condition
        )


    def test_r14275_condition(self):
        self.state_manager.world_manager.set_mortai_contract(False)
        self.state_manager.world_manager.set_coppereyes_contract(-1)

        self.assertFalse(self.logic.r14275_condition())

        self.state_manager.world_manager.set_mortai_contract(True)
        self.state_manager.world_manager.set_coppereyes_contract(1)

        self.assertTrue(self.logic.r14275_condition())


    def test_r14276_condition(self):
        self.state_manager.world_manager.set_mortai_contract(False)
        self.state_manager.world_manager.set_coppereyes_contract(1)

        self.assertFalse(self.logic.r14276_condition())

        self.state_manager.world_manager.set_mortai_contract(True)
        self.state_manager.world_manager.set_coppereyes_contract(0)

        self.assertTrue(self.logic.r14276_condition())


    def test_r14277_condition(self):
        self.state_manager.world_manager.set_mortai_contract(True)
        self.state_manager.world_manager.set_coppereyes_contract(-1)

        self.assertFalse(self.logic.r14277_condition())

        self.state_manager.world_manager.set_mortai_contract(False)
        self.state_manager.world_manager.set_coppereyes_contract(1)

        self.assertTrue(self.logic.r14277_condition())


    def test_r14278_condition(self):
        self.state_manager.world_manager.set_mortai_contract(True)
        self.state_manager.world_manager.set_coppereyes_contract(1)

        self.assertFalse(self.logic.r14278_condition())

        self.state_manager.world_manager.set_mortai_contract(False)
        self.state_manager.world_manager.set_coppereyes_contract(0)

        self.assertTrue(self.logic.r14278_condition())


    def test_s179_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            2,
            self.logic.s179_condition
        )


    def test_r65537_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            1,
            self.logic.r65537_condition
        )


    def test_r16881_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r16881_condition
        )


    def test_r16882_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r16882_condition
        )


    def test_r16884_condition(self):
        self.state_manager.world_manager.set_in_party_annah(False)
        self.state_manager.world_manager.set_tree_a(True)

        self.assertFalse(self.logic.r16884_condition())

        self.state_manager.world_manager.set_in_party_annah(True)
        self.state_manager.world_manager.set_tree_a(False)

        self.assertTrue(self.logic.r16884_condition())


    def test_r16885_condition(self):
        self.state_manager.world_manager.set_in_party_ignus(False)
        self.state_manager.world_manager.set_tree_i(True)

        self.assertFalse(self.logic.r16885_condition())

        self.state_manager.world_manager.set_in_party_ignus(True)
        self.state_manager.world_manager.set_tree_i(False)

        self.assertTrue(self.logic.r16885_condition())


    def test_r16886_condition(self):
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_tree_g(True)

        self.assertFalse(self.logic.r16886_condition())

        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_tree_g(False)

        self.assertTrue(self.logic.r16886_condition())


    def test_r16887_condition(self):
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_tree_d(True)

        self.assertFalse(self.logic.r16887_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_tree_d(False)

        self.assertTrue(self.logic.r16887_condition())


    def test_r16888_condition(self):
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_tree_d(True)
        self.state_manager.world_manager.set_dakkon_slave(False)

        self.assertFalse(self.logic.r16888_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_tree_d(False)
        self.state_manager.world_manager.set_dakkon_slave(True)

        self.assertTrue(self.logic.r16888_condition())


    def test_r16889_condition(self):
        self.state_manager.world_manager.set_in_party_nordom(False)
        self.state_manager.world_manager.set_tree_n(True)

        self.assertFalse(self.logic.r16889_condition())

        self.state_manager.world_manager.set_in_party_nordom(True)
        self.state_manager.world_manager.set_tree_n(False)

        self.assertTrue(self.logic.r16889_condition())


    def test_r16890_condition(self):
        self.state_manager.world_manager.set_in_party_vhail(False)
        self.state_manager.world_manager.set_tree_v(True)

        self.assertFalse(self.logic.r16890_condition())

        self.state_manager.world_manager.set_in_party_vhail(True)
        self.state_manager.world_manager.set_tree_v(False)

        self.assertTrue(self.logic.r16890_condition())


    def test_r16893_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_tree_m(True)

        self.assertFalse(self.logic.r16893_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_tree_m(False)

        self.assertTrue(self.logic.r16893_condition())


    def test_r16894_condition(self):
        self.state_manager.world_manager.set_in_party_annah(False)
        self.state_manager.world_manager.set_tree_a(True)

        self.assertFalse(self.logic.r16894_condition())

        self.state_manager.world_manager.set_in_party_annah(True)
        self.state_manager.world_manager.set_tree_a(False)

        self.assertTrue(self.logic.r16894_condition())


    def test_r16895_condition(self):
        self.state_manager.world_manager.set_in_party_ignus(False)
        self.state_manager.world_manager.set_tree_i(True)

        self.assertFalse(self.logic.r16895_condition())

        self.state_manager.world_manager.set_in_party_ignus(True)
        self.state_manager.world_manager.set_tree_i(False)

        self.assertTrue(self.logic.r16895_condition())


    def test_r16896_condition(self):
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_tree_g(True)

        self.assertFalse(self.logic.r16896_condition())

        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_tree_g(False)

        self.assertTrue(self.logic.r16896_condition())


    def test_r16897_condition(self):
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_tree_d(True)

        self.assertFalse(self.logic.r16897_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_tree_d(False)

        self.assertTrue(self.logic.r16897_condition())


    def test_r16898_condition(self):
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_tree_d(True)
        self.state_manager.world_manager.set_dakkon_slave(False)

        self.assertFalse(self.logic.r16898_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_tree_d(False)
        self.state_manager.world_manager.set_dakkon_slave(True)

        self.assertTrue(self.logic.r16898_condition())


    def test_r16899_condition(self):
        self.state_manager.world_manager.set_in_party_vhail(False)
        self.state_manager.world_manager.set_tree_v(True)

        self.assertFalse(self.logic.r16899_condition())

        self.state_manager.world_manager.set_in_party_vhail(True)
        self.state_manager.world_manager.set_tree_v(False)

        self.assertTrue(self.logic.r16899_condition())


    def test_r17583_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_annah(x),
            self.logic.r17583_condition
        )


    def test_r17584_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            39,
            self.logic.r17584_condition
        )


    def test_r17585_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            39,
            self.logic.r17585_condition
        )


    def test_r17586_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            39,
            self.logic.r17586_condition
        )


    def test_r17587_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            40,
            self.logic.r17587_condition
        )


    def test_r17588_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            40,
            self.logic.r17588_condition
        )


    def test_r18820_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            4,
            self.logic.r18820_condition
        )


    def test_r18821_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            49,
            self.logic.r18821_condition
        )


    def test_r18822_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            99,
            self.logic.r18822_condition
        )


    def test_r18823_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            499,
            self.logic.r18823_condition
        )


    def test_r18824_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            5,
            self.logic.r18824_condition
        )


    def test_r18829_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r18829_condition
        )


    def test_r18830_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r18830_condition
        )


    def test_r18833_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            4,
            self.logic.r18833_condition
        )


    def test_r18834_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            9,
            self.logic.r18834_condition
        )


    def test_r18835_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            49,
            self.logic.r18835_condition
        )


    def test_r18836_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            99,
            self.logic.r18836_condition
        )


    def test_r19668_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r19668_condition
        )


    def test_r19669_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r19669_condition
        )


    def test_r19670_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r19670_condition
        )


    def test_r19671_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r19671_condition
        )


    def test_r20612_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_know_marta_work(x),
            3,
            self.logic.r20612_condition
        )


    def test_r20613_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_marta_work(x),
            2,
            self.logic.r20613_condition
        )


    def test_r24697_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r24697_condition
        )


    def test_r24698_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r24698_condition
        )


    def test_r24699_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r24699_condition
        )


    def test_r24700_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)

        self.assertFalse(self.logic.r24700_condition())

        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)

        self.assertTrue(self.logic.r24700_condition())


    def test_r24701_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r24701_condition
        )


    def test_s244_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            2,
            self.logic.s244_condition
        )


    def test_r66902_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            1,
            self.logic.r66902_condition
        )


    def test_r25967_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r25967_condition
        )


    def test_r27316_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r27316_condition
        )


    def test_s268_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            2,
            self.logic.s268_condition
        )


    def test_r65536_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            1,
            self.logic.r65536_condition
        )


    def test_r27916_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r27916_condition
        )


    def test_r28038_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(1)

        self.assertFalse(self.logic.r28038_condition())

        self.state_manager.world_manager.set_malmaner(3)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertTrue(self.logic.r28038_condition())


    def test_r28039_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(1)

        self.assertFalse(self.logic.r28039_condition())

        self.state_manager.world_manager.set_malmaner(3)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertTrue(self.logic.r28039_condition())


    def test_r28040_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertFalse(self.logic.r28040_condition())

        self.state_manager.world_manager.set_malmaner(3)
        self.state_manager.world_manager.set_chaotic_malmaner_1(1)

        self.assertTrue(self.logic.r28040_condition())


    def test_r28044_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertFalse(self.logic.r28044_condition())

        self.state_manager.world_manager.set_malmaner(3)
        self.state_manager.world_manager.set_chaotic_malmaner_1(1)

        self.assertTrue(self.logic.r28044_condition())


    def test_r28045_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(3)

        self.assertFalse(self.logic.r28045_condition())

        self.state_manager.world_manager.set_malmaner(5)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertTrue(self.logic.r28045_condition())


    def test_r28046_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(3)

        self.assertFalse(self.logic.r28046_condition())

        self.state_manager.world_manager.set_malmaner(5)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertTrue(self.logic.r28046_condition())


    def test_r28047_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertFalse(self.logic.r28047_condition())

        self.state_manager.world_manager.set_malmaner(5)
        self.state_manager.world_manager.set_chaotic_malmaner_1(3)

        self.assertTrue(self.logic.r28047_condition())


    def test_r28048_condition(self):
        self.state_manager.world_manager.set_malmaner(0)
        self.state_manager.world_manager.set_chaotic_malmaner_1(0)

        self.assertFalse(self.logic.r28048_condition())

        self.state_manager.world_manager.set_malmaner(5)
        self.state_manager.world_manager.set_chaotic_malmaner_1(3)

        self.assertTrue(self.logic.r28048_condition())


    def test_r28744_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r28744_condition
        )


    def test_r28745_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 15

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r28745_condition
        )


    def test_r28967_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r28967_condition
        )


    def test_r28968_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_cw_sal_hint(x),
            self.logic.r28968_condition
        )


    def test_r28971_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_cw_sal_hint(x),
            self.logic.r28971_condition
        )


    def test_r28975_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_cw_sal_hint(x),
            self.logic.r28975_condition
        )


    def test_r28980_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_ravel(x),
            self.logic.r28980_condition
        )


    def test_r30822_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 9

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r30822_condition
        )


    def test_r30823_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 8

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r30823_condition
        )


    def test_r30824_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 8

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r30824_condition
        )


    def test_r30825_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_able(x),
            self.logic.r30825_condition
        )


    def test_r30826_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_able(x),
            self.logic.r30826_condition
        )


    def test_r65541_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_talent(x),
            self.logic.r65541_condition
        )


    def test_r65542_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_talent(x),
            self.logic.r65542_condition
        )


    def test_r65543_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_tattoo_xp(x),
            self.logic.r65543_condition
        )


    def test_r65545_condition(self):
        self.state_manager.world_manager.set_know_mimir(False)
        self.state_manager.world_manager.set_morte_story(True)

        self.assertFalse(self.logic.r65545_condition())

        self.state_manager.world_manager.set_know_mimir(True)
        self.state_manager.world_manager.set_morte_story(False)

        self.assertTrue(self.logic.r65545_condition())


    def test_r65546_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_story(x),
            self.logic.r65546_condition
        )


    def test_r65547_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            1,
            self.logic.r65547_condition
        )


    def test_r65548_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_blood_war(x),
            self.logic.r65548_condition
        )


    def test_r65549_condition(self):
        self.state_manager.world_manager.set_know_ravel(False)
        self.state_manager.world_manager.set_ravel(1)

        self.assertFalse(self.logic.r65549_condition())

        self.state_manager.world_manager.set_know_ravel(True)
        self.state_manager.world_manager.set_ravel(0)

        self.assertTrue(self.logic.r65549_condition())


    def test_r35344_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35344_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35344_condition())


    def test_r35352_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35352_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35352_condition())


    def test_r35355_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_manager.pick_item('has_prybar') if x else self.state_manager.inventory_manager.drop_item('has_prybar'),
            self.logic.r35355_condition
        )


    def test_r35358_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35358_condition
        )


    def test_r35359_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35359_condition
        )


    def test_r35421_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35421_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35421_condition())


    def test_r35429_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35429_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35429_condition())


    def test_r35432_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_manager.pick_item('has_prybar') if x else self.state_manager.inventory_manager.drop_item('has_prybar'),
            self.logic.r35432_condition
        )


    def test_r35435_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35435_condition
        )


    def test_r35436_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35436_condition
        )


    def test_r35498_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35498_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35498_condition())


    def test_r35506_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35506_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35506_condition())


    def test_r35509_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_manager.pick_item('has_prybar') if x else self.state_manager.inventory_manager.drop_item('has_prybar'),
            self.logic.r35509_condition
        )


    def test_r35512_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35512_condition
        )


    def test_r35513_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35513_condition
        )


    def test_r35575_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 13

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35575_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength - 1)

        self.assertTrue(self.logic.r35575_condition())


    def test_r35583_condition(self):
        who_strength = 'protagonist_character_name'
        prop_strength = 'strength'
        delta_strength = 12

        self.state_manager.inventory_manager.pick_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength)

        self.assertFalse(self.logic.r35583_condition())

        self.state_manager.inventory_manager.drop_item('has_prybar')
        self.state_manager.characters_manager.set_property(who_strength, prop_strength, delta_strength + 1)

        self.assertTrue(self.logic.r35583_condition())


    def test_r35586_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_manager.pick_item('has_prybar') if x else self.state_manager.inventory_manager.drop_item('has_prybar'),
            self.logic.r35586_condition
        )


    def test_r35589_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35589_condition
        )


    def test_r35590_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_skel_mort_quip(x),
            self.logic.r35590_condition
        )


    def test_r40069_condition(self):
        max_health_before = 24
        current_health_before = 12
        max_health_after = 24
        current_health_after = 24

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', max_health_before)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'current_health', current_health_before)

        self.assertFalse(self.logic.r40069_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', max_health_after)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'current_health', current_health_after)

        self.assertTrue(self.logic.r40069_condition())


    def test_r40070_condition(self):
        max_health_before = 24
        current_health_before = 8
        max_health_after = 24
        current_health_after = 16

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', max_health_before)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'current_health', current_health_before)

        self.assertFalse(self.logic.r40070_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', max_health_after)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'current_health', current_health_after)

        self.assertTrue(self.logic.r40070_condition())


    def test_r40071_condition(self):
        max_health_before = 24
        current_health_before = 16
        max_health_after = 24
        current_health_after = 8

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', max_health_before)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'current_health', current_health_before)

        self.assertFalse(self.logic.r40071_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', max_health_after)
        self.state_manager.characters_manager.set_property('protagonist_character_name', 'current_health', current_health_after)

        self.assertTrue(self.logic.r40071_condition())


    def test_r40077_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_nenny(x),
            2,
            self.logic.r40077_condition
        )


    def test_r40078_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_nenny(x),
            2,
            self.logic.r40078_condition
        )


    def test_r40079_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_nenny(x),
            1,
            self.logic.r40079_condition
        )


    def test_r40080_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_nenny(x),
            1,
            self.logic.r40080_condition
        )


    def test_r41842_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41842_condition
        )


    def test_r41843_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41843_condition
        )


    def test_r41845_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41845_condition
        )


    def test_r41846_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_manager.pick_item('has_bandages') if x else self.state_manager.inventory_manager.drop_item('has_bandages'),
            self.logic.r41846_condition
        )


    def test_r41847_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41847_condition
        )


    def test_r41848_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41848_condition
        )


    def test_r41852_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41852_condition
        )


    def test_r41853_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41853_condition
        )


    def test_r41857_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41857_condition
        )


    def test_r41858_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41858_condition
        )


    def test_r41862_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41862_condition
        )


    def test_r41863_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41863_condition
        )


    def test_r41867_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41867_condition
        )


    def test_r41868_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41868_condition
        )


    def test_r41871_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41871_condition
        )


    def test_r41872_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41872_condition
        )


    def test_r41875_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41875_condition
        )


    def test_r41876_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41876_condition
        )


    def test_r41880_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41880_condition
        )


    def test_r41881_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41881_condition
        )


    def test_r41884_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41884_condition
        )


    def test_r41885_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41885_condition
        )


    def test_r41888_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41888_condition
        )


    def test_r41889_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41889_condition
        )


    def test_r41892_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41892_condition
        )


    def test_r41893_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41893_condition
        )


    def test_r41900_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r41900_condition
        )


    def test_r41921_condition(self):
        self.state_manager.world_manager.set_story_reekwind_curse(False)
        self.state_manager.world_manager.set_jumble_reekwind(True)

        self.assertFalse(self.logic.r41921_condition())

        self.state_manager.world_manager.set_story_reekwind_curse(True)
        self.state_manager.world_manager.set_jumble_reekwind(False)

        self.assertTrue(self.logic.r41921_condition())


    def test_r67864_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_jumble_reekwind(x),
            self.logic.r67864_condition
        )


    def test_r43909_condition(self):
        self.state_manager.inventory_manager.drop_all_items('has_decant')
        self.state_manager.world_manager.set_seek_word(0)

        self.assertFalse(self.logic.r43909_condition())

        self.state_manager.inventory_manager.pick_item('has_decant')
        self.state_manager.world_manager.set_seek_word(1)

        self.assertTrue(self.logic.r43909_condition())


    def test_r43910_condition(self):
        self.state_manager.world_manager.set_aelwyn(0)
        self.state_manager.world_manager.set_dead_aelwyn(True)

        self.assertFalse(self.logic.r43910_condition())

        self.state_manager.world_manager.set_aelwyn(2)
        self.state_manager.world_manager.set_dead_aelwyn(False)

        self.assertTrue(self.logic.r43910_condition())


    def test_r43911_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_aelwyn(x),
            2,
            self.logic.r43911_condition
        )


    def test_r43917_condition(self):
        self.state_manager.inventory_manager.drop_all_items('has_decant')
        self.state_manager.world_manager.set_seek_word(0)

        self.assertFalse(self.logic.r43917_condition())

        self.state_manager.inventory_manager.pick_item('has_decant')
        self.state_manager.world_manager.set_seek_word(1)

        self.assertTrue(self.logic.r43917_condition())


    def test_r43918_condition(self):
        self.state_manager.world_manager.set_aelwyn(0)
        self.state_manager.world_manager.set_dead_aelwyn(True)

        self.assertFalse(self.logic.r43918_condition())

        self.state_manager.world_manager.set_aelwyn(2)
        self.state_manager.world_manager.set_dead_aelwyn(False)

        self.assertTrue(self.logic.r43918_condition())


    def test_r43919_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_aelwyn(x),
            2,
            self.logic.r43919_condition
        )


    def test_r50325_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r50325_condition
        )


    def test_r50328_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r50328_condition
        )


    def test_r50329_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_lady(x),
            self.logic.r50329_condition
        )


    def test_r52577_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_grace(x),
            self.logic.r52577_condition
        )


    def test_r52578_condition(self):
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertFalse(self.logic.r52578_condition())

        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertTrue(self.logic.r52578_condition())


    def test_r52579_condition(self):
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertFalse(self.logic.r52579_condition())

        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertTrue(self.logic.r52579_condition())


    def test_r53625_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_story(x),
            self.logic.r53625_condition
        )


    def test_r53627_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_story(x),
            self.logic.r53627_condition
        )


    def test_r53662_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_annah(x),
            self.logic.r53662_condition
        )


    def test_r53663_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_annah(x),
            self.logic.r53663_condition
        )


    def test_s518_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_dakkon(x),
            self.logic.s518_condition
        )


    def test_r54105_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_dakkon(x),
            self.logic.r54105_condition
        )


    def test_r53825_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_grace(x),
            self.logic.r53825_condition
        )


    def test_r53826_condition(self):
        self.state_manager.world_manager.set_in_party_annah(False)
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertFalse(self.logic.r53826_condition())

        self.state_manager.world_manager.set_in_party_annah(True)
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertTrue(self.logic.r53826_condition())


    def test_r53827_condition(self):
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertFalse(self.logic.r53827_condition())

        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertTrue(self.logic.r53827_condition())


    def test_r53832_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_specialist(x),
            4,
            self.logic.r53832_condition
        )


    def test_r53833_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_specialist(x),
            5,
            self.logic.r53833_condition
        )


    def test_r53834_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_specialist(x),
            6,
            self.logic.r53834_condition
        )


    def test_r53835_condition(self):
        self.state_manager.world_manager.set_specialist(4)
        self.state_manager.world_manager.set_specialist(5)
        self.state_manager.world_manager.set_specialist(6)

        self.assertFalse(self.logic.r53835_condition())

        self.state_manager.world_manager.set_specialist(0)
        self.state_manager.world_manager.set_specialist(0)
        self.state_manager.world_manager.set_specialist(0)

        self.assertTrue(self.logic.r53835_condition())


    def test_r53836_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_where_fhjull(x),
            self.logic.r53836_condition
        )


    def test_r53837_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.drop_all_items('has_cube')

        self.assertFalse(self.logic.r53837_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.pick_item('has_cube')

        self.assertTrue(self.logic.r53837_condition())


    def test_r53838_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertFalse(self.logic.r53838_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertTrue(self.logic.r53838_condition())


    def test_r53839_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertFalse(self.logic.r53839_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertTrue(self.logic.r53839_condition())


    def test_r53840_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertFalse(self.logic.r53840_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertTrue(self.logic.r53840_condition())


    def test_r53844_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_where_fhjull(x),
            self.logic.r53844_condition
        )


    def test_r53863_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.drop_all_items('has_cube')

        self.assertFalse(self.logic.r53863_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.pick_item('has_cube')

        self.assertTrue(self.logic.r53863_condition())


    def test_r53864_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertFalse(self.logic.r53864_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertTrue(self.logic.r53864_condition())


    def test_r53865_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertFalse(self.logic.r53865_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertTrue(self.logic.r53865_condition())


    def test_r53866_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertFalse(self.logic.r53866_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertTrue(self.logic.r53866_condition())


    def test_r53851_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_where_fhjull(x),
            self.logic.r53851_condition
        )


    def test_r53852_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.drop_all_items('has_cube')

        self.assertFalse(self.logic.r53852_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.pick_item('has_cube')

        self.assertTrue(self.logic.r53852_condition())


    def test_r53853_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertFalse(self.logic.r53853_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertTrue(self.logic.r53853_condition())


    def test_r53854_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertFalse(self.logic.r53854_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertTrue(self.logic.r53854_condition())


    def test_r53855_condition(self):
        self.state_manager.world_manager.set_where_fhjull(False)
        self.state_manager.inventory_manager.pick_item('has_cube')
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_annah(True)

        self.assertFalse(self.logic.r53855_condition())

        self.state_manager.world_manager.set_where_fhjull(True)
        self.state_manager.inventory_manager.drop_all_items('has_cube')
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_annah(False)

        self.assertTrue(self.logic.r53855_condition())


    def test_r54165_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_dakkon(x),
            self.logic.r54165_condition
        )


    def test_r54166_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r54166_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)

        self.assertTrue(self.logic.r54166_condition())


    def test_r54167_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 14

        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r54167_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

        self.assertTrue(self.logic.r54167_condition())


    def test_r54172_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_dakkon(x),
            self.logic.r54172_condition
        )


    def test_r54173_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r54173_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)

        self.assertTrue(self.logic.r54173_condition())


    def test_r54174_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 14

        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r54174_condition())

        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

        self.assertTrue(self.logic.r54174_condition())


    def test_r54179_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54179_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54179_condition())


    def test_r54180_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54180_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54180_condition())


    def test_r54189_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54189_condition
        )


    def test_r54190_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54190_condition
        )


    def test_r54191_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54191_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54191_condition())


    def test_r54192_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54192_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54192_condition())


    def test_r54194_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54194_condition
        )


    def test_r54195_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54195_condition
        )


    def test_r54196_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54196_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54196_condition())


    def test_r54197_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54197_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54197_condition())


    def test_r54200_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54200_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54200_condition())


    def test_r54201_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54201_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54201_condition())


    def test_r54204_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54204_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54204_condition())


    def test_r54205_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54205_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54205_condition())


    def test_r54207_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54207_condition
        )


    def test_r54208_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54208_condition
        )


    def test_r54209_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54209_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54209_condition())


    def test_r54210_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54210_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54210_condition())


    def test_r54213_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54213_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54213_condition())


    def test_r54214_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54214_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54214_condition())


    def test_r54217_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54217_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54217_condition())


    def test_r54218_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54218_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54218_condition())


    def test_r54220_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 15

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_in_party_dakkon(False)

        self.assertFalse(self.logic.r54220_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_in_party_dakkon(True)

        self.assertTrue(self.logic.r54220_condition())


    def test_r54221_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 15

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_dakkon(-1)

        self.assertFalse(self.logic.r54221_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_dakkon(1)

        self.assertTrue(self.logic.r54221_condition())


    def test_r54223_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 15

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_dakkon(1)

        self.assertFalse(self.logic.r54223_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_dakkon(0)

        self.assertTrue(self.logic.r54223_condition())


    def test_r54226_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54226_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54226_condition())


    def test_r54227_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54227_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54227_condition())


    def test_r54230_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra(x),
            0,
            self.logic.r54230_condition
        )


    def test_r54231_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_deionarra(x),
            0,
            self.logic.r54231_condition
        )


    def test_r54232_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54232_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54232_condition())


    def test_r54233_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54233_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54233_condition())


    def test_r54235_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra(x),
            0,
            self.logic.r54235_condition
        )


    def test_r54236_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_deionarra(x),
            0,
            self.logic.r54236_condition
        )


    def test_r54237_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54237_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54237_condition())


    def test_r54238_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54238_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54238_condition())


    def test_r54241_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54241_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54241_condition())


    def test_r54242_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54242_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54242_condition())


    def test_r54245_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54245_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54245_condition())


    def test_r54246_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54246_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54246_condition())


    def test_r54250_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_bd_morte_morale(x),
            5,
            self.logic.r54250_condition
        )


    def test_r54252_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_bd_morte_morale(x),
            6,
            self.logic.r54252_condition
        )


    def test_r54255_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54255_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54255_condition())


    def test_r54262_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54262_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54262_condition())


    def test_r54264_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r54264_condition
        )


    def test_r54266_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54266_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54266_condition())


    def test_r54267_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54267_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54267_condition())


    def test_r54269_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r54269_condition
        )


    def test_r54271_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54271_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54271_condition())


    def test_r54272_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54272_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54272_condition())


    def test_r54275_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.logic.r54275_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertTrue(self.logic.r54275_condition())


    def test_r54276_condition(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(0)
        self.state_manager.world_manager.set_in_party_morte(True)

        self.assertFalse(self.logic.r54276_condition())

        self.state_manager.world_manager.set_morte_quip_regret_portal(2)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertTrue(self.logic.r54276_condition())


    def test_r54278_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_morale_fortress_portal(True)

        self.assertFalse(self.logic.r54278_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_morale_fortress_portal(False)

        self.assertTrue(self.logic.r54278_condition())


    def test_r54279_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54279_condition
        )


    def test_r54280_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54280_condition
        )


    def test_r54282_condition(self):
        self.state_manager.world_manager.set_ravel_grace(-1)
        self.state_manager.world_manager.set_ravel_morte(-1)
        self.state_manager.world_manager.set_torment_fell(3)
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertFalse(self.logic.r54282_condition())

        self.state_manager.world_manager.set_ravel_grace(1)
        self.state_manager.world_manager.set_ravel_morte(1)
        self.state_manager.world_manager.set_torment_fell(1)
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertTrue(self.logic.r54282_condition())


    def test_r54283_condition(self):
        self.state_manager.world_manager.set_ravel_grace(-1)
        self.state_manager.world_manager.set_ravel_morte(-1)
        self.state_manager.world_manager.set_torment_fell(0)
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertFalse(self.logic.r54283_condition())

        self.state_manager.world_manager.set_ravel_grace(1)
        self.state_manager.world_manager.set_ravel_morte(1)
        self.state_manager.world_manager.set_torment_fell(2)
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertTrue(self.logic.r54283_condition())


    def test_r54284_condition(self):
        self.state_manager.world_manager.set_ravel_morte(-1)
        self.state_manager.world_manager.set_torment_fell(3)
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertFalse(self.logic.r54284_condition())

        self.state_manager.world_manager.set_ravel_morte(1)
        self.state_manager.world_manager.set_torment_fell(1)
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertTrue(self.logic.r54284_condition())


    def test_r54285_condition(self):
        self.state_manager.world_manager.set_ravel_morte(-1)
        self.state_manager.world_manager.set_torment_fell(0)
        self.state_manager.world_manager.set_in_party_grace(True)

        self.assertFalse(self.logic.r54285_condition())

        self.state_manager.world_manager.set_ravel_morte(1)
        self.state_manager.world_manager.set_torment_fell(2)
        self.state_manager.world_manager.set_in_party_grace(False)

        self.assertTrue(self.logic.r54285_condition())


    def test_r54286_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_ravel_morte(x),
            0,
            self.logic.r54286_condition
        )


    def test_r54832_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54832_condition
        )


    def test_r54833_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54833_condition
        )


    def test_r54835_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54835_condition
        )


    def test_r54836_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54836_condition
        )


    def test_r54838_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54838_condition
        )


    def test_r54839_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r54839_condition
        )


    def test_s576_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_grace(x),
            self.logic.s576_condition
        )


    def test_r55849_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_grace(x),
            self.logic.r55849_condition
        )


    def test_r55850_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_grace(x),
            self.logic.r55850_condition
        )


    def test_s578_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_grace(x),
            self.logic.s578_condition
        )


    def test_r55875_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r55875_condition
        )


    def test_r61411_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            499,
            self.logic.r61411_condition
        )


    def test_r61412_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_gold(x),
            500,
            self.logic.r61412_condition
        )


    def test_r65554_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_warning(x),
            self.logic.r65554_condition
        )


    def test_r65558_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_pharod(x),
            0,
            self.logic.r65558_condition
        )


    def test_r65559_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_pharod(x),
            0,
            self.logic.r65559_condition
        )


    def test_s651_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_tattoo_xp(x),
            self.logic.s651_condition
        )


    def test_r65566_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_warning(x),
            self.logic.r65566_condition
        )


    def test_r65565_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_journal(x),
            self.logic.r65565_condition
        )


    def test_r65569_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_tattoo_xp(x),
            self.logic.r65569_condition
        )


    def test_r65570_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_tattoo_xp(x),
            self.logic.r65570_condition
        )


    def test_r65613_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_stolen(x),
            2,
            self.logic.r65613_condition
        )


    def test_r65622_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_stolen(x),
            2,
            self.logic.r65622_condition
        )


    def test_r65627_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_stolen(x),
            2,
            self.logic.r65627_condition
        )


    def test_r65639_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_pharod(x),
            0,
            self.logic.r65639_condition
        )


    def test_r65640_condition(self):
        self.state_manager.world_manager.set_pharod(0)
        self.state_manager.world_manager.set_pharod_quest(0)

        self.assertFalse(self.logic.r65640_condition())

        self.state_manager.world_manager.set_pharod(1)
        self.state_manager.world_manager.set_pharod_quest(1)

        self.assertTrue(self.logic.r65640_condition())


    def test_r65641_condition(self):
        location_AR0401 = 'alley_of_lingering_sighs' # AR0401

        self.state_manager.world_manager.set_pharod_quest(0)
        self.state_manager.locations_manager.set_location(location_AR0401)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0401))

        self.assertFalse(self.logic.r65641_condition())

        self.reset_stores()
        self.state_manager.world_manager.set_pharod_quest(2)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0401))

        self.assertTrue(self.logic.r65641_condition())


    def test_r65642_condition(self):
        location_AR0401 = 'alley_of_lingering_sighs' # AR0401
        location_AR0500 = 'lower_ward' # AR0500

        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0401))
        self.state_manager.locations_manager.set_location(location_AR0500)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0500))

        self.assertFalse(self.logic.r65642_condition())

        self.reset_stores()
        self.state_manager.locations_manager.set_location(location_AR0401)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0401))
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0500))

        self.assertTrue(self.logic.r65642_condition())


    def test_r65643_condition(self):
        location_AR0500 = 'lower_ward' # AR0500

        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0500))
        self.state_manager.world_manager.set_know_ravel(True)

        self.assertFalse(self.logic.r65643_condition())

        self.state_manager.locations_manager.set_location(location_AR0500)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0500))
        self.state_manager.world_manager.set_know_ravel(False)

        self.assertTrue(self.logic.r65643_condition())


    def test_r65644_condition(self):
        self.state_manager.world_manager.set_know_ravel(False)
        self.state_manager.world_manager.set_know_ravel_key(1)

        self.assertFalse(self.logic.r65644_condition())

        self.state_manager.world_manager.set_know_ravel(True)
        self.state_manager.world_manager.set_know_ravel_key(0)

        self.assertTrue(self.logic.r65644_condition())


    def test_r65645_condition(self):
        location_AR0610 = 'ravels_maze' # AR0610

        self.state_manager.world_manager.set_know_ravel(False)
        self.state_manager.world_manager.set_know_ravel_key(-1)
        self.state_manager.locations_manager.set_location(location_AR0610)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0610))

        self.assertFalse(self.logic.r65645_condition())

        self.reset_stores()
        self.state_manager.world_manager.set_know_ravel(True)
        self.state_manager.world_manager.set_know_ravel_key(1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0610))

        self.assertTrue(self.logic.r65645_condition())


    def test_r65646_condition(self):
        location_AR0610 = 'ravels_maze' # AR0610
        location_AR0700 = 'outer_curst' # AR0700

        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0610))
        self.state_manager.locations_manager.set_location(location_AR0700)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0700))

        self.assertFalse(self.logic.r65646_condition())

        self.reset_stores()
        self.state_manager.locations_manager.set_location(location_AR0610)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0610))
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0700))

        self.assertTrue(self.logic.r65646_condition())


    def test_r65647_condition(self):
        self._is_visited_external_location_condition(
            'outer_curst', # 'AR0700'
            self.logic.r65647_condition
        )


    def test_r65666_condition(self):
        self._not_is_visited_external_location_condition(
            'civic_festhall', # 'AR0601'
            self.logic.r65666_condition
        )


    def test_r65674_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_know_ravel_key(x),
            1,
            self.logic.r65674_condition
        )


    def test_r65693_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_pharod(x),
            0,
            self.logic.r65693_condition
        )


    def test_r65700_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_grace_silver_mimir(x),
            self.logic.r65700_condition
        )


    def test_r65708_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_grace_smell_mimir(x),
            self.logic.r65708_condition
        )


    def test_r65709_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_tattoo_xp(x),
            self.logic.r65709_condition
        )


    def test_r65718_condition(self):
        location_AR1000 = 'baator' # AR1000

        self.state_manager.world_manager.set_grace_smell_mimir(False)
        self.state_manager.locations_manager.set_location(location_AR1000)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR1000))

        self.assertFalse(self.logic.r65718_condition())

        self.reset_stores()
        self.state_manager.world_manager.set_grace_smell_mimir(True)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR1000))

        self.assertTrue(self.logic.r65718_condition())


    def test_r65719_condition(self):
        location_AR1000 = 'baator' # AR1000

        self.state_manager.world_manager.set_grace_smell_mimir(False)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR1000))

        self.assertFalse(self.logic.r65719_condition())

        self.state_manager.world_manager.set_grace_smell_mimir(True)
        self.state_manager.locations_manager.set_location(location_AR1000)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR1000))

        self.assertTrue(self.logic.r65719_condition())


    def test_r65738_condition(self):
        who = 'protagonist_character_name'
        prop = 'wisdom'
        value = 13

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r65738_condition
        )


    def test_r65739_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65739_condition
        )


    def test_r65740_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65740_condition
        )


    def test_r65743_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65743_condition
        )


    def test_r65744_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65744_condition
        )


    def test_r65747_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65747_condition
        )


    def test_r65748_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65748_condition
        )


    def test_r65750_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_chaotic_morte_1(x),
            self.logic.r65750_condition
        )


    def test_r65751_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_lawful_morte_1(x),
            self.logic.r65751_condition
        )


    def test_r65754_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65754_condition
        )


    def test_r65755_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65755_condition
        )


    def test_r65759_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65759_condition
        )


    def test_r65760_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65760_condition
        )


    def test_r65774_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_memory_morte_pillar(x),
            self.logic.r65774_condition
        )


    def test_r65775_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_memory_morte_pillar(x),
            self.logic.r65775_condition
        )


    def test_r65778_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65778_condition
        )


    def test_r65779_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65779_condition
        )


    def test_r65782_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65782_condition
        )


    def test_r65783_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65783_condition
        )


    def test_r65786_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65786_condition
        )


    def test_r65787_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65787_condition
        )


    def test_r65790_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65790_condition
        )


    def test_r65791_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65791_condition
        )


    def test_r65794_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65794_condition
        )


    def test_r65795_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65795_condition
        )


    def test_r65798_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65798_condition
        )


    def test_r65799_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65799_condition
        )


    def test_r65801_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65801_condition
        )


    def test_r65802_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65802_condition
        )


    def test_r65803_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65803_condition
        )


    def test_r66347_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_morte_talent(x),
            self.logic.r66347_condition
        )


    def test_r66348_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_talent(x),
            self.logic.r66348_condition
        )


    def test_r66349_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_tattoo_xp(x),
            self.logic.r66349_condition
        )


    def test_r66351_condition(self):
        self.state_manager.world_manager.set_know_mimir(False)
        self.state_manager.world_manager.set_morte_story(True)

        self.assertFalse(self.logic.r66351_condition())

        self.state_manager.world_manager.set_know_mimir(True)
        self.state_manager.world_manager.set_morte_story(False)

        self.assertTrue(self.logic.r66351_condition())


    def test_r66352_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_story(x),
            self.logic.r66352_condition
        )


    def test_r66353_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_pillar(x),
            1,
            self.logic.r66353_condition
        )


    def test_r66354_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_blood_war(x),
            self.logic.r66354_condition
        )


    def test_r66355_condition(self):
        self.state_manager.world_manager.set_know_ravel(False)
        self.state_manager.world_manager.set_ravel(1)

        self.assertFalse(self.logic.r66355_condition())

        self.state_manager.world_manager.set_know_ravel(True)
        self.state_manager.world_manager.set_ravel(0)

        self.assertTrue(self.logic.r66355_condition())


    def test_r68178_condition(self):
        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_party_roof(0)

        self.assertFalse(self.logic.r68178_condition())

        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_party_roof(2)

        self.assertTrue(self.logic.r68178_condition())


    def test_r68189_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(-1)

        self.assertFalse(self.logic.r68189_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(1)

        self.assertTrue(self.logic.r68189_condition())


    def test_r68190_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(-1)

        self.assertFalse(self.logic.r68190_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertTrue(self.logic.r68190_condition())


    def test_r68191_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(-1)

        self.assertFalse(self.logic.r68191_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(1)

        self.assertTrue(self.logic.r68191_condition())


    def test_r68192_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)

        self.assertFalse(self.logic.r68192_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)

        self.assertTrue(self.logic.r68192_condition())


    def test_r68193_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)

        self.assertFalse(self.logic.r68193_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)

        self.assertTrue(self.logic.r68193_condition())


    def test_r68194_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_nordom(-1)

        self.assertFalse(self.logic.r68194_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_vhailor(0)
        self.state_manager.world_manager.set_fortress_nordom(1)

        self.assertTrue(self.logic.r68194_condition())


    def test_r68239_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_nordom(1)

        self.assertFalse(self.logic.r68239_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_vhailor(0)
        self.state_manager.world_manager.set_fortress_nordom(0)

        self.assertTrue(self.logic.r68239_condition())


    def test_r68438_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)
        self.state_manager.world_manager.set_fortress_nordom(1)

        self.assertFalse(self.logic.r68438_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)
        self.state_manager.world_manager.set_fortress_nordom(0)

        self.assertTrue(self.logic.r68438_condition())


    def test_r68439_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_nordom(1)

        self.assertFalse(self.logic.r68439_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)
        self.state_manager.world_manager.set_fortress_vhailor(0)
        self.state_manager.world_manager.set_fortress_nordom(0)

        self.assertTrue(self.logic.r68439_condition())


    def test_r68446_condition(self):
        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)

        self.assertFalse(self.logic.r68446_condition())

        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)

        self.assertTrue(self.logic.r68446_condition())


    def test_r68503_condition(self):
        self.state_manager.world_manager.set_trans_vanish(True)
        self.state_manager.world_manager.set_fortress_party_roof(0)

        self.assertFalse(self.logic.r68503_condition())

        self.state_manager.world_manager.set_trans_vanish(False)
        self.state_manager.world_manager.set_fortress_party_roof(1)

        self.assertTrue(self.logic.r68503_condition())


    def test_r68175_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_annah(x),
            0,
            self.logic.r68175_condition
        )


    def test_r68179_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_dakkon(x),
            0,
            self.logic.r68179_condition
        )


    def test_r68180_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_grace(x),
            0,
            self.logic.r68180_condition
        )


    def test_r68181_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_nordom(x),
            0,
            self.logic.r68181_condition
        )


    def test_r68182_condition(self):
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)

        self.assertFalse(self.logic.r68182_condition())

        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)

        self.assertTrue(self.logic.r68182_condition())


    def test_r68183_condition(self):
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)

        self.assertFalse(self.logic.r68183_condition())

        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)

        self.assertTrue(self.logic.r68183_condition())


    def test_r68319_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_annah(x),
            0,
            self.logic.r68319_condition
        )


    def test_r68320_condition(self):
        self.state_manager.world_manager.set_fortress_dakkon(-1)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertFalse(self.logic.r68320_condition())

        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(0)

        self.assertTrue(self.logic.r68320_condition())


    def test_r68321_condition(self):
        self.state_manager.world_manager.set_fortress_grace(-1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertFalse(self.logic.r68321_condition())

        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)

        self.assertTrue(self.logic.r68321_condition())


    def test_r68322_condition(self):
        self.state_manager.world_manager.set_fortress_nordom(-1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertFalse(self.logic.r68322_condition())

        self.state_manager.world_manager.set_fortress_nordom(1)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)

        self.assertTrue(self.logic.r68322_condition())


    def test_r68323_condition(self):
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)
        self.state_manager.world_manager.set_fortress_nordom(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertFalse(self.logic.r68323_condition())

        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)
        self.state_manager.world_manager.set_fortress_nordom(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)

        self.assertTrue(self.logic.r68323_condition())


    def test_r68324_condition(self):
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_nordom(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertFalse(self.logic.r68324_condition())

        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_nordom(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)

        self.assertTrue(self.logic.r68324_condition())


    def test_r68325_condition(self):
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_nordom(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)

        self.assertFalse(self.logic.r68325_condition())

        self.state_manager.world_manager.set_fortress_vhailor(0)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_nordom(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)

        self.assertTrue(self.logic.r68325_condition())


    def test_r68490_condition(self):
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_nordom(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)

        self.assertFalse(self.logic.r68490_condition())

        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_nordom(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)

        self.assertTrue(self.logic.r68490_condition())


    def test_r68491_condition(self):
        self.state_manager.world_manager.set_fortress_vhailor(-1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(False)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_nordom(1)

        self.assertFalse(self.logic.r68491_condition())

        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_vhailor_battle(True)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_nordom(0)

        self.assertTrue(self.logic.r68491_condition())


    def test_r68492_condition(self):
        self.state_manager.world_manager.set_fortress_ignus(-1)
        self.state_manager.world_manager.set_fortress_ignus_battle(False)
        self.state_manager.world_manager.set_fortress_vhailor(1)
        self.state_manager.world_manager.set_fortress_grace(1)
        self.state_manager.world_manager.set_fortress_dakkon(1)
        self.state_manager.world_manager.set_fortress_annah(1)
        self.state_manager.world_manager.set_fortress_nordom(1)

        self.assertFalse(self.logic.r68492_condition())

        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_ignus_battle(True)
        self.state_manager.world_manager.set_fortress_vhailor(0)
        self.state_manager.world_manager.set_fortress_grace(0)
        self.state_manager.world_manager.set_fortress_dakkon(0)
        self.state_manager.world_manager.set_fortress_annah(0)
        self.state_manager.world_manager.set_fortress_nordom(0)

        self.assertTrue(self.logic.r68492_condition())


class MorteLogicTest(LogicTest):
    def setUp(self):
        super(MorteLogicTest, self).setUp()
        self.logic = MorteLogic(self.state_manager)


    def test_get_know_morte_name(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_morte_name(x),
            self.logic.get_know_morte_name
        )


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_morte_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
