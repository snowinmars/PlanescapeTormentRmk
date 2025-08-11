from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f2r6_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 220))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_vaxis(), 1300, 700)
        .auto_position(1340, 700)
        .option(lambda: 'Атаковать Ваксиса'
                if settings_manager.get_talked_to_vaxis_times() > 0
                else 'Атаковать труп') \
        .jump(lambda: 'start_vaxis_kill'
              if settings_manager.get_talked_to_vaxis_times() > 0
              else 'start_vaxis_kill_first') \
        .when(lambda: not settings_manager.get_dead_vaxis()) \
        .style('kill') \
        .option(lambda: 'Поговорить c Ваксисом'
                if settings_manager.get_know_vaxis_name()
                else 'Поговорить с фальшивым зомби'
                if settings_manager.get_talked_to_vaxis_times() > 0
                else 'Поговорить с трупом') \
        .jump(lambda: 'start_vaxis_talk'
              if settings_manager.get_talked_to_vaxis_times() > 0
              else 'start_vaxis_talk_first') \
        .when(lambda: not settings_manager.get_dead_vaxis()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1470, 1000)
        .option(lambda: 'Пройти в юго-восточную препараторскую'
                if settings_manager.location_manager.is_visited('mortuary_f2r7')
                else "Открыть дверь") \
        .jump('walk_to_mortuaryf2r7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1380, 70) \
        .option("Пройти в серево-восточную препараторскую") \
        .jump("walk_to_mortuaryf2r5_visit") \
        .style('open')
    )

    return builders
