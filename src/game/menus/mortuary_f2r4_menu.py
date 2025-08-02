from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r4_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 500, 390))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm1664(), 840, 700)
        .auto_position(880, 700)
        .option(lambda: 'Атаковать труп «1664»'
                if gsm.get_meet_zm1664()
                else 'Атаковать труп с книгами') \
        .jump("start_zm1664_kill") \
        .when(lambda: not gsm.get_dead_zm1664()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1664»'
                if gsm.get_meet_zm1664()
                else 'Поговорить с трупом с книгами') \
        .jump("start_zm1664_talk") \
        .when(lambda: not gsm.get_dead_zm1664()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1590, 400)
        .option(lambda: 'Пройти в северо-восточную комнату'
                if glm.is_visited_location('mortuary_f2r5')
                else "Открыть дверь") \
        .jump('mortuary_walking_5_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(140, 500) \
        .option("Пройти в северо-западную комнату") \
        .jump("mortuary_walking_3_visit") \
        .style('open')
    )

    return builders
