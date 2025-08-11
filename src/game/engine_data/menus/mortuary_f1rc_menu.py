from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)


def build_mortuary_f1rc_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .auto_position(600, 900) \
        .option("Пройти в главный зал") \
        .jump("walk_to_mortuaryf1r1_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(400, 300) \
        .option("Пройти в северо-восточную усыпальню") \
        .jump("walk_to_mortuaryf1r3_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 900) \
        .option("Пройти в юго-западную усыпальню") \
        .jump("walk_to_mortuaryf1r7_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1600, 200) \
        .option("Пройти в северную комнату") \
        .jump("walk_to_mortuaryf1r5_visit") \
        .style('open')
    )

    return builders
