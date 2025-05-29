def build_morgue1_menu(menu_builder, gsm):
    return menu_builder \
        .option("Поговорить с Мортом") \
        .jump("dmorte_one_talk_morte") \
        .when(lambda: gsm.get_in_party_morte() \
                      and not gsm.get_dead_morte()) \
        .option("Убить Морта") \
        .jump("dmorte_one_kill_morte") \
        .when(lambda: gsm.get_in_party_morte() \
                      and not gsm.get_dead_morte()) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_join") \
            .when(lambda: not gsm.get_in_party_morte() \
                      and not gsm.get_dead_morte()) \
        .option("Атаковать плешивый ходячий труп") \
            .jump("dmorte_one_kill_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and not gsm.get_meet_dzm569()) \
        .option("Атаковать труп «569»") \
            .jump("dmorte_one_kill_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and gsm.get_meet_dzm569()) \
        .option("Атаковать ходячий труп повешенного") \
            .jump("dmorte_one_kill_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and not gsm.get_meet_dzm825()) \
        .option("Атаковать труп «825»") \
            .jump("dmorte_one_kill_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and gsm.get_meet_dzm825()) \
        .option("Атаковать ходячий труп, полный ненависти") \
            .jump("dmorte_one_kill_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782() \
                          and not gsm.get_meet_dzm782()) \
        .option("Атаковать труп «782»") \
            .jump("dmorte_one_kill_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782()  \
                          and gsm.get_meet_dzm782()) \
        .option("Поговорить с ходячим плешивым трупом") \
            .jump("dmorte_one_talk_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and not gsm.get_meet_dzm569()) \
        .option("Поговорить трупом «569»") \
            .jump("dmorte_one_talk_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569() \
                          and gsm.get_meet_dzm569()) \
        .option("Поговорить с ходячим трупом повешенного") \
            .jump("dmorte_one_talk_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and not gsm.get_meet_dzm825()) \
        .option("Поговорить с трупом «825»") \
            .jump("dmorte_one_talk_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825() \
                          and gsm.get_meet_dzm825()) \
        .option("Поговорить с ходячим трупом, полным ненависти") \
            .jump("dmorte_one_talk_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782() \
                          and not gsm.get_meet_dzm782()) \
        .option("Поговорить с трупом «782»") \
            .jump("dmorte_one_talk_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782() \
                          and gsm.get_meet_dzm782()) \
        .option("Попробовать открыть одну из дверей") \
            .jump("dmorte_one_open_morgue_door") \
            .when(lambda: gsm.get_has_intro_key())
