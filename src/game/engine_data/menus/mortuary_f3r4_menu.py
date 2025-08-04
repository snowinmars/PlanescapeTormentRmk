from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f3r4_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 800, 400))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 800)
        .option('Пройти западнее') \
        .jump('walk_to_mortuaryf3r6_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(150, 500)
        .option('Пройти восточнее') \
        .jump('walk_to_mortuaryf3r2_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/dust.png', lambda: not settings_manager.get_dead_dust(), 960, 900)
        .auto_position(1000, 900)
        .option(lambda: 'Атаковать тленного'
                if settings_manager.get_talked_to_dust_times() > 0
                else 'Атаковать человека') \
        .jump(lambda: 'start_dust_kill'
              if settings_manager.get_talked_to_dust_times() > 0
              else 'start_dust_kill_first') \
        .when(lambda: not settings_manager.get_dead_dust()) \
        .style('kill') \
        .option(lambda: 'Поговорить с тленным'
                if settings_manager.get_talked_to_dust_times() > 0
                else 'Поговорить с человеком') \
        .jump(lambda: 'start_dust_talk'
              if settings_manager.get_talked_to_dust_times() > 0
              else 'start_dust_talk_first') \
        .when(lambda: not settings_manager.get_dead_dust() and not settings_manager.get_mortualy_alarmed()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(400, 700) \
        .option("Взять мусор") \
        .jump("walk_mortuaryf3r8_pick_garbage") \
        .when(lambda: not settings_manager.get_has_garbage()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(400, 300) \
        .option("Взять бумагу") \
        .jump("walk_mortuaryf3r8_pick_mortuary_task_list") \
        .when(lambda: not settings_manager.get_has_mortuary_task_list()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1200, 600) \
        .option("Взять иголку") \
        .jump("walk_mortuaryf3r8_pick_needle") \
        .when(lambda: not settings_manager.get_has_needle()) \
        .style('open')
    )

    return builders
