from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f2r4_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 500, 390))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zm1664(), 840, 700)
        .auto_position(880, 700)
        .option(lambda: 'Атаковать труп «1664»'
                if settings_manager.get_talked_to_zm1664_times() > 0
                else 'Атаковать труп с книгами') \
        .jump("start_zm1664_kill") \
        .when(lambda: not settings_manager.get_dead_zm1664()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1664»'
                if settings_manager.get_talked_to_zm1664_times() > 0
                else 'Поговорить с трупом с книгами') \
        .jump("start_zm1664_talk") \
        .when(lambda: not settings_manager.get_dead_zm1664()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1590, 400)
        .option(lambda: 'Пройти в серево-восточную препараторскую'
                if settings_manager.location_manager.is_visited_location('mortuary_f2r5')
                else "Открыть дверь") \
        .jump('walk_to_mortuaryf2r5_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(140, 500) \
        .option("Пройти в северо-западную приёмную") \
        .jump("walk_to_mortuaryf2r3_visit") \
        .style('open')
    )

    return builders
