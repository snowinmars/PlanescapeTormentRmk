from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r2_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 510, 880))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm965(), 450, 520)
        .auto_position(490, 520)
        .option(lambda: 'Атаковать труп «965»'
                if gsm.get_meet_zm965()
                else 'Атаковать бродящий труп') \
        .jump("start_zm965_kill") \
        .when(lambda: not gsm.get_dead_zm965()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «965»'
                if gsm.get_meet_zm965()
                else 'Поговорить с бродящим трупом') \
        .jump(lambda: 'start_zm965_talk'
              if gsm.get_meet_zm965()
              else 'start_zm965_talk_first') \
        .when(lambda: not gsm.get_dead_zm965()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zf594(), 490, 720)
        .auto_position(530, 720)
        .option(lambda: 'Атаковать труп «594»'
                if gsm.get_meet_zf594()
                else 'Атаковать неуклюжий труп') \
        .jump("start_zf594_kill") \
        .when(lambda: not gsm.get_dead_zf594()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «594»'
                if gsm.get_meet_zf594()
                else 'Поговорить с неуклюжим трупом') \
        .jump("start_zf594_talk") \
        .when(lambda: not gsm.get_dead_zf594()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zf626(), 840, 600)
        .auto_position(880, 600)
        .option(lambda: 'Атаковать труп «626»'
                if gsm.get_meet_zf626()
                else 'Атаковать разбитый труп') \
        .jump("start_zf626_kill") \
        .when(lambda: not gsm.get_dead_zf626()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «626»'
                if gsm.get_meet_zf626()
                else 'Поговорить с разбитым трупом') \
        .jump("start_zf626_talk") \
        .when(lambda: not gsm.get_dead_zf626()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(500, 100)
        .option(lambda: 'Пройти в северо-западную приёмную'
                if glm.is_visited_location('mortuary_f2r3')
                else "Открыть дверь") \
        .jump(lambda: 'walk_to_mortuaryf2r3_visit'
                if glm.is_visited_location('mortuary_f2r3')
                else 'walk_to_mortuaryf2r3_scene') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(660, 980) \
        .option("Пройти в юго-западную препараторскую") \
        .jump("walk_to_mortuaryf2r1_visit") \
        .style('open')
    )

    return builders
