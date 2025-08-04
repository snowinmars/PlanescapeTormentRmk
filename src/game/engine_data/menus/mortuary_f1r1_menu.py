from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f1r1_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 900, 300))

    builders.append(MenuBuilder(location_id) \
        .auto_position(800, 125) \
        .option("Подняться на второй этаж") \
        .jump("walk_to_mortuaryf2r1_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/soego.png', lambda: not settings_manager.get_dead_soego(), 950, 920) \
        .auto_position(990, 920) \
        .option(lambda: 'Убить Соего' \
                if settings_manager.get_talked_to_soego_times() > 0 \
                else 'Убить человека') \
        .jump(lambda: 'start_soego_kill' \
            if settings_manager.get_talked_to_soego_times() > 0 \
            else 'start_soego_kill_first') \
        .when(lambda: not settings_manager.get_dead_soego()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Соего' \
                if settings_manager.get_talked_to_soego_times() > 0 \
                else 'Подойти к человеку') \
        .jump(lambda: 'start_soego_talk' \
              if settings_manager.get_talked_to_soego_times() > 0 \
              else 'start_soego_talk_first') \
        .when(lambda: not settings_manager.get_dead_soego()) \
        .style('talk')
    )

    return builders
