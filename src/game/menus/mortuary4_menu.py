from engine.menu import (MenuBuilder)

def build_mortuary4_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 500, 390)
        .auto_position(540, 390)
        .option('Убить Морта')
        .jump("dmorte_one_kill_morte") \
        .when(lambda: gsm.get_in_party_morte() \
                      and not gsm.get_dead_morte()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Мортом'
                if gsm.get_in_party_morte()
                else 'Пригласить Морта в группу') \
        .jump(lambda: 'dmorte_two_talk_morte'
                if gsm.get_in_party_morte()
                else 'dmorte_join') \
        .when(lambda: not gsm.get_dead_morte()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm1664(), 840, 700)
        .auto_position(880, 700)
        .option(lambda: 'Атаковать труп «1664»'
                if gsm.get_meet_dzm1664()
                else 'Атаковать труп с книгами') \
        .jump("dmorte_one_kill_dzm1664") \
        .when(lambda: not gsm.get_dead_dzm1664()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1664»'
                if gsm.get_meet_dzm1664()
                else 'Поговорить с трупом с книгами') \
        .jump("dmorte_one_talk_dzm1664") \
        .when(lambda: not gsm.get_dead_dzm1664()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1590, 400)
        .option(lambda: 'Пройти в северо-восточную комнату'
                if gsm.is_visited_location('mortuary5')
                else "Открыть дверь") \
        .jump('dmorte_one_mortuary_go_5_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(140, 500) \
        .option("Пройти в северо-западную комнату") \
        .jump("dmorte_one_mortuary_go_3_visit") \
        .style('open')
    )

    return builders
