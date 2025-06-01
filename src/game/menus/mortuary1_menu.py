from engine.menu import (MenuBuilder)

def build_mortuary1_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 1360, 400)
        .auto_position(1400, 400)
        .option('Убить Морта')
        .jump("dmorte_one_kill_morte") \
        .when(lambda: gsm.get_in_party_morte() \
                      and not gsm.get_dead_morte()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Мортом'
                if gsm.get_in_party_morte()
                else 'Пригласить Морта в группу') \
        .jump(lambda: 'dmorte_one_talk_morte'
                if gsm.get_in_party_morte()
                else 'dmorte_join') \
        .when(lambda: not gsm.get_dead_morte()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm569(), 400, 720)
        .auto_position(440, 720)
        .option(lambda: 'Атаковать труп «569»'
                if gsm.get_meet_dzm569()
                else 'Атаковать плешивый ходячий труп') \
        .jump("dmorte_one_kill_dzm569") \
        .when(lambda: not gsm.get_dead_dzm569()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «569»'
                if gsm.get_meet_dzm569()
                else 'Поговорить с ходячим плешивым трупом') \
        .jump("dmorte_one_talk_dzm569") \
        .when(lambda: not gsm.get_dead_dzm569()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm825(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «825»'
                if gsm.get_meet_dzm825()
                else 'Атаковать ходячий труп повешенного') \
        .jump("dmorte_one_kill_dzm825") \
        .when(lambda: not gsm.get_dead_dzm825()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «825»'
                if gsm.get_meet_dzm825()
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("dmorte_one_talk_dzm825") \
        .when(lambda: not gsm.get_dead_dzm825()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm782(), 1160, 860)
        .auto_position(1200, 860)
        .option(lambda: 'Атаковать труп «782»'
                if gsm.get_meet_dzm782()
                else 'Атаковать ходячий труп, полный ненависти') \
        .jump("dmorte_one_kill_dzm782") \
        .when(lambda: not gsm.get_dead_dzm782()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «782»'
                if gsm.get_meet_dzm782()
                else 'Поговорить с ходячим трупом, полным ненависти') \
        .jump("dmorte_one_talk_dzm782") \
        .when(lambda: not gsm.get_dead_dzm782()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(170, 460)
        .option(lambda: 'Открыть дверь в западную комнату'
                if gsm.is_visited_location('mortuary2')
                else "Открыть дверь") \
        .jump(lambda: 'dmorte_one_mortuary_go_2_visit'
                if gsm.is_visited_location('mortuary2')
                else 'dmorte_one_mortuary_go_1_2_scene') \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1240, 1000) \
        .option("Открыть дверь") \
        .jump("dmorte_one_mortuary_go_1_8_closed") \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(940, 220) \
        .option("Открыть дверь") \
        .jump("dmorte_one_mortuary_go_1_up_closed") \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(790, 280) \
        .option("Открыть дверь") \
        .jump("dmorte_one_mortuary_go_1_down_closed") \
        .when(lambda: gsm.get_has_intro_key()) \
        .style('open')
    )

    return builders
