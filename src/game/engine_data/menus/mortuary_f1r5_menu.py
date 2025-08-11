from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f1r5_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .auto_position(225, 400) \
        .option("Пройти в северо-восточную усыпальню") \
        .jump("walk_to_mortuaryf1r3_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1450, 1000) \
        .option("Пройти в юго-западную усыпальню") \
        .jump("walk_to_mortuaryf1r7_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(850, 950) \
        .option("Пройти в центральную комнату") \
        .jump("walk_to_mortuaryf1rc_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zf114(), 700, 450)
        .auto_position(740, 450)
        .option(lambda: 'Атаковать труп «114»'
                if settings_manager.get_talked_to_zf114_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zf114_kill") \
        .when(lambda: not settings_manager.get_dead_zf114()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «114»'
                if settings_manager.get_talked_to_zf114_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zf114_talk") \
        .when(lambda: not settings_manager.get_dead_zf114()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zm1041(), 1100, 650)
        .auto_position(1140, 650)
        .option(lambda: 'Атаковать труп «1041»'
                if settings_manager.get_talked_to_zm1041_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zm1041_kill") \
        .when(lambda: not settings_manager.get_dead_zm1041()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «1041»'
                if settings_manager.get_talked_to_zm1041_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zm1041_talk") \
        .when(lambda: not settings_manager.get_dead_zm1041()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_xach(), 1700, 1000)
        .auto_position(1740, 1000)
        .option(lambda: 'Атаковать труп «331»'
                if settings_manager.get_talked_to_xach_times() > 0
                else 'Атаковать слепой труп') \
        .jump("start_xach_kill") \
        .when(lambda: not settings_manager.get_dead_xach()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «331»'
                if settings_manager.get_talked_to_xach_times() > 0
                else 'Поговорить со слепым трупом') \
        .jump("start_xach_talk") \
        .when(lambda: not settings_manager.get_dead_xach()) \
        .style('talk')
    )

    return builders
