from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r8_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1300, 800))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 750)
        .option('Пройти в юго-восточную препараторскую') \
        .jump('walk_to_mortuaryf2r7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(80, 800) \
        .option("Пройти в юго-западную препараторскую") \
        .jump("walk_to_mortuaryf2r1_visit") \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zf891(), 960, 700)
        .auto_position(1000, 700)
        .option(lambda: 'Атаковать труп «891»'
                if gsm.get_meet_zf891()
                else 'Атаковать качающийся труп') \
        .jump("start_zf891_kill") \
        .when(lambda: not gsm.get_dead_zf891()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «891»'
                if gsm.get_meet_zf891()
                else 'Поговорить с качающимся трупом') \
        .jump("start_zf891_talk") \
        .when(lambda: not gsm.get_dead_zf891()) \
        .style('talk')
    )

    return builders