from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r8_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1300, 800))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 750)
        .option('Пройти в юго-восточную комнату') \
        .jump('mortuary_walking_7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(80, 800) \
        .option("Пройти в юго-западную комнату") \
        .jump("mortuary_walking_1_visit") \
        .style('open')
    )

    return builders