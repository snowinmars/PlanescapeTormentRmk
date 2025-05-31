def build_mortuary4_menu(menu_builder, gsm):
    menu_builder \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(540, 370) \
            .size(20, 20) \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(540, 390) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(540, 370) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_5_visit") \
            .when(lambda: not gsm.is_visited_location('mortuary5')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1590, 400) \
            .size(20, 20) \
        .option("Пройти в северо-восточную комнату") \
            .jump("dmorte_one_mortuary_go_5_visit") \
            .when(lambda: gsm.is_visited_location('mortuary5')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1590, 400) \
            .size(20, 20) \
        .option("Пройти в северо-западную комнату") \
            .jump("dmorte_one_mortuary_go_3_visit") \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(140, 500) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп с книгами") \
            .jump("dmorte_one_kill_dzm1664") \
            .when(lambda: not gsm.get_dead_dzm1664() \
                          and not gsm.get_meet_dzm1664()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 700) \
            .size(20, 20) \
        .option("Атаковать труп «1664»") \
            .jump("dmorte_one_kill_dzm1664") \
            .when(lambda: not gsm.get_dead_dzm1664() \
                          and gsm.get_meet_dzm1664()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 700) \
            .size(20, 20) \
        .option("Поговорить с трупом с книгами") \
            .jump("dmorte_one_talk_dzm1664") \
            .when(lambda: not gsm.get_dead_dzm1664() \
                          and not gsm.get_meet_dzm1664()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 720) \
            .size(20, 20) \
        .option("Поговорить трупом «1664»") \
            .jump("dmorte_one_talk_dzm1664") \
            .when(lambda: not gsm.get_dead_dzm1664() \
                          and gsm.get_meet_dzm1664()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(880, 720) \
            .size(20, 20)

    return menu_builder
