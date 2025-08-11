from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f1r3_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1200, 900) \
        .option("Пройти в центральную комнату") \
        .jump("walk_to_mortuaryf1rc_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 150) \
        .option("Пройти в северную комнату") \
        .jump("walk_to_mortuaryf1r5_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(400, 1000) \
        .option("Пройти в главный зал") \
        .jump("walk_to_mortuaryf1r1_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/deionarra.png', lambda: True, 670, 670) \
        .auto_position(710, 670) \
        .option(lambda: 'Поговорить с Дейонаррой' \
                if settings_manager.get_talked_to_deionarra_times() > 0 \
                else 'Поговорить с призраком') \
        .jump(lambda: 'start_deions_talk' \
              if settings_manager.get_talked_to_deionarra_times() > 0 \
              else 'start_deions_talk_first') \
        .when(lambda: True) \
        .style('talk')
    )

    return builders
