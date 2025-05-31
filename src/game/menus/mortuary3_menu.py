def build_mortuary3_menu(menu_builder, gsm):
    menu_builder \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(350, 770) \
            .size(20, 20) \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(350, 790) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(350, 790) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_4_visit") \
            .when(lambda: not gsm.is_visited_location('mortuary4')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(960, 320) \
            .size(20, 20) \
        .option("Пройти в северную комнату") \
            .jump("dmorte_one_mortuary_go_4_visit") \
            .when(lambda: gsm.is_visited_location('mortuary4')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(960, 320) \
            .size(20, 20) \
        .option("Пройти в западную комнату") \
            .jump("dmorte_one_mortuary_go_2_visit") \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(160, 1000) \
            .size(20, 20)

    menu_builder \
        .option("Подойти к существу около большой книги") \
            .jump("dmorte_two_meet_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                          and not gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(990, 920) \
            .size(20, 20) \
        .option("Поговорить с Дхаллом") \
            .jump("dmorte_two_talk_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                          and gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(990, 920) \
            .size(20, 20) \
        .option("Убить существо около большой книги") \
            .jump("dmorte_two_kill_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                          and not gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(990, 940) \
            .size(20, 20) \
        .option("Убить Дхалла") \
            .jump("dmorte_two_kill_dhall") \
            .when(lambda: gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(990, 940) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп медбрата") \
            .jump("dmorte_one_kill_dzm396") \
            .when(lambda: not gsm.get_dead_dzm396() \
                          and not gsm.get_meet_dzm396()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(600, 500) \
            .size(20, 20) \
        .option("Атаковать труп «396»") \
            .jump("dmorte_one_kill_dzm396") \
            .when(lambda: not gsm.get_dead_dzm396() \
                          and gsm.get_meet_dzm396()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(600, 500) \
            .size(20, 20) \
        .option("Поговорить с трупом медбрата") \
            .jump("dmorte_one_talk_dzm396") \
            .when(lambda: not gsm.get_dead_dzm396() \
                          and not gsm.get_meet_dzm396()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(600, 520) \
            .size(20, 20) \
        .option("Поговорить трупом «396»") \
            .jump("dmorte_one_talk_dzm396") \
            .when(lambda: not gsm.get_dead_dzm396() \
                          and gsm.get_meet_dzm396()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(600, 520) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп с чернильницей") \
            .jump("dmorte_one_kill_dzm1201") \
            .when(lambda: not gsm.get_dead_dzm1201() \
                          and not gsm.get_meet_dzm1201()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(700, 930) \
            .size(20, 20) \
        .option("Атаковать труп «1201»") \
            .jump("dmorte_one_kill_dzm1201") \
            .when(lambda: not gsm.get_dead_dzm1201() \
                          and gsm.get_meet_dzm1201()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(700, 930) \
            .size(20, 20) \
        .option("Поговорить с трупом с чернильницей") \
            .jump("dmorte_one_talk_dzm1201") \
            .when(lambda: not gsm.get_dead_dzm1201() \
                          and not gsm.get_meet_dzm1201()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(700, 950) \
            .size(20, 20) \
        .option("Поговорить трупом «1201»") \
            .jump("dmorte_one_talk_dzm1201") \
            .when(lambda: not gsm.get_dead_dzm1201() \
                          and gsm.get_meet_dzm1201()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(700, 950) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп с косой на шее") \
            .jump("dmorte_one_kill_dzf1096") \
            .when(lambda: not gsm.get_dead_dzf1096() \
                          and not gsm.get_meet_dzf1096()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 950) \
            .size(20, 20) \
        .option("Атаковать труп «1096»") \
            .jump("dmorte_one_kill_dzf1096") \
            .when(lambda: not gsm.get_dead_dzf1096() \
                          and gsm.get_meet_dzf1096()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 950) \
            .size(20, 20) \
        .option("Поговорить с трупом с косой на шее") \
            .jump("dmorte_one_talk_dzf1096") \
            .when(lambda: not gsm.get_dead_dzf1096() \
                          and not gsm.get_meet_dzf1096()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 970) \
            .size(20, 20) \
        .option("Поговорить трупом «1096»") \
            .jump("dmorte_one_talk_dzf1096") \
            .when(lambda: not gsm.get_dead_dzf1096() \
                          and gsm.get_meet_dzf1096()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 970) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп без челюсти") \
            .jump("dmorte_one_kill_dzf1072") \
            .when(lambda: not gsm.get_dead_dzf1072() \
                          and not gsm.get_meet_dzf1072()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(940, 600) \
            .size(20, 20) \
        .option("Атаковать труп «1072»") \
            .jump("dmorte_one_kill_dzf1072") \
            .when(lambda: not gsm.get_dead_dzf1072() \
                          and gsm.get_meet_dzf1072()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(940, 600) \
            .size(20, 20) \
        .option("Поговорить с трупом без челюсти") \
            .jump("dmorte_one_talk_dzf1072") \
            .when(lambda: not gsm.get_dead_dzf1072() \
                          and not gsm.get_meet_dzf1072()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(940, 620) \
            .size(20, 20) \
        .option("Поговорить трупом «1072»") \
            .jump("dmorte_one_talk_dzf1072") \
            .when(lambda: not gsm.get_dead_dzf1072() \
                          and gsm.get_meet_dzf1072()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(940, 620) \
            .size(20, 20)

    return menu_builder