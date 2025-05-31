def build_mortuary5_menu(menu_builder, gsm):
    menu_builder \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 330) \
            .size(20, 20) \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 350) \
            .size(20, 20) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 350) \
            .size(20, 20) \
        .option("Пройти в следующую комнату") \
            .jump("dmorte_one_mortuary_go_6_visit") \
            .when(lambda: not gsm.is_visited_location('mortuary6')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1600, 900) \
            .size(20, 20) \
        .option("Пройти в восточную комнату") \
            .jump("dmorte_one_mortuary_go_6_visit") \
            .when(lambda: gsm.is_visited_location('mortuary6')) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1600, 900) \
            .size(20, 20) \
        .option("Пройти в северную комнату") \
            .jump("dmorte_one_mortuary_go_4_visit") \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(650, 300) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать хрупкую девушку") \
            .jump("dmorte_one_kill_first_eivene") \
            .when(lambda: not gsm.get_dead_eivene() \
                          and not gsm.get_meet_eivene()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1000, 530) \
            .size(20, 20) \
        .option("Атаковать Эи-Вейн") \
            .jump("dmorte_one_kill_eivene") \
            .when(lambda: not gsm.get_dead_eivene() \
                          and gsm.get_meet_eivene()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1000, 530) \
            .size(20, 20) \
        .option("Поговорить с хрупкой девушкой") \
            .jump("dmorte_one_talk_first_eivene") \
            .when(lambda: not gsm.get_dead_eivene() \
                          and not gsm.get_meet_eivene()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1000, 550) \
            .size(20, 20) \
        .option("Поговорить с Эи-Вейн") \
            .jump("dmorte_one_talk_eivene") \
            .when(lambda: not gsm.get_dead_eivene() \
                          and gsm.get_meet_eivene()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1000, 550) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать косой труп") \
            .jump("dmorte_one_kill_dzm257") \
            .when(lambda: not gsm.get_dead_dzm257() \
                          and not gsm.get_meet_dzm257()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 560) \
            .size(20, 20) \
        .option("Атаковать труп «257»") \
            .jump("dmorte_one_kill_dzm257") \
            .when(lambda: not gsm.get_dead_dzm257() \
                          and gsm.get_meet_dzm257()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 560) \
            .size(20, 20) \
        .option("Поговорить с косым трупом") \
            .jump("dmorte_one_talk_dzm257") \
            .when(lambda: not gsm.get_dead_dzm257() \
                          and not gsm.get_meet_dzm257()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 580) \
            .size(20, 20) \
        .option("Поговорить трупом «257»") \
            .jump("dmorte_one_talk_dzm257") \
            .when(lambda: not gsm.get_dead_dzm257() \
                          and gsm.get_meet_dzm257()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 580) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать труп со швами") \
            .jump("dmorte_one_kill_dzm506") \
            .when(lambda: not gsm.get_dead_dzm506() \
                          and not gsm.get_meet_dzm506()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 700) \
            .size(20, 20) \
        .option("Атаковать труп «506»") \
            .jump("dmorte_one_kill_dzm506") \
            .when(lambda: not gsm.get_dead_dzm506() \
                          and gsm.get_meet_dzm506()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 700) \
            .size(20, 20) \
        .option("Поговорить с трупом со швами") \
            .jump("dmorte_one_talk_dzm506") \
            .when(lambda: not gsm.get_dead_dzm506() \
                          and not gsm.get_meet_dzm506()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 720) \
            .size(20, 20) \
        .option("Поговорить трупом «506»") \
            .jump("dmorte_one_talk_dzm506") \
            .when(lambda: not gsm.get_dead_dzm506() \
                          and gsm.get_meet_dzm506()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(1200, 720) \
            .size(20, 20)

    menu_builder \
        .option("Атаковать качающийся труп") \
            .jump("dmorte_one_kill_dzm985") \
            .when(lambda: not gsm.get_dead_dzm985() \
                          and not gsm.get_meet_dzm985()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 820) \
            .size(20, 20) \
        .option("Атаковать труп «985»") \
            .jump("dmorte_one_kill_dzm985") \
            .when(lambda: not gsm.get_dead_dzm985() \
                          and gsm.get_meet_dzm985()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 820) \
            .size(20, 20) \
        .option("Поговорить с качающимся трупом") \
            .jump("dmorte_one_talk_dzm985") \
            .when(lambda: not gsm.get_dead_dzm985() \
                          and not gsm.get_meet_dzm985()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 840) \
            .size(20, 20) \
        .option("Поговорить трупом «985»") \
            .jump("dmorte_one_talk_dzm985") \
            .when(lambda: not gsm.get_dead_dzm985() \
                          and gsm.get_meet_dzm985()) \
            .idle_image("images/graphics_idle.png") \
            .hover_image("images/graphics_hover.png") \
            .position(820, 840) \
            .size(20, 20)

    return menu_builder
