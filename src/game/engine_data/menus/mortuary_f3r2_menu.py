from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f3r1_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 500, 800))

    builders.append(MenuBuilder(location_id) \
        .auto_position(750, 850)
        .option('Спуститься на второй этаж') \
        .jump('walk_to_mortuaryf2r1_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(700, 200)
        .option('Пройти севернее') \
        .jump('walk_to_mortuaryf3r4_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1200, 1000)
        .option('Пройти южнее') \
        .jump('walk_to_mortuaryf3r8_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/skelet.png', lambda: not settings_manager.get_dead_s863(), 1060, 300)
        .auto_position(1100, 300)
        .option(lambda: 'Атаковать скелет «863»'
                if settings_manager.get_talked_to_s863_times() > 0
                else 'Атаковать скелет ветерана') \
        .jump(lambda: 'start_s863_kill'
                if settings_manager.get_talked_to_s863_times() > 0 and settings_manager.get_has_dremind()
                else 'start_s863_kill_first') \
        .when(lambda: not settings_manager.get_dead_s863()) \
        .style('kill') \
        .option(lambda: 'Поговорить cо скелетом «863»'
                if settings_manager.get_talked_to_s863_times() > 0
                else 'Поговорить со скелетом ветерана') \
        .jump(lambda: 'start_s863_talk'
                if settings_manager.get_talked_to_s863_times() > 0 and settings_manager.get_has_dremind()
                else 'start_s863_talk_first') \
        .when(lambda: not settings_manager.get_dead_s863()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zm1146(), 960, 300)
        .auto_position(1000, 300)
        .option(lambda: 'Атаковать труп «1146»'
                if settings_manager.get_talked_to_zm1146_times() > 0
                else 'Атаковать плешивый ходячий труп') \
        .jump(lambda: 'start_zm1146_kill'
                if settings_manager.get_talked_to_zm1146_times() > 0
                else 'start_zm1146_kill_first') \
        .when(lambda: not settings_manager.get_dead_zm1146()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1146»'
                if settings_manager.get_talked_to_zm1146_times() > 0
                else 'Поговорить с ходячим плешивым трупом') \
        .jump(lambda: 'start_zm1146_talk'
                if settings_manager.get_talked_to_zm1146_times() > 0
                else 'start_zm1146_talk_first') \
        .when(lambda: not settings_manager.get_dead_zm1146()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zf1148(), 1260, 400)
        .auto_position(1300, 400)
        .option(lambda: 'Атаковать труп «1148»'
                if settings_manager.get_talked_to_zf1148_times() > 0
                else 'Атаковать татуированный труп') \
        .jump("start_zf1148_kill") \
        .when(lambda: not settings_manager.get_dead_zf1148()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1148»'
                if settings_manager.get_talked_to_zf1148_times() > 0
                else 'Поговорить с татуированным трупом') \
        .jump("start_zf1148_talk") \
        .when(lambda: not settings_manager.get_dead_zf1148()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(900, 1000) \
        .option("Взять ключ") \
        .jump("walk_mortuaryf3r8_pick_mortuary_key") \
        .when(lambda: not settings_manager.get_has_mortuary_key()) \
        .style('open')
    )

    return builders
