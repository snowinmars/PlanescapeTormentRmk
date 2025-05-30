def build_mortuary1_menu(menu_builder, gsm):
    menu_builder \
        .option("Поговорить с Мортом") \
            .jump("dmorte_one_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
                .hover_image("images/graphics_hover.png") \
                .position(1400, 400) \
                .size(20, 20) \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1400, 420) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1400, 400) \
            .size(20, 20) \
        .option("Открыть дверь") \
            .jump("dmorte_one_mortuary_go_1_2_scene") \
            .when(lambda: gsm.get_has_intro_key() \
                          and not gsm.is_visited_location('mortuary2')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(170, 460) \
            .size(20, 20) \
        .option("Открыть дверь в западную комнату") \
            .jump("dmorte_one_mortuary_go_2_visit") \
            .when(lambda: gsm.get_has_intro_key() \
                          and gsm.is_visited_location('mortuary2')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(170, 460) \
            .size(20, 20) \
        .option("Открыть дверь") \
            .jump("dmorte_one_mortuary_go_1_8_closed") \
            .when(lambda: gsm.get_has_intro_key()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1240, 1000) \
            .size(20, 20) \
        .option("Открыть дверь") \
            .jump("dmorte_one_mortuary_go_1_up_closed") \
            .when(lambda: gsm.get_has_intro_key()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(940, 220) \
            .size(20, 20) \
        .option("Открыть дверь") \
            .jump("dmorte_one_mortuary_go_1_down_closed") \
            .when(lambda: gsm.get_has_intro_key()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(790, 280) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать плешивый ходячий труп") \
            .jump("dmorte_one_kill_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and not gsm.get_meet_dzm569()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(440, 720) \
            .size(20, 20) \
        .option("Атаковать труп «569»") \
            .jump("dmorte_one_kill_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and gsm.get_meet_dzm569()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(440, 720) \
            .size(20, 20) \
        .option("Поговорить с ходячим плешивым трупом") \
            .jump("dmorte_one_talk_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and not gsm.get_meet_dzm569()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(440, 740) \
            .size(20, 20) \
        .option("Поговорить трупом «569»") \
            .jump("dmorte_one_talk_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and gsm.get_meet_dzm569()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(440, 740) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать ходячий труп повешенного") \
            .jump("dmorte_one_kill_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and not gsm.get_meet_dzm825()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(750, 880) \
            .size(20, 20) \
        .option("Атаковать труп «825»") \
            .jump("dmorte_one_kill_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and gsm.get_meet_dzm825()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(750, 880) \
            .size(20, 20) \
        .option("Поговорить с ходячим трупом повешенного") \
            .jump("dmorte_one_talk_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and not gsm.get_meet_dzm825()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(750, 900) \
            .size(20, 20) \
        .option("Поговорить с трупом «825»") \
            .jump("dmorte_one_talk_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and gsm.get_meet_dzm825()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(750, 900) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать ходячий труп, полный ненависти") \
            .jump("dmorte_one_kill_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782() \
                          and not gsm.get_meet_dzm782()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 860) \
            .size(20, 20) \
        .option("Атаковать труп «782»") \
            .jump("dmorte_one_kill_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782()  \
                          and gsm.get_meet_dzm782()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 860) \
            .size(20, 20) \
        .option("Поговорить с ходячим трупом, полным ненависти") \
            .jump("dmorte_one_talk_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782() \
                          and not gsm.get_meet_dzm782()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 880) \
            .size(20, 20) \
        .option("Поговорить с трупом «782»") \
            .jump("dmorte_one_talk_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782() \
                          and gsm.get_meet_dzm782()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 880) \
            .size(20, 20)

    return menu_builder
