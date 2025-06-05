from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary4_menu(location_id, gsm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 500, 390))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm1664(), 840, 700)
        .auto_position(880, 700)
        .option(lambda: 'Атаковать труп «1664»'
                if gsm.get_meet_dzm1664()
                else 'Атаковать труп с книгами') \
        .jump("dzm1664_kill") \
        .when(lambda: not gsm.get_dead_dzm1664()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1664»'
                if gsm.get_meet_dzm1664()
                else 'Поговорить с трупом с книгами') \
        .jump("dzm1664_s0") \
        .when(lambda: not gsm.get_dead_dzm1664()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1590, 400)
        .option(lambda: 'Пройти в северо-восточную комнату'
                if gsm.is_visited_location('mortuary5')
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
