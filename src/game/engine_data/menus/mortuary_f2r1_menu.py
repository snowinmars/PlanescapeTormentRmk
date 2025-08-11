from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f2r1_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zm569(), 400, 720)
        .auto_position(440, 720)
        .option(lambda: 'Атаковать труп «569»'
                if settings_manager.get_talked_to_zm569_times() > 0
                else 'Атаковать плешивый ходячий труп') \
        .jump("start_zm569_kill") \
        .when(lambda: not settings_manager.get_dead_zm569()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «569»'
                if settings_manager.get_talked_to_zm569_times() > 0
                else 'Поговорить с ходячим плешивым трупом') \
        .jump("start_zm569_talk") \
        .when(lambda: not settings_manager.get_dead_zm569()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zm825(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «825»'
                if settings_manager.get_talked_to_zm825_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zm825_kill") \
        .when(lambda: not settings_manager.get_dead_zm825()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «825»'
                if settings_manager.get_talked_to_zm825_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zm825_talk") \
        .when(lambda: not settings_manager.get_dead_zm825()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zm782(), 1160, 860)
        .auto_position(1200, 860)
        .option(lambda: 'Атаковать труп «782»'
                if settings_manager.get_talked_to_zm782_times() > 0
                else 'Атаковать ходячий труп, полный ненависти') \
        .jump("start_zm782_kill") \
        .when(lambda: not settings_manager.get_dead_zm782()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «782»'
                if settings_manager.get_talked_to_zm782_times() > 0
                else 'Поговорить с ходячим трупом, полным ненависти') \
        .jump("start_zm782_talk") \
        .when(lambda: not settings_manager.get_dead_zm782()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(170, 460)
        .option(lambda: 'Открыть дверь в западную комнату'
                if settings_manager.location_manager.is_visited('mortuary_f2r2')
                else "Открыть дверь") \
        .jump(lambda: 'walk_to_mortuaryf2r2_visit'
                if settings_manager.location_manager.is_visited('mortuary_f2r2')
                else 'walk_to_mortuaryf2r2_scene') \
        .when(lambda: settings_manager.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(520, 440) \
        .option("Взять скальпель") \
        .jump("walk_mortuaryf2r1_pick_scalpel") \
        .when(lambda: not settings_manager.get_has_scalpel()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1240, 1000) \
        .option(lambda: 'Открыть дверь в южную комнату'
            if settings_manager.location_manager.is_visited('mortuary_f2r8')
            else "Открыть дверь") \
        .jump(lambda: 'walk_to_mortuaryf2r8_visit'
            if settings_manager.get_has_mortuary_key()
            else "walk_to_mortuaryf2r8_closed") \
        .when(lambda: settings_manager.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(940, 220) \
        .option(lambda: 'Подняться на третий этаж'
            if settings_manager.location_manager.is_visited('mortuary_f3r6') or settings_manager.location_manager.is_visited('mortuary_f3r2')
            else "Подняться по лестнице") \
        .jump(lambda: 'walk_to_mortuaryf3r2_visit'
            if settings_manager.get_has_mortuary_key()
            else "walk_to_mortuaryf3r1_closed") \
        .when(lambda: settings_manager.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(790, 280) \
        .option(lambda: 'Спуститься на первый этаж'
            if settings_manager.location_manager.is_visited('mortuary_f1r1') or settings_manager.location_manager.is_visited('mortuary_f1r7')
            else "Спуститься по лестнице") \
        .jump(lambda: 'walk_to_mortuaryf1r1_visit'
            if settings_manager.get_has_mortuary_key()
            else "walk_to_mortuaryf1r1_closed") \
        .when(lambda: settings_manager.get_has_intro_key()) \
        .style('open')
    )

    return builders
