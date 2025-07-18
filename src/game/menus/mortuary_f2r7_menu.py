from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r7_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1380, 500))

    builders.append(MenuBuilder(location_id) \
        .auto_position(740, 970)
        .option(lambda: 'Пройти в южную комнату'
                if glm.is_visited_location('mortuary_f2r8')
                else "Открыть дверь") \
        .jump('mortuary_walking_8_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1540, 400) \
        .option("Пройти в восточную комнату") \
        .jump("mortuary_walking_6_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1110, 350) \
        .option("Взять бальзамирующую жидкость") \
        .jump("mortuary_walking_1_pick_embalm") \
        .when(lambda: not gsm.get_has_embalm()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(930, 260) \
        .option("Подняться наверх") \
        .jump("mortuary_walking_8_up_visit") \
        .when(lambda: not gsm.get_has_embalm()) \
        .style('open')
    )

    return builders