from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f1r5_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zf114(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «114»'
                if gsm.get_talked_to_zf114_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zf114_kill") \
        .when(lambda: not gsm.get_dead_zf114()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «114»'
                if gsm.get_talked_to_zf114_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zf114_talk") \
        .when(lambda: not gsm.get_dead_zf114()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm1041(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «1041»'
                if gsm.get_talked_to_zf1041_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zm1041_kill") \
        .when(lambda: not gsm.get_dead_zm1041()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «1041»'
                if gsm.get_talked_to_zf1041_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zm1041_talk") \
        .when(lambda: not gsm.get_dead_zm1041()) \
        .style('talk')
    )

    # TODO bug: copypasted zombie
    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm1041(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «1041»'
                if gsm.get_talked_to_zf1041_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zm1041_kill") \
        .when(lambda: not gsm.get_dead_zm1041()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «1041»'
                if gsm.get_talked_to_zf1041_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zm1041_talk") \
        .when(lambda: not gsm.get_dead_zm1041()) \
        .style('talk')
    )

    return builders
