from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary1_menu(location_id, gsm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm569(), 400, 720)
        .auto_position(440, 720)
        .option(lambda: 'Атаковать труп «569»'
                if gsm.get_meet_dzm569()
                else 'Атаковать плешивый ходячий труп') \
        .jump("start_dzm569_kill") \
        .when(lambda: not gsm.get_dead_dzm569()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «569»'
                if gsm.get_meet_dzm569()
                else 'Поговорить с ходячим плешивым трупом') \
        .jump("start_dzm569_talk") \
        .when(lambda: not gsm.get_dead_dzm569()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm825(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «825»'
                if gsm.get_meet_dzm825()
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_dzm825_kill") \
        .when(lambda: not gsm.get_dead_dzm825()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «825»'
                if gsm.get_meet_dzm825()
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_dzm825_talk") \
        .when(lambda: not gsm.get_dead_dzm825()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm782(), 1160, 860)
        .auto_position(1200, 860)
        .option(lambda: 'Атаковать труп «782»'
                if gsm.get_meet_dzm782()
                else 'Атаковать ходячий труп, полный ненависти') \
        .jump("start_dzm782_kill") \
        .when(lambda: not gsm.get_dead_dzm782()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «782»'
                if gsm.get_meet_dzm782()
                else 'Поговорить с ходячим трупом, полным ненависти') \
        .jump("start_dzm782_talk") \
        .when(lambda: not gsm.get_dead_dzm782()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(170, 460)
        .option(lambda: 'Открыть дверь в западную комнату'
                if gsm.is_visited_location('mortuary_f2r2')
                else "Открыть дверь") \
        .jump(lambda: 'mortuary_walking_2_visit'
                if gsm.is_visited_location('mortuary_f2r2')
                else 'mortuary_walking_2_scene') \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(520, 440) \
        .option("Взять скальпель") \
        .jump("mortuary_walking_1_pick_scalpel") \
        .when(lambda: not gsm.get_has_scalpel()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1240, 1000) \
        .option("Открыть дверь") \
        .jump("mortuary_walking_1_8_closed") \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(940, 220) \
        .option("Открыть дверь") \
        .jump("mortuary_walking_1_up_closed") \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(790, 280) \
        .option("Открыть дверь") \
        .jump("mortuary_walking_1_down_closed") \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    return builders
