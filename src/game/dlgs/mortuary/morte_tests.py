import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.morte_logic import MorteLogic


class MorteLogicTest(LogicTest):
    def setUp(self):
        super(MorteLogicTest, self).setUp()
        self.logic = MorteLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = MorteLogic
        self._methods_are_bound()


    @unittest.skip('Morte may be located anywhere')
    def test_morte_init(self):
        self._init_with_location( # pragma: no cover
            'DISABLED', # pragma: no cover
            self.logic.morte_init, # pragma: no cover
            self.settings_manager.get_talked_to_morte_times # pragma: no cover
        ) # pragma: no cover


    def test_kill_morte(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_morte,
            self.logic.kill_morte
        )


    def test_r17833_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r17833_action()


    def test_r1088_action(self):
        self._false_then_true_action(
            self.settings_manager.get_read_scars,
            self.logic.r1088_action
        )


    def test_r1079_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1079_action()


    def test_r1845_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_harlot_quip_1,
            self.logic.r1845_action
        )


    def test_r1846_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_harlot_quip_1,
            self.logic.r1846_action
        )


    def test_r1847_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_harlot_quip_1,
            self.logic.r1847_action
        )


    def test_r2080_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r2080_action()


    def test_r9029_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_gith,
            self.logic.r9029_action
        )


    def test_r2603_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r2603_action
        )


    def test_r2602_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r2602_action
        )


    def test_r2605_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r2605_action
        )


    def test_r6952_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_lady,
            self.logic.r6952_action
        )


    def test_r3474_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3474_action
        )


    def test_r3483_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r3483_action
        )


    def test_r3871_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            1,
            self.logic.r3871_action
        )


    def test_r3874_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r3874_action
        )


    def test_r3877_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r3877_action
        )


    def test_r3965_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r3965_action()


    def test_r3966_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r3966_action()


    def test_r3972_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r3972_action
        )


    def test_r3988_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r3988_action
        )


    def test_r4029_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4029_action
        )


    def test_r4144_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            1,
            self.logic.r4144_action
        )


    def test_r4145_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            1,
            self.logic.r4145_action
        )


    def test_r4142_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r4142_action
        )


    def test_r4143_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r4143_action
        )


    def test_r4140_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r4140_action
        )


    def test_r4339_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            1,
            self.logic.r4339_action
        )


    def test_r4342_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r4342_action
        )


    def test_r4345_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r4345_action
        )


    def test_r4676_action(self):
        note_id = '64512'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r4676_action
        )


    def test_r4678_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -3

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4678_action
        )


    def test_r4679_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4679_action
        )


    def test_r4682_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = 3

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4682_action
        )


    def test_r4687_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4687_action()


    def test_r4693_action(self):
        note_id = '64512'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r4693_action
        )


    def test_r4695_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -3

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4695_action
        )


    def test_r4699_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = 3

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4699_action
        )


    def test_r64535_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r64535_action()


    def test_r64534_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r64534_action()


    def test_r5030_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            1,
            self.logic.r5030_action
        )


    def test_r5033_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r5033_action
        )


    def test_r5036_action(self):
        self._integer_equals_action(
            self.settings_manager.get_warning,
            2,
            self.logic.r5036_action
        )


    def test_r6075_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_deionarra_quip_1,
            self.logic.r6075_action
        )


    def test_r6658_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6658_action()


    def test_r6659_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r6659_action()


    def test_r6957_action(self):
        self.settings_manager.set_translate_dabus(1)
        self._integer_equals_action(
            self.settings_manager.get_translate_dabus,
            0,
            self.logic.r6957_action
        )


    def test_r7056_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_zombie_female_bar_quip,
            self.logic.r7056_action
        )


    def test_r7057_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r7057_action
        )


    def test_r7058_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r7058_action
        )


    def test_r7483_action(self):
        self._integer_inc_action(
            self.settings_manager.get_bd_morte_morale,
            1,
            self.logic.r7483_action
        )


    def test_r7485_action(self):
        self._integer_inc_action(
            self.settings_manager.get_morte_taunt,
            1,
            self.logic.r7485_action
        )


    def test_r11977_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r11977_action()


    def test_r11980_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r11980_action()


    def test_r11982_action(self):
        self._integer_dec_action(
            self.settings_manager.get_morale_morte,
            1,
            self.logic.r11982_action
        )


    def test_r11983_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ingress_teeth_installed,
            self.logic.r11983_action
        )


    def test_r12554_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r12554_action()


    def test_r12555_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r12555_action()


    def test_r12556_action(self):
        self._integer_equals_action(
            self.settings_manager.get_baria,
            2,
            self.logic.r12556_action
        )


    def test_r12855_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_mimir,
            self.logic.r12855_action
        )


    def test_r12858_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_mimir,
            self.logic.r12858_action
        )


    def test_r12860_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_mimir,
            1,
            self.logic.r12860_action
        )


    def test_r12861_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_mimir,
            1,
            self.logic.r12861_action
        )


    def test_r13774_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r13774_action()


    def test_r13775_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_sdthug_quip_1,
            self.logic.r13775_action
        )


    def test_r13776_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_sdthug_quip_1,
            self.logic.r13776_action
        )


    def test_r13986_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r13986_action()


    def test_r13987_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_wilder_quip_1,
            self.logic.r13987_action
        )


    def test_r13988_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_wilder_quip_1,
            self.logic.r13988_action
        )


    def test_r15492_action(self):
        self._integer_inc_action(
            self.settings_manager.get_bd_morte_morale,
            1,
            self.logic.r15492_action
        )


    def test_r15495_action(self):
        self._integer_equals_action(
            self.settings_manager.get_adyzoel,
            2,
            self.logic.r15495_action
        )


    def test_r16882_action(self):
        self._integer_inc_action(
            self.settings_manager.get_tree_helpers,
            1,
            self.logic.r16882_action
        )


    def test_r16884_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_a,
            self.logic.r16884_action
        )


    def test_r16885_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_i,
            self.logic.r16885_action
        )


    def test_r16886_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_g,
            self.logic.r16886_action
        )


    def test_r16887_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_d,
            self.logic.r16887_action
        )


    def test_r16888_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r16888_action()


    def test_r16889_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_n,
            self.logic.r16889_action
        )


    def test_r16890_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_v,
            self.logic.r16890_action
        )


    def test_r16893_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_m,
            self.logic.r16893_action
        )


    def test_r16894_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_a,
            self.logic.r16894_action
        )


    def test_r16895_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_i,
            self.logic.r16895_action
        )


    def test_r16896_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_g,
            self.logic.r16896_action
        )


    def test_r16897_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_d,
            self.logic.r16897_action
        )


    def test_r16898_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r16898_action()


    def test_r16899_action(self):
        self._false_then_true_action(
            self.settings_manager.get_tree_v,
            self.logic.r16899_action
        )


    def test_r17584_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            40,
            self.logic.r17584_action
        )


    def test_r18802_action(self):
        self._integer_inc_action(
            self.settings_manager.get_bd_morte_morale,
            1,
            self.logic.r18802_action
        )


    def test_r18578_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r18578_action
        )


    def test_r18808_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r18808_action
        )


    def test_r18820_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            5,
            self.logic.r18820_action
        )


    def test_r18821_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            50,
            self.logic.r18821_action
        )


    def test_r18822_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            100,
            self.logic.r18822_action
        )


    def test_r18823_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            500,
            self.logic.r18823_action
        )


    def test_r18830_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            5,
            self.logic.r18830_action
        )


    def test_r18833_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            5,
            self.logic.r18833_action
        )


    def test_r18834_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            10,
            self.logic.r18834_action
        )


    def test_r18835_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r18835_action()


    def test_r18836_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r18836_action()


    def test_r20612_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r20612_action()


    def test_r20613_action(self):
        note_id = '20538'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r20613_action
        )


    def test_r24697_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_lady,
            self.logic.r24697_action
        )


    def test_r22850_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r22850_action
        )


    def test_r22853_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r22853_action
        )


    def test_r22856_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r22856_action
        )


    def test_r24904_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_value,
            1,
            self.logic.r24904_action
        )


    def test_r24905_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r24905_action()


    def test_r24925_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r24925_action
        )


    def test_r24932_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r24932_action()


    def test_r28041_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            10,
            self.logic.r28041_action
        )


    def test_r28042_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            10,
            self.logic.r28042_action
        )


    def test_r28038_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            30,
            self.logic.r28038_action
        )


    def test_r28039_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            30,
            self.logic.r28039_action
        )


    def test_r28040_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            50,
            self.logic.r28040_action
        )


    def test_r28044_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            50,
            self.logic.r28044_action
        )


    def test_r28045_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            50,
            self.logic.r28045_action
        )


    def test_r28046_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            50,
            self.logic.r28046_action
        )


    def test_r28047_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            80,
            self.logic.r28047_action
        )


    def test_r28048_action(self):
        self._integer_dec_action(
            self.settings_manager.get_gold,
            80,
            self.logic.r28048_action
        )


    def test_r28743_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_stolen,
            3,
            self.logic.r28743_action
        )


    def test_r28744_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r28744_action()


    def test_r28745_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_stolen,
            3,
            self.logic.r28745_action
        )


    def test_r28968_action(self):
        self._integer_equals_action(
            self.settings_manager.get_qui_sai,
            2,
            self.logic.r28968_action
        )


    def test_r28971_action(self):
        self._integer_equals_action(
            self.settings_manager.get_qui_sai,
            2,
            self.logic.r28971_action
        )


    def test_r28975_action(self):
        self._integer_equals_action(
            self.settings_manager.get_qui_sai,
            2,
            self.logic.r28975_action
        )


    def test_r28976_action(self):
        self._integer_equals_action(
            self.settings_manager.get_qui_sai,
            2,
            self.logic.r28976_action
        )


    def test_r30826_action(self):
        self._false_then_true_action(
            self.settings_manager.get_able,
            self.logic.r30826_action
        )


    def test_r31567_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r31567_action()


    def test_r32370_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32370_action
        )


    def test_r32375_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32375_action
        )


    def test_r32380_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32380_action
        )


    def test_r32385_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32385_action
        )


    def test_r32390_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32390_action
        )


    def test_r32395_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32395_action
        )


    def test_r32400_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32400_action
        )


    def test_r32405_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r32405_action
        )


    def test_r33076_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_ghysis,
            2,
            self.logic.r33076_action
        )


    def test_r33959_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r33959_action
        )


    def test_r33963_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r33963_action
        )


    def test_r33966_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r33966_action
        )


    def test_r34991_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r34991_action
        )


    def test_r35001_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35001_action
        )


    def test_r34993_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r34993_action
        )


    def test_r35023_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35023_action
        )


    def test_r35033_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35033_action
        )


    def test_r35025_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35025_action
        )


    def test_r35055_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35055_action
        )


    def test_r35065_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35065_action
        )


    def test_r35057_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35057_action
        )


    def test_r35087_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35087_action
        )


    def test_r35097_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35097_action
        )


    def test_r35089_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35089_action
        )


    def test_r35119_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35119_action
        )


    def test_r35129_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35129_action
        )


    def test_r35121_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35121_action
        )


    def test_r35151_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35151_action
        )


    def test_r35161_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35161_action
        )


    def test_r35153_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35153_action
        )


    def test_r35183_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35183_action
        )


    def test_r35193_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35193_action
        )


    def test_r35185_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35185_action
        )


    def test_r35215_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35215_action
        )


    def test_r35225_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35225_action
        )


    def test_r35217_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35217_action
        )


    def test_r35247_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35247_action
        )


    def test_r35257_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35257_action
        )


    def test_r35249_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35249_action
        )


    def test_r35279_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35279_action
        )


    def test_r35289_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_quip,
            self.logic.r35289_action
        )


    def test_r35281_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35281_action
        )


    def test_r35319_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35319_action
        )


    def test_r35342_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35342_action()


    def test_r35360_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35360_action()


    def test_r35358_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35358_action
        )


    def test_r35396_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35396_action
        )


    def test_r35419_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35419_action()


    def test_r35437_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35437_action()


    def test_r35435_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35435_action
        )


    def test_r35473_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35473_action
        )


    def test_r35496_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35496_action()


    def test_r35514_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35514_action()


    def test_r35512_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35512_action
        )


    def test_r35550_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r35550_action
        )


    def test_r35573_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35573_action()


    def test_r35591_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r35591_action()


    def test_r35589_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_skel_mort_quip,
            self.logic.r35589_action
        )


    def test_r39716_action(self):
        self._false_then_true_action(
            self.settings_manager.get_yves_shared,
            self.logic.r39716_action
        )


    def test_r39719_action(self):
        self._false_then_true_action(
            self.settings_manager.get_yves_shared,
            self.logic.r39719_action
        )


    def test_r39721_action(self):
        self._false_then_true_action(
            self.settings_manager.get_yves_shared,
            self.logic.r39721_action
        )


    def test_r39722_action(self):
        self._false_then_true_action(
            self.settings_manager.get_yves_shared,
            self.logic.r39722_action
        )


    def test_r40848_action(self):
        self._false_then_true_action(
            self.settings_manager.get_met_modrons,
            self.logic.r40848_action
        )


    def test_r40852_action(self):
        self._false_then_true_action(
            self.settings_manager.get_met_modrons,
            self.logic.r40852_action
        )


    def test_r40856_action(self):
        self._false_then_true_action(
            self.settings_manager.get_met_modrons,
            self.logic.r40856_action
        )


    def test_r41837_action(self):
        note_id = '39516'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r41837_action
        )


    def test_r41911_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_mortuary_walkthrough_2,
            self.logic.r41911_action
        )


    def test_r41921_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r41921_action()


    def test_r43910_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r43910_action()


    def test_r43918_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r43918_action()


    def test_r45029_action(self):
        self._integer_equals_action(
            self.settings_manager.get_lecture_death,
            2,
            self.logic.r45029_action
        )


    def test_r45093_action(self):
        note_id = '39477'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r45093_action
        )


    def test_r45103_action(self):
        note_id = '39477'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r45103_action
        )


    def test_r50166_action(self):
        self.settings_manager.set_translate_dabus(1)
        self._integer_equals_action(
            self.settings_manager.get_translate_dabus,
            0,
            self.logic.r50166_action
        )


    def test_r50325_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_lady,
            self.logic.r50325_action
        )


    def test_r50416_action(self):
        self._integer_dec_action(
            self.settings_manager.get_morale_morte,
            1,
            self.logic.r50416_action
        )


    def test_r52577_action(self):
        self._integer_equals_action(
            self.settings_manager.get_ravel_grace,
            2,
            self.logic.r52577_action
        )


    def test_r52578_action(self):
        self._integer_equals_action(
            self.settings_manager.get_ravel_annah,
            2,
            self.logic.r52578_action
        )


    def test_r53625_action(self):
        self._integer_dec_action(
            self.settings_manager.get_morale_morte,
            1,
            self.logic.r53625_action
        )


    def test_r53629_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r53629_action()


    def test_r53630_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r53630_action()


    def test_r53795_action(self):
        self._integer_dec_action(
            self.settings_manager.get_morale_morte,
            1,
            self.logic.r53795_action
        )


    def test_r53801_action(self):
        self._integer_dec_action(
            self.settings_manager.get_morale_morte,
            1,
            self.logic.r53801_action
        )


    def test_r53807_action(self):
        note_id = '53633'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r53807_action
        )


    def test_r53825_action(self):
        self._false_then_true_action(
            self.settings_manager.get_pillar_musk,
            self.logic.r53825_action
        )


    def test_r53826_action(self):
        self._false_then_true_action(
            self.settings_manager.get_pillar_musk,
            self.logic.r53826_action
        )


    def test_r53841_action(self):
        self.settings_manager.set_pillar_question(1)
        self._integer_equals_action(
            self.settings_manager.get_pillar_question,
            0,
            self.logic.r53841_action
        )


    def test_r53843_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r53843_action()


    def test_r53867_action(self):
        self.settings_manager.set_pillar_question(1)
        self._integer_equals_action(
            self.settings_manager.get_pillar_question,
            0,
            self.logic.r53867_action
        )


    def test_r53850_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r53850_action()


    def test_r53856_action(self):
        self.settings_manager.set_pillar_question(1)
        self._integer_equals_action(
            self.settings_manager.get_pillar_question,
            0,
            self.logic.r53856_action
        )


    def test_r54160_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54160_action()


    def test_r54180_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54180_action()


    def test_r54192_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54192_action()


    def test_r54197_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54197_action()


    def test_r54201_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54201_action()


    def test_r54205_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54205_action()


    def test_r54210_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54210_action()


    def test_r54214_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54214_action()


    def test_r54218_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54218_action()


    def test_r54227_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54227_action()


    def test_r54233_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54233_action()


    def test_r54238_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54238_action()


    def test_r54242_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54242_action()


    def test_r54244_action(self):
        self._integer_equals_action(
            self.settings_manager.get_morte_quip_regret_portal,
            2,
            self.logic.r54244_action
        )


    def test_r54246_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54246_action()


    def test_r54262_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54262_action()


    def test_r54267_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54267_action()


    def test_r54272_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54272_action()


    def test_r54276_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54276_action()


    def test_r54278_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54278_action()


    def test_r54280_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54280_action()


    def test_r54833_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54833_action()


    def test_r54836_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54836_action()


    def test_r54839_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r54839_action()


    def test_r55902_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r55902_action
        )


    def test_r55925_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_mechanus,
            self.logic.r55925_action
        )


    def test_r55931_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = 2

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r55931_action
        )


    def test_r55941_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -2

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r55941_action
        )


    def test_r61414_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r61414_action()


    def test_r65569_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65569_action()


    def test_r65621_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65621_action()


    def test_r65631_action(self):
        note_id = '65637'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r65631_action
        )


    def test_r65666_action(self):
        note_id = '65669'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r65666_action
        )


    def test_r65674_action(self):
        note_id = '65678'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r65674_action
        )


    def test_r65710_action(self):
        note_id = '65712'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r65710_action
        )


    def test_r65711_action(self):
        note_id = '65712'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r65711_action
        )


    def test_r65731_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_story,
            self.logic.r65731_action
        )


    def test_r65733_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 12000

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r65733_action
        )


    def test_r65750_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r65750_action
        )


    def test_r65751_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65751_action()


    def test_r65753_action(self):
        note_id = '53633'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r65753_action
        )


    def test_r65758_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65758_action()


    def test_r65763_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65763_action()


    def test_r65766_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65766_action()


    def test_r65769_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65769_action()


    def test_r65772_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65772_action()


    def test_r65774_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65774_action()


    def test_r65775_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65775_action()


    def test_r65781_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65781_action()


    def test_r65789_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65789_action()


    def test_r65821_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r65821_action()


    def test_r68176_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68176_action()


    def test_r68189_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68189_action()


    def test_r68190_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68190_action()


    def test_r68191_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68191_action()


    def test_r68192_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68192_action()


    def test_r68193_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68193_action()


    def test_r68194_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68194_action()


    def test_r68239_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68239_action()


    def test_r68438_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68438_action()


    def test_r68439_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68439_action()


    def test_r68446_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68446_action()


    def test_r68175_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68175_action()


    def test_r68179_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68179_action()


    def test_r68180_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68180_action()


    def test_r68181_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68181_action()


    def test_r68182_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68182_action()


    def test_r68183_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68183_action()


    def test_r68319_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68319_action()


    def test_r68320_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68320_action()


    def test_r68321_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68321_action()


    def test_r68322_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68322_action()


    def test_r68323_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68323_action()


    def test_r68324_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68324_action()


    def test_r68325_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68325_action()


    def test_r68490_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68490_action()


    def test_r68491_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68491_action()


    def test_r68492_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r68492_action()


    def test_r1006_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1006_condition
        )


    def test_r1015_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1015_condition
        )


    def test_r1019_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1019_condition
        )


    def test_r1050_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1050_condition
        )


    def test_r1051_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1077_condition
        )


    def test_r1083_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1083_condition
        )


    def test_r1095_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1095_condition
        )


    def test_r1120_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1120_condition
        )


    def test_r1125_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1125_condition
        )


    def test_r1130_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_read_scars(x),
            self.logic.r1130_condition
        )


    def test_r9029_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_gith(x),
            self.logic.r9029_condition
        )


    def test_r9030_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_gith(x),
            self.logic.r9030_condition
        )


    def test_r6952_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r6952_condition
        )


    def test_r6953_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r6953_condition
        )


    def test_r6954_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r6954_condition
        )


    def test_r3969_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r3969_condition()


    def test_r3970_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r3970_condition()


    def test_r3971_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            self.logic.r3971_condition
        )


    def test_r3972_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r3972_condition
        )


    def test_r3973_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r3973_condition
        )


    def test_r4023_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4023_condition
        )


    def test_r4024_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4024_condition
        )


    def test_r4027_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4027_condition
        )


    def test_r4028_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4028_condition
        )


    def test_r4031_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4031_condition
        )


    def test_r4032_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4032_condition
        )


    def test_r4034_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4034_condition
        )


    def test_r4686_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_vaxis_global_xp(x),
            self.logic.r64535_condition
        )


    def test_r64534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_global_xp(x),
            self.logic.r64534_condition
        )


    def test_r6325_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6325_condition()


    def test_r6326_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6326_condition()


    def test_r6327_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6327_condition()


    def test_r6328_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r6328_condition
        )


    def test_r6329_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6329_condition()


    def test_r6330_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6330_condition
        )


    def test_r6664_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_42_secret(x),
            self.logic.r6664_condition
        )


    def test_r6665_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r6665_condition()


    def test_r7056_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r7056_condition
        )


    def test_r7057_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r7057_condition
        )


    def test_r7058_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r7058_condition
        )


    def test_r11985_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_evil_ingress_teeth_1(x),
            self.logic.r11985_condition
        )


    def test_r11986_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_good_ingress_teeth_1(x),
            self.logic.r11986_condition
        )


    def test_r11988_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_good_ingress_teeth_1(x),
            self.logic.r11988_condition
        )


    def test_r11989_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_evil_ingress_teeth_1(x),
            self.logic.r11989_condition
        )


    def test_r11990_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_good_ingress_teeth_1(x),
            self.logic.r11990_condition
        )


    def test_r11991_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_evil_ingress_teeth_1(x),
            self.logic.r11991_condition
        )


    def test_r12855_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_mimir(x),
            self.logic.r12855_condition
        )


    def test_r12858_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_mimir(x),
            self.logic.r12858_condition
        )


    def test_r13774_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_chaosmen(x),
            self.logic.r13774_condition
        )


    def test_r13775_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_chaosmen(x),
            self.logic.r13775_condition
        )


    def test_r13776_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_chaosmen(x),
            self.logic.r13776_condition
        )


    def test_r13986_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_chaosmen(x),
            self.logic.r13986_condition
        )


    def test_r13987_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_chaosmen(x),
            self.logic.r13987_condition
        )


    def test_r13988_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_chaosmen(x),
            self.logic.r13988_condition
        )


    def test_r13989_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_join_chaosmen(x),
            0,
            self.logic.r13989_condition
        )


    def test_r14275_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r14275_condition()


    def test_r14276_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r14276_condition()


    def test_r14277_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r14277_condition()


    def test_r14278_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r14278_condition()


    def test_r65537_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_mimir(x),
            1,
            self.logic.r65537_condition
        )


    def test_r16881_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r16881_condition
        )


    def test_r16882_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r16882_condition
        )


    def test_r16884_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16884_condition()


    def test_r16885_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16885_condition()


    def test_r16886_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16886_condition()


    def test_r16887_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16887_condition()


    def test_r16888_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16888_condition()


    def test_r16889_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16889_condition()


    def test_r16890_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16890_condition()


    def test_r16893_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16893_condition()


    def test_r16894_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16894_condition()


    def test_r16895_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16895_condition()


    def test_r16896_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16896_condition()


    def test_r16897_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16897_condition()


    def test_r16898_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16898_condition()


    def test_r16899_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r16899_condition()


    def test_r17583_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_annah(x),
            self.logic.r17583_condition
        )


    def test_r17584_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            39,
            self.logic.r17584_condition
        )


    def test_r17585_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            39,
            self.logic.r17585_condition
        )


    def test_r17586_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            39,
            self.logic.r17586_condition
        )


    def test_r17587_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r17587_condition()


    def test_r17588_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r17588_condition()


    def test_r18820_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            4,
            self.logic.r18820_condition
        )


    def test_r18821_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            49,
            self.logic.r18821_condition
        )


    def test_r18822_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            99,
            self.logic.r18822_condition
        )


    def test_r18823_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            499,
            self.logic.r18823_condition
        )


    def test_r18824_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r18824_condition()


    def test_r18829_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r18829_condition
        )


    def test_r18830_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_gold(x),
            4,
            self.logic.r18833_condition
        )


    def test_r18834_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            9,
            self.logic.r18834_condition
        )


    def test_r18835_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            49,
            self.logic.r18835_condition
        )


    def test_r18836_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_gold(x),
            99,
            self.logic.r18836_condition
        )


    def test_r19668_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r19668_condition
        )


    def test_r19669_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r19669_condition
        )


    def test_r19670_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r19670_condition
        )


    def test_r19671_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r19671_condition
        )


    def test_r20612_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_know_marta_work(x),
            3,
            self.logic.r20612_condition
        )


    def test_r20613_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_marta_work(x),
            2,
            self.logic.r20613_condition
        )


    def test_r24697_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r24697_condition
        )


    def test_r24698_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r24698_condition
        )


    def test_r24699_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r24699_condition
        )


    def test_r24700_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24700_condition()


    def test_r24701_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r24701_condition
        )


    def test_r66902_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_mimir(x),
            1,
            self.logic.r66902_condition
        )


    def test_r25967_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r25967_condition
        )


    def test_r27316_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r27316_condition
        )


    def test_r65536_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_mimir(x),
            1,
            self.logic.r65536_condition
        )


    def test_r27916_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r27916_condition
        )


    def test_r28038_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28038_condition()


    def test_r28039_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28039_condition()


    def test_r28040_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28040_condition()


    def test_r28044_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28044_condition()


    def test_r28045_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28045_condition()


    def test_r28046_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28046_condition()


    def test_r28047_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28047_condition()


    def test_r28048_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r28048_condition()


    def test_r28744_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 14

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r28744_condition
        )


    def test_r28745_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 15

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r28745_condition
        )


    def test_r28967_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_cw_sal_hint(x),
            self.logic.r28968_condition
        )


    def test_r28971_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_cw_sal_hint(x),
            self.logic.r28971_condition
        )


    def test_r28975_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_cw_sal_hint(x),
            self.logic.r28975_condition
        )


    def test_r28980_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_ravel(x),
            self.logic.r28980_condition
        )


    def test_r30822_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 9

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r30822_condition
        )


    def test_r30823_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 8

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r30823_condition
        )


    def test_r30824_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_able(x),
            self.logic.r30825_condition
        )


    def test_r30826_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_able(x),
            self.logic.r30826_condition
        )


    def test_r65541_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_talent(x),
            self.logic.r65541_condition
        )


    def test_r65542_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_talent(x),
            self.logic.r65542_condition
        )


    def test_r65543_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_tattoo_xp(x),
            self.logic.r65543_condition
        )


    def test_r65545_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65545_condition()


    def test_r65546_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_story(x),
            self.logic.r65546_condition
        )


    def test_r65547_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            1,
            self.logic.r65547_condition
        )


    def test_r65548_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_blood_war(x),
            self.logic.r65548_condition
        )


    def test_r65549_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65549_condition()


    def test_r35344_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35344_condition()


    def test_r35352_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35352_condition()


    def test_r35355_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            self.logic.r35355_condition
        )


    def test_r35358_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35358_condition
        )


    def test_r35359_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35359_condition
        )


    def test_r35421_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35421_condition()


    def test_r35429_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35429_condition()


    def test_r35432_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            self.logic.r35432_condition
        )


    def test_r35435_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35435_condition
        )


    def test_r35436_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35436_condition
        )


    def test_r35498_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35498_condition()


    def test_r35506_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35506_condition()


    def test_r35509_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            self.logic.r35509_condition
        )


    def test_r35512_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35512_condition
        )


    def test_r35513_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35513_condition
        )


    def test_r35575_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35575_condition()


    def test_r35583_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r35583_condition()


    def test_r35586_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_prybar(x),
            self.logic.r35586_condition
        )


    def test_r35589_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35589_condition
        )


    def test_r35590_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_skel_mort_quip(x),
            self.logic.r35590_condition
        )


    def test_r40069_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r40069_condition()


    def test_r40070_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r40070_condition()


    def test_r40071_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r40071_condition()


    def test_r40077_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_nenny(x),
            2,
            self.logic.r40077_condition
        )


    def test_r40078_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_nenny(x),
            2,
            self.logic.r40078_condition
        )


    def test_r40079_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_nenny(x),
            1,
            self.logic.r40079_condition
        )


    def test_r40080_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_nenny(x),
            1,
            self.logic.r40080_condition
        )


    def test_r41842_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41842_condition
        )


    def test_r41843_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41843_condition
        )


    def test_r41845_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41845_condition
        )


    def test_r41846_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bandages(x),
            self.logic.r41846_condition
        )


    def test_r41847_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41847_condition
        )


    def test_r41848_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41848_condition
        )


    def test_r41852_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41852_condition
        )


    def test_r41853_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41853_condition
        )


    def test_r41857_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41857_condition
        )


    def test_r41858_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41858_condition
        )


    def test_r41862_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41862_condition
        )


    def test_r41863_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41863_condition
        )


    def test_r41867_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41867_condition
        )


    def test_r41868_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41868_condition
        )


    def test_r41871_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41871_condition
        )


    def test_r41872_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41872_condition
        )


    def test_r41875_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41875_condition
        )


    def test_r41876_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41876_condition
        )


    def test_r41880_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41880_condition
        )


    def test_r41881_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41881_condition
        )


    def test_r41884_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41884_condition
        )


    def test_r41885_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41885_condition
        )


    def test_r41888_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41888_condition
        )


    def test_r41889_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41889_condition
        )


    def test_r41892_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41892_condition
        )


    def test_r41893_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41893_condition
        )


    def test_r41900_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r41900_condition
        )


    def test_r41921_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r41921_condition()


    def test_r67864_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_jumble_reekwind(x),
            self.logic.r67864_condition
        )


    def test_r43909_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r43909_condition()


    def test_r43910_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r43910_condition()


    def test_r43911_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_aelwyn_value(x),
            2,
            self.logic.r43911_condition
        )


    def test_r43917_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r43917_condition()


    def test_r43918_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r43918_condition()


    def test_r43919_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_aelwyn_value(x),
            2,
            self.logic.r43919_condition
        )


    def test_r50325_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r50325_condition
        )


    def test_r50328_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r50328_condition
        )


    def test_r50329_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_lady(x),
            self.logic.r50329_condition
        )


    def test_r52577_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_grace(x),
            self.logic.r52577_condition
        )


    def test_r52578_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r52578_condition()


    def test_r52579_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r52579_condition()


    def test_r53625_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_story(x),
            self.logic.r53625_condition
        )


    def test_r53627_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_story(x),
            self.logic.r53627_condition
        )


    def test_r53662_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_annah(x),
            self.logic.r53662_condition
        )


    def test_r53663_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_annah(x),
            self.logic.r53663_condition
        )


    def test_r54105_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_dakkon(x),
            self.logic.r54105_condition
        )


    def test_r53825_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_grace(x),
            self.logic.r53825_condition
        )


    def test_r53826_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53826_condition()


    def test_r53827_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53827_condition()


    def test_r53832_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_specialist(x),
            4,
            self.logic.r53832_condition
        )


    def test_r53833_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_specialist(x),
            5,
            self.logic.r53833_condition
        )


    def test_r53834_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_specialist(x),
            6,
            self.logic.r53834_condition
        )


    def test_r53835_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53835_condition()


    def test_r53836_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_where_fhjull(x),
            self.logic.r53836_condition
        )


    def test_r53837_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53837_condition()


    def test_r53838_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53838_condition()


    def test_r53839_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53839_condition()


    def test_r53840_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53840_condition()


    def test_r53844_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_where_fhjull(x),
            self.logic.r53844_condition
        )


    def test_r53863_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53863_condition()


    def test_r53864_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53864_condition()


    def test_r53865_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53865_condition()


    def test_r53866_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53866_condition()


    def test_r53851_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_where_fhjull(x),
            self.logic.r53851_condition
        )


    def test_r53852_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53852_condition()


    def test_r53853_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53853_condition()


    def test_r53854_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53854_condition()


    def test_r53855_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r53855_condition()


    def test_r54165_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_dakkon(x),
            self.logic.r54165_condition
        )


    def test_r54166_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54166_condition()


    def test_r54167_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54167_condition()


    def test_r54172_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_dakkon(x),
            self.logic.r54172_condition
        )


    def test_r54173_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54173_condition()


    def test_r54174_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54174_condition()


    def test_r54179_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54179_condition()


    def test_r54180_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54180_condition()


    def test_r54189_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54189_condition
        )


    def test_r54190_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54190_condition
        )


    def test_r54191_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54191_condition()


    def test_r54192_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54192_condition()


    def test_r54194_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54194_condition
        )


    def test_r54195_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54195_condition
        )


    def test_r54196_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54196_condition()


    def test_r54197_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54197_condition()


    def test_r54200_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54200_condition()


    def test_r54201_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54201_condition()


    def test_r54204_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54204_condition()


    def test_r54205_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54205_condition()


    def test_r54207_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54207_condition
        )


    def test_r54208_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54208_condition
        )


    def test_r54209_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54209_condition()


    def test_r54210_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54210_condition()


    def test_r54213_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54213_condition()


    def test_r54214_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54214_condition()


    def test_r54217_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54217_condition()


    def test_r54218_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54218_condition()


    def test_r54220_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54220_condition()


    def test_r54221_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54221_condition()


    def test_r54223_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54223_condition()


    def test_r54226_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54226_condition()


    def test_r54227_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54227_condition()


    def test_r54230_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r54230_condition
        )


    def test_r54231_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r54231_condition
        )


    def test_r54232_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54232_condition()


    def test_r54233_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54233_condition()


    def test_r54235_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r54235_condition
        )


    def test_r54236_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r54236_condition
        )


    def test_r54237_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54237_condition()


    def test_r54238_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54238_condition()


    def test_r54241_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54241_condition()


    def test_r54242_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54242_condition()


    def test_r54245_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54245_condition()


    def test_r54246_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54246_condition()


    def test_r54250_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_bd_morte_morale(x),
            5,
            self.logic.r54250_condition
        )


    def test_r54252_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_bd_morte_morale(x),
            6,
            self.logic.r54252_condition
        )


    def test_r54255_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54255_condition()


    def test_r54262_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54262_condition()


    def test_r54264_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r54264_condition
        )


    def test_r54266_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54266_condition()


    def test_r54267_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54267_condition()


    def test_r54269_condition(self):
        who = 'protagonist'
        prop = 'wisdom'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r54269_condition
        )


    def test_r54271_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54271_condition()


    def test_r54272_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54272_condition()


    def test_r54275_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54275_condition()


    def test_r54276_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54276_condition()


    def test_r54278_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54278_condition()


    def test_r54279_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54279_condition
        )


    def test_r54280_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54280_condition
        )


    def test_r54282_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54282_condition()


    def test_r54283_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54283_condition()


    def test_r54284_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54284_condition()


    def test_r54285_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r54285_condition()


    def test_r54286_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_ravel_morte(x),
            0,
            self.logic.r54286_condition
        )


    def test_r54832_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54832_condition
        )


    def test_r54833_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54833_condition
        )


    def test_r54835_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54835_condition
        )


    def test_r54836_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54836_condition
        )


    def test_r54838_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54838_condition
        )


    def test_r54839_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r54839_condition
        )


    def test_r55849_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_grace(x),
            self.logic.r55849_condition
        )


    def test_r55850_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_grace(x),
            self.logic.r55850_condition
        )


    def test_r55875_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_gold(x),
            499,
            self.logic.r61411_condition
        )


    def test_r61412_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r61412_condition()


    def test_r65554_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_warning(x),
            self.logic.r65554_condition
        )


    def test_r65558_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r65558_condition
        )


    def test_r65559_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r65559_condition
        )


    def test_r65566_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_warning(x),
            self.logic.r65566_condition
        )


    def test_r65565_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_journal(x),
            self.logic.r65565_condition
        )


    def test_r65569_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_tattoo_xp(x),
            self.logic.r65569_condition
        )


    def test_r65570_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_tattoo_xp(x),
            self.logic.r65570_condition
        )


    def test_r65613_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_stolen(x),
            2,
            self.logic.r65613_condition
        )


    def test_r65622_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_stolen(x),
            2,
            self.logic.r65622_condition
        )


    def test_r65627_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_stolen(x),
            2,
            self.logic.r65627_condition
        )


    def test_r65639_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r65639_condition
        )


    def test_r65640_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65640_condition()


    def test_r65641_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65641_condition()


    def test_r65642_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65642_condition()


    def test_r65643_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65643_condition()


    def test_r65644_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65644_condition()


    def test_r65645_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65645_condition()


    def test_r65646_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65646_condition()


    def test_r65647_condition(self):
        self._is_visited_external_location_condition(
            'curst',
            self.logic.r65647_condition
        )


    def test_r65666_condition(self):
        self._not_is_visited_external_location_condition(
            'civic_festhall',
            self.logic.r65666_condition
        )


    def test_r65674_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_know_ravel_key(x),
            1,
            self.logic.r65674_condition
        )


    def test_r65693_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r65693_condition
        )


    def test_r65700_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_grace_silver_mimir(x),
            self.logic.r65700_condition
        )


    def test_r65708_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_grace_smell_mimir(x),
            self.logic.r65708_condition
        )


    def test_r65709_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_tattoo_xp(x),
            self.logic.r65709_condition
        )


    def test_r65718_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65718_condition()


    def test_r65719_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r65719_condition()


    def test_r65738_condition(self):
        who = 'protagonist'
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
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65739_condition
        )


    def test_r65740_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65740_condition
        )


    def test_r65743_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65743_condition
        )


    def test_r65744_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65744_condition
        )


    def test_r65747_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65747_condition
        )


    def test_r65748_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65748_condition
        )


    def test_r65750_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_chaotic_morte_1(x),
            self.logic.r65750_condition
        )


    def test_r65751_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_lawful_morte_1(x),
            self.logic.r65751_condition
        )


    def test_r65754_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65754_condition
        )


    def test_r65755_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65755_condition
        )


    def test_r65759_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65759_condition
        )


    def test_r65760_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65760_condition
        )


    def test_r65774_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_memory_morte_pillar(x),
            self.logic.r65774_condition
        )


    def test_r65775_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_memory_morte_pillar(x),
            self.logic.r65775_condition
        )


    def test_r65778_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65778_condition
        )


    def test_r65779_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65779_condition
        )


    def test_r65782_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65782_condition
        )


    def test_r65783_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65783_condition
        )


    def test_r65786_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65786_condition
        )


    def test_r65787_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65787_condition
        )


    def test_r65790_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65790_condition
        )


    def test_r65791_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65791_condition
        )


    def test_r65794_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65794_condition
        )


    def test_r65795_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65795_condition
        )


    def test_r65798_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65798_condition
        )


    def test_r65799_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65799_condition
        )


    def test_r65801_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65801_condition
        )


    def test_r65802_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65802_condition
        )


    def test_r65803_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            0,
            self.logic.r65803_condition
        )


    def test_r66347_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_talent(x),
            self.logic.r66347_condition
        )


    def test_r66348_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_talent(x),
            self.logic.r66348_condition
        )


    def test_r66349_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_tattoo_xp(x),
            self.logic.r66349_condition
        )


    def test_r66351_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r66351_condition()


    def test_r66352_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_story(x),
            self.logic.r66352_condition
        )


    def test_r66353_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_know_morte_pillar(x),
            1,
            self.logic.r66353_condition
        )


    def test_r66354_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_blood_war(x),
            self.logic.r66354_condition
        )


    def test_r66355_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r66355_condition()


    def test_r68178_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68178_condition()


    def test_r68189_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68189_condition()


    def test_r68190_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68190_condition()


    def test_r68191_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68191_condition()


    def test_r68192_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68192_condition()


    def test_r68193_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68193_condition()


    def test_r68194_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68194_condition()


    def test_r68239_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68239_condition()


    def test_r68438_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68438_condition()


    def test_r68439_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68439_condition()


    def test_r68446_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68446_condition()


    def test_r68503_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68503_condition()


    def test_r68175_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_fortress_annah(x),
            0,
            self.logic.r68175_condition
        )


    def test_r68179_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_fortress_dakkon(x),
            0,
            self.logic.r68179_condition
        )


    def test_r68180_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_fortress_grace(x),
            0,
            self.logic.r68180_condition
        )


    def test_r68181_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_fortress_nordom(x),
            0,
            self.logic.r68181_condition
        )


    def test_r68182_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68182_condition()


    def test_r68183_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68183_condition()


    def test_r68319_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_fortress_annah(x),
            0,
            self.logic.r68319_condition
        )


    def test_r68320_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68320_condition()


    def test_r68321_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68321_condition()


    def test_r68322_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68322_condition()


    def test_r68323_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68323_condition()


    def test_r68324_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68324_condition()


    def test_r68325_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68325_condition()


    def test_r68490_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68490_condition()


    def test_r68491_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68491_condition()


    def test_r68492_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r68492_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
