import renpy
from engine.menu import (MenuBuilder)

global global_settings_manager


def build_morgue_menu(menu_manager, gsm):
    return MenuBuilder("morgue_main") \
        .option("Поговорить с Мортом") \
            .jump("dmorte_one_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                and gsm.get_location() == 'morgue1' \
                and not gsm.get_dead_morte()) \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: gsm.get_in_party_morte() \
                and gsm.get_location() == 'morgue2' \
                and not gsm.get_dead_morte()) \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: gsm.get_meet_morte() \
                and gsm.get_in_party_morte() \
                and not gsm.get_dead_morte()) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_one_join") \
            .when(lambda: not gsm.get_in_party_morte()) \
        .option("Атаковать плешивый ходячий труп") \
            .jump("dmorte_one_kill_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569()) \
        .option("Атаковать ходячий труп повешенного") \
            .jump("dmorte_one_kill_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825()) \
        .option("Атаковать ходячий труп, полный ненависти") \
            .jump("dmorte_one_kill_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782()) \
        .option("Поговорить с ходячим плешивым трупом") \
            .jump("dmorte_one_talk_dzm569") \
            .when(lambda: not gsm.get_dead_dzm569()) \
        .option("Поговорить с ходячим трупом повешенного") \
            .jump("dmorte_one_talk_dzm825") \
            .when(lambda: not gsm.get_dead_dzm825()) \
        .option("Поговорить с ходячим трупом, полным ненависти") \
            .jump("dmorte_one_talk_dzm782") \
            .when(lambda: not gsm.get_dead_dzm782()) \
        .option("Попробовать открыть одну из дверей") \
            .jump("dmorte_one_open_morgue_door") \
            .when(lambda: gsm.get_has_intro_key()) \
        .option("Подойти к существу около большой книги") \
            .jump("dmorte_two_meet_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                and not gsm.get_meet_dhall()) \
        .option("Поговорить с Дхаллом") \
            .jump("dmorte_two_talk_dhall") \
            .when(lambda: gsm.get_saw_dhall() \
                and gsm.get_meet_dhall() \
                and not gsm.get_dead_dhall()) \
        .option("Убить Дхалла") \
            .jump("dmorte_two_kill_dhall") \
            .when(lambda: gsm.get_meet_dhall() \
                and not gsm.get_dead_dhall()) \
        .done(menu_manager)
