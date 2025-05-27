import renpy
from settings.settings_global import (current_global_settings)
from settings.settings_morgue import (current_morgue_settings)
from engine.menu import (MenuBuilder)

global global_settings_manager

def build_morgue_menu(menu_manager):
    return MenuBuilder("morgue_main") \
        .option("Поговорить с Мортом") \
            .jump("dmorte_one_talk_morte") \
            .when(lambda: global_settings_manager.get_in_party_morte() \
                and current_global_settings()['location'] == 'morgue1' \
                and not current_global_settings()['dead_morte']) \
        .option("Поговорить с Мортом") \
            .jump("dmorte_two_talk_morte") \
            .when(lambda: global_settings_manager.get_in_party_morte() \
                and current_global_settings()['location'] == 'morgue2' \
                and not current_global_settings()['dead_morte']) \
        .option("Убить Морта") \
            .jump("dmorte_one_kill_morte") \
            .when(lambda: current_global_settings()['meet_morte'] \
                and global_settings_manager.get_in_party_morte() \
                and not current_global_settings()['dead_morte']) \
        .option("Пригласить Морта в группу") \
            .jump("dmorte_one_join") \
            .when(lambda: not global_settings_manager.get_in_party_morte()) \
        .option("Атаковать плешивый ходячий труп") \
            .jump("dmorte_one_kill_dzm569") \
            .when(lambda: not current_morgue_settings()['dead_dzm569']) \
        .option("Атаковать ходячий труп повешенного") \
            .jump("dmorte_one_kill_dzm825") \
            .when(lambda: not current_morgue_settings()['dead_dzm825']) \
        .option("Атаковать ходячий труп, полный ненависти") \
            .jump("dmorte_one_kill_dzm782") \
            .when(lambda: not current_morgue_settings()['dead_dzm782']) \
        .option("Поговорить с ходячим плешивым трупом") \
            .jump("dmorte_one_talk_dzm569") \
            .when(lambda: not current_morgue_settings()['dead_dzm569']) \
        .option("Поговорить с ходячим трупом повешенного") \
            .jump("dmorte_one_talk_dzm825") \
            .when(lambda: not current_morgue_settings()['dead_dzm825']) \
        .option("Поговорить с ходячим трупом, полным ненависти") \
            .jump("dmorte_one_talk_dzm782") \
            .when(lambda: not current_morgue_settings()['dead_dzm782']) \
        .option("Попробовать открыть одну из дверей") \
            .jump("dmorte_one_open_morgue_door") \
            .when(lambda: current_morgue_settings()['has_intro_key']) \
        .option("Подойти к существу около большой книги") \
            .jump("dmorte_two_meet_dhall") \
            .when(lambda: current_morgue_settings()['saw_dhall'] \
                and not current_global_settings()['meet_dhall']) \
        .option("Поговорить с Дхаллом") \
            .jump("dmorte_two_talk_dhall") \
            .when(lambda: current_morgue_settings()['saw_dhall'] \
                and current_global_settings()['meet_dhall'] \
                and not current_global_settings()['dead_dhall']) \
        .option("Убить Дхалла") \
            .jump("dmorte_two_kill_dhall") \
            .when(lambda: current_global_settings()['meet_dhall'] \
                and not current_global_settings()['dead_dhall']) \
        .done(menu_manager)
