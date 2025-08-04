from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f2r8_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1300, 800))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 750)
        .option('Пройти в юго-восточную препараторскую') \
        .jump('walk_to_mortuaryf2r7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(80, 800) \
        .option("Пройти в юго-западную препараторскую") \
        .jump("walk_to_mortuaryf2r1_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_zf891(), 960, 700)
        .auto_position(1000, 700)
        .option(lambda: 'Атаковать труп «891»'
                if settings_manager.get_talked_to_zf891_times() > 0
                else 'Атаковать качающийся труп') \
        .jump("start_zf891_kill") \
        .when(lambda: not settings_manager.get_dead_zf891()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «891»'
                if settings_manager.get_talked_to_zf891_times() > 0
                else 'Поговорить с качающимся трупом') \
        .jump("start_zf891_talk") \
        .when(lambda: not settings_manager.get_dead_zf891()) \
        .style('talk')
    )

    return builders
