from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary2_menu(location_id, gsm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 510, 880))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm965(), 450, 520)
        .auto_position(490, 520)
        .option(lambda: 'Атаковать труп «965»'
                if gsm.get_meet_dzm965()
                else 'Атаковать бродящий труп') \
        .jump("start_dzm965_kill") \
        .when(lambda: not gsm.get_dead_dzm965()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «965»'
                if gsm.get_meet_dzm965()
                else 'Поговорить с бродящим трупом') \
        .jump(lambda: 'start_dzm965_talk'
              if gsm.get_meet_dzm965()
              else 'start_dzm965_talk_first') \
        .when(lambda: not gsm.get_dead_dzm965()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf594(), 490, 720)
        .auto_position(530, 720)
        .option(lambda: 'Атаковать труп «594»'
                if gsm.get_meet_dzf594()
                else 'Атаковать неуклюжий труп') \
        .jump("start_dzf594_kill") \
        .when(lambda: not gsm.get_dead_dzf594()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «594»'
                if gsm.get_meet_dzf594()
                else 'Поговорить с неуклюжим трупом') \
        .jump("start_dzf594_talk") \
        .when(lambda: not gsm.get_dead_dzf594()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf626(), 840, 600)
        .auto_position(880, 600)
        .option(lambda: 'Атаковать труп «626»'
                if gsm.get_meet_dzf626()
                else 'Атаковать разбитый труп') \
        .jump("start_dzf626_kill") \
        .when(lambda: not gsm.get_dead_dzf626()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «626»'
                if gsm.get_meet_dzf626()
                else 'Поговорить с разбитым трупом') \
        .jump("start_dzf626_talk") \
        .when(lambda: not gsm.get_dead_dzf626()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(500, 100)
        .option(lambda: 'Пройти в северо-западную комнату'
                if gsm.is_visited_location('mortuary_f2r3')
                else "Открыть дверь") \
        .jump(lambda: 'mortuary_walking_3_visit'
                if gsm.is_visited_location('mortuary_f2r3')
                else 'mortuary_walking_3_scene') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(660, 980) \
        .option("Пройти в юго-западную комнату") \
        .jump("mortuary_walking_1_visit") \
        .style('open')
    )

    return builders
