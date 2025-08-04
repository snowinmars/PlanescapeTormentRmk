from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f1r6_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not settings_manager.get_dead_xach(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «331»'
                if settings_manager.get_talked_to_xach_times() > 0
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_xach_kill") \
        .when(lambda: not settings_manager.get_dead_xach()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «331»'
                if settings_manager.get_talked_to_xach_times() > 0
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_xach_talk") \
        .when(lambda: not settings_manager.get_dead_xach()) \
        .style('talk')
    )

    return builders
