from engine.menu import (MenuBuilder)

def build_mortuary6_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 1360, 220)
        .auto_position(1400, 220)
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
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_vaxis(), 1300, 700)
        .auto_position(1340, 700)
        .option(lambda: 'Атаковать Ваксиса'
                if gsm.get_meet_vaxis()
                else 'Атаковать труп') \
        .jump(lambda: 'dmorte_one_kill_vaxis'
              if gsm.get_meet_vaxis()
              else 'dmorte_one_kill_first_vaxis') \
        .when(lambda: not gsm.get_dead_vaxis()) \
        .style('kill') \
        .option(lambda: 'Поговорить c Ваксисом'
                if gsm.get_meet_vaxis()
                else 'Поговорить с трупом') \
        .jump(lambda: 'dmorte_one_talk_vaxis'
              if gsm.get_meet_vaxis()
              else 'dmorte_one_talk_first_vaxis') \
        .when(lambda: not gsm.get_dead_vaxis()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1470, 1000)
        .option(lambda: 'Пройти в юго-восточную комнату'
                if gsm.is_visited_location('mortuary7')
                else "Открыть дверь") \
        .jump('dmorte_one_mortuary_go_7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1380, 70) \
        .option("Пройти в северо-восточную комнату") \
        .jump("dmorte_one_mortuary_go_5_visit") \
        .style('open')
    )

    return builders
