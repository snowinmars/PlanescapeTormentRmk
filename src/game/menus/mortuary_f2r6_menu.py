from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r6_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1360, 220))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_vaxis(), 1300, 700)
        .auto_position(1340, 700)
        .option(lambda: 'Атаковать Ваксиса'
                if gsm.get_meet_vaxis()
                else 'Атаковать труп') \
        .jump(lambda: 'start_vaxis_kill'
              if gsm.get_meet_vaxis()
              else 'start_vaxis_kill_first') \
        .when(lambda: not gsm.get_dead_vaxis()) \
        .style('kill') \
        .option(lambda: 'Поговорить c Ваксисом'
                if gsm.get_know_vaxis_name()
                else 'Поговорить с фальшивым зомби' if gsm.get_meet_vaxis()
                else 'Поговорить с трупом') \
        .jump(lambda: 'start_vaxis_talk'
              if gsm.get_meet_vaxis()
              else 'start_vaxis_talk_first') \
        .when(lambda: not gsm.get_dead_vaxis()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1470, 1000)
        .option(lambda: 'Пройти в юго-восточную комнату'
                if glm.is_visited_location('mortuary_f2r7')
                else "Открыть дверь") \
        .jump('mortuary_walking_7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1380, 70) \
        .option("Пройти в северо-восточную комнату") \
        .jump("mortuary_walking_5_visit") \
        .style('open')
    )

    return builders
