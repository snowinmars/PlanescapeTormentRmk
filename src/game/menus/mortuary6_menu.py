def build_mortuary6_menu(menu_builder, gsm):
    menu_builder \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1400, 220) \
            .size(20, 20) \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1400, 240) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1400, 240) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_7_visit") \
            .when(lambda: not gsm.is_visited_location('mortuary6')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1470, 1000) \
            .size(20, 20) \
        .option("Пройти в юго-восточную комнату") \
            .jump("dmorte_one_mortuary_go_7_visit") \
            .when(lambda: gsm.is_visited_location('mortuary6')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1470, 1000) \
            .size(20, 20) \
        .option("Пройти в северную-восточную комнату") \
            .jump("dmorte_one_mortuary_go_5_visit") \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1380, 70) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп") \
            .jump("dmorte_one_kill_first_vaxis") \
            .when(lambda: not gsm.get_dead_vaxis() \
                          and not gsm.get_meet_vaxis()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1340, 700) \
            .size(20, 20) \
        .option("Атаковать Ваксиса") \
            .jump("dmorte_one_kill_vaxis") \
            .when(lambda: not gsm.get_dead_vaxis() \
                          and gsm.get_meet_vaxis()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1340, 700) \
            .size(20, 20) \
        .option("Поговорить с трупом") \
            .jump("dmorte_one_talk_first_vaxis") \
            .when(lambda: not gsm.get_dead_vaxis() \
                          and not gsm.get_meet_vaxis()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1340, 720) \
            .size(20, 20) \
        .option("Поговорить с Ваксисом") \
            .jump("dmorte_one_talk_vaxis") \
            .when(lambda: not gsm.get_dead_vaxis() \
                          and gsm.get_meet_vaxis()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1340, 720) \
            .size(20, 20)

    return menu_builder
