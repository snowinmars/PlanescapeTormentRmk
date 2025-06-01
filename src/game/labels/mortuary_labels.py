def build_mortuary_label_flow(label_builder):
    label_builder \
        .start_with("dmorte_one_introducing").say("DMORTE1.D_s0").end_with("mortuary_dialog_loop") \
        .start_with("dmorte_join").say('DMORTE1.D_s26').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_morte").say('DMORTE1.D_s30').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_kill_morte").say('DMORTE1.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_two_talk_morte").say('DMORTE2.D_s12').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_has_embalm").say('DVAXIS.D_s99999999_e').end_with('mortuary_dialog_loop') \
        .start_with('dmorte_one_copearc').say('COPEARC.D_s0').end_with('mortuary_dialog_loop') \
        .start_with('dmorte_one_1201_note').say('DN1201.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_two_meet_dhall").say('DDHALL.D_s5').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_two_talk_dhall").say('DDHALL.D_s40').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_first_eivene").say('DEIVENE.D_s99999999_k1').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_kill_eivene").say('DEIVENE.D_s99999999_k2').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_first_eivene").say('DEIVENE.D_s0').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_eivene").say('DEIVENE.D_s15').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_first_vaxis").say('DVAXIS.D_s99999999_k1').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_kill_vaxis").say('DVAXIS.D_s99999999_k2').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_first_vaxis").say('DVAXIS.D_s0').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_vaxis").say('DVAXIS.D_s57').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_two_kill_dhall").say('DDHALL.D_s99999999_k').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm569").say('DZM569.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm569").say('DZM569.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm825").say('DZM825.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm825").say('DZM825.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm782").say('DZM782.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm782").say('DZM782.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm965").say('DZM965.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_first_talk_dzm965").say('DZM965.D_s0').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm965").say('DZM965.D_s1').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzf594").say('DZF594.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzf594").say('DZF594.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzf626").say('DZF626.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzf626").say('DZF626.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm396").say('DZM396.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm396").say('DZM396.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm1201").say('DZM1201.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm1201").say('DZM1201.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzf1096").say('DZF1096.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzf1096").say('DZF1096.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzf1072").say('DZF1072.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzf1072").say('DZF1072.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm1664").say('DZM1664.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm1664").say('DZM1664.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm257").say('DZM257.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm257").say('DZM257.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm506").say('DZM506.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm506").say('DZM506.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_kill_dzm985").say('DZM985.D_s99999999_k').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_talk_dzm985").say('DZM985.D_s0').end_with('mortuary_dialog_loop')

    label_builder \
        .start_with("dmorte_one_mortuary_go_1_visit").say('mortuary_walking_1_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_1_2_scene").say('DMORTE2.D_s0').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_2_visit").say('mortuary_walking_2_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_2_3_scene").say('DMORTE2.D_s31').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_3_visit").say('mortuary_walking_3_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_4_visit").say('mortuary_walking_4_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_5_visit").say('mortuary_walking_5_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_6_visit").say('mortuary_walking_6_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_7_visit").say('mortuary_walking_7_visit').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_1_8_closed").say('mortuary_walking_1_8_closed').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_1_up_closed").say('mortuary_walking_1_up_closed').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_1_down_closed").say('mortuary_walking_1_down_closed').end_with('mortuary_dialog_loop') \
        .start_with("dmorte_one_mortuary_go_8_up").say('dmorte_one_mortuary_go_8_up').end_with('mortuary_dialog_loop')
