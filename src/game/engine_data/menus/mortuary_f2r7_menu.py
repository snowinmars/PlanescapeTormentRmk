from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f2r7_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1380, 500))

    builders.append(MenuBuilder(location_id) \
        .auto_position(740, 970)
        .option(lambda: 'Пройти в южную комнату'
                if settings_manager.location_manager.is_visited('mortuary_f2r8')
                else "Открыть дверь") \
        .jump(lambda: 'walk_to_mortuaryf2r8_visit'
            if settings_manager.get_has_mortuary_key()
            else "walk_to_mortuaryf2r8_closed") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1540, 400) \
        .option("Пройти в восточную комнату") \
        .jump("walk_to_mortuaryf2r6_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1110, 350) \
        .option("Взять бальзамирующую жидкость") \
        .jump("walk_mortuaryf2r7_pick_embalm") \
        .when(lambda: not settings_manager.get_has_embalm()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(900, 500) \
        .option("Взять бальзамирующую жидкость") \
        .jump("walk_mortuaryf2r7_pick_embalm") \
        .when(lambda: not settings_manager.get_has_embalm()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(750, 200) \
        .option("Взять серьгу") \
        .jump("walk_mortuaryf2r7_pick_copper_earring_closed") \
        .when(lambda: not settings_manager.get_has_copper_earring_closed()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(930, 260) \
        .option(lambda: 'Подняться на третий этаж'
                if settings_manager.location_manager.is_visited('mortuary_f3r6')
                else "Подняться по лестнице") \
        .jump("walk_to_mortuaryf3r6_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1030, 300) \
        .option(lambda: 'Спуститься на первый этаж'
            if settings_manager.location_manager.is_visited('mortuary_f1r1') or settings_manager.location_manager.is_visited('mortuary_f1r7')
            else "Спуститься по лестнице") \
        .jump(lambda: 'walk_to_mortuaryf1r7_visit'
            if settings_manager.get_has_mortuary_key()
            else "walk_to_mortuaryf1r7_closed") \
        .when(lambda: settings_manager.get_has_intro_key()) \
        .style('open')
    )


    return builders
