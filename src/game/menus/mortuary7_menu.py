def build_mortuary7_menu(menu_builder, gsm):
    menu_builder \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1420, 500) \
            .size(20, 20) \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1420, 520) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1420, 520) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_7_visit") \
            .when(lambda: not gsm.is_visited_location('mortuary6')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(740, 970) \
            .size(20, 20) \
        .option("Пройти в южную комнату") \
            .jump("dmorte_one_mortuary_go_7_visit") \
            .when(lambda: gsm.is_visited_location('mortuary6')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(740, 970) \
            .size(20, 20) \
        .option("Пройти в восточную комнату") \
            .jump("dmorte_one_mortuary_go_5_visit") \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1540, 400) \
            .size(20, 20)

    menu_builder \
        .option("Взять бальзамирующую жидкость") \
            .jump("dmorte_one_has_embalm") \
            .when(lambda: not gsm.get_has_embalm()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(730, 220) \
            .size(20, 20) \
        .option("Подняться наверх") \
            .jump("dmorte_one_has_embalm") \
            .when(lambda: not gsm.get_has_embalm()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(930, 260) \
            .size(20, 20)

    return menu_builder