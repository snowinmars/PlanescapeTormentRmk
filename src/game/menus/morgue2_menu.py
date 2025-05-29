def build_morgue2_menu(menu_builder, gsm):
    menu_builder \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_meet_morte() \
                          and gsm.get_in_party_morte() \
                          and not gsm.get_dead_morte()) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte())

    menu_builder \
        .option("Подойти к существу около большой книги") \
            .jump("dmorte_two_meet_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                          and not gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
        .option("Поговорить с Дхаллом") \
            .jump("dmorte_two_talk_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                          and gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
        .option("Убить существо около большой книги") \
            .jump("dmorte_two_kill_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                          and not gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall()) \
        .option("Убить Дхалла") \
            .jump("dmorte_two_kill_dhall") \
            .when(lambda: gsm.get_meet_dhall() \
                          and not gsm.get_dead_dhall())

    menu_builder \
        .option("Атаковать бродящий труп") \
            .jump("dmorte_one_kill_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and not gsm.get_meet_dzm965()) \
        .option("Атаковать труп «965»") \
            .jump("dmorte_one_kill_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and gsm.get_meet_dzm965()) \
        .option("Поговорить с бродящим трупом") \
            .jump("dmorte_one_talk_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and not gsm.get_meet_dzm965()) \
        .option("Поговорить трупом «965»") \
            .jump("dmorte_one_talk_dzm965") \
            .when(lambda: not gsm.get_dead_dzm965() \
                          and gsm.get_meet_dzm965()) \
        .option("Атаковать неуклюжий труп") \
            .jump("dmorte_one_kill_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and not gsm.get_meet_dzf594()) \
        .option("Атаковать труп «594»") \
            .jump("dmorte_one_kill_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and gsm.get_meet_dzf594()) \
        .option("Поговорить с неуклюжим трупом") \
            .jump("dmorte_one_talk_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and not gsm.get_meet_dzf594()) \
        .option("Поговорить трупом «594»") \
            .jump("dmorte_one_talk_dzf594") \
            .when(lambda: not gsm.get_dead_dzf594() \
                          and gsm.get_meet_dzf594()) \
        .option("Атаковать разбитый труп") \
            .jump("dmorte_one_kill_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and not gsm.get_meet_dzf626()) \
        .option("Атаковать труп «626»") \
            .jump("dmorte_one_kill_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and gsm.get_meet_dzf626()) \
        .option("Поговорить с разбитым трупом") \
            .jump("dmorte_one_talk_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and not gsm.get_meet_dzf626()) \
        .option("Поговорить трупом «626»") \
            .jump("dmorte_one_talk_dzf626") \
            .when(lambda: not gsm.get_dead_dzf626() \
                          and gsm.get_meet_dzf626())

    return menu_builder