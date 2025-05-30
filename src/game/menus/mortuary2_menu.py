def build_mortuary2_menu(menu_builder, gsm):
    menu_builder \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(550, 880) \
            .size(20, 20) \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_meet_morte() \
                          and gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(550, 900) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(550, 880) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_2_3_scene") \
            .when(lambda: not gsm.is_visited_location('mortuary3')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(500, 100) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_3_visit") \
            .when(lambda: gsm.is_visited_location('mortuary3')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(500, 100) \
            .size(20, 20) \
        .option("Пройти в юго-западную комнату") \
            .jump("dmorte_one_mortuary_go_1_visit") \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(660, 980) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать бродящий труп") \
            .jump("dmorte_one_kill_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and not gsm.get_meet_dzm965()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(530, 720) \
            .size(20, 20) \
        .option("Атаковать труп «965»") \
            .jump("dmorte_one_kill_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and gsm.get_meet_dzm965()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(530, 720) \
            .size(20, 20) \
        .option("Поговорить с бродящим трупом") \
            .jump("dmorte_one_first_talk_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and not gsm.get_meet_dzm965()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(530, 740) \
            .size(20, 20) \
        .option("Поговорить трупом «965»") \
            .jump("dmorte_one_talk_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and gsm.get_meet_dzm965()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(530, 740) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать неуклюжий труп") \
            .jump("dmorte_one_kill_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and not gsm.get_meet_dzf594()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(490, 520) \
            .size(20, 20) \
        .option("Атаковать труп «594»") \
            .jump("dmorte_one_kill_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and gsm.get_meet_dzf594()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(490, 520) \
            .size(20, 20) \
        .option("Поговорить с неуклюжим трупом") \
            .jump("dmorte_one_talk_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and not gsm.get_meet_dzf594()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(490, 540) \
            .size(20, 20) \
        .option("Поговорить трупом «594»") \
            .jump("dmorte_one_talk_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and gsm.get_meet_dzf594()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(490, 540) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать разбитый труп") \
            .jump("dmorte_one_kill_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and not gsm.get_meet_dzf626()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 600) \
            .size(20, 20) \
        .option("Атаковать труп «626»") \
            .jump("dmorte_one_kill_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and gsm.get_meet_dzf626()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 600) \
            .size(20, 20) \
        .option("Поговорить с разбитым трупом") \
            .jump("dmorte_one_talk_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and not gsm.get_meet_dzf626()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 620) \
            .size(20, 20) \
        .option("Поговорить трупом «626»") \
            .jump("dmorte_one_talk_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and gsm.get_meet_dzf626()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 620) \
            .size(20, 20)

    return menu_builder
