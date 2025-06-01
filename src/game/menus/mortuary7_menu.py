from engine.menu import (MenuBuilder)

def build_mortuary7_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 1380, 500)
        .auto_position(1420, 500)
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
        .auto_position(740, 970)
        .option(lambda: 'Пройти в южную комнату'
                if gsm.is_visited_location('mortuary8')
                else "Открыть дверь") \
        .jump('dmorte_one_mortuary_go_8_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1540, 400) \
        .option("Пройти в восточную комнату") \
        .jump("dmorte_one_mortuary_go_6_visit") \
        .style('open')
    )


    builders.append(MenuBuilder(location_id) \
        .auto_position(730, 220) \
        .option("Взять бальзамирующую жидкость") \
        .jump("dmorte_one_has_embalm") \
        .when(lambda: not gsm.get_has_embalm()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(930, 260) \
        .option("Подняться наверх") \
        .jump("dmorte_one_walking_8_up") \
        .when(lambda: not gsm.get_has_embalm()) \
        .style('open')
    )

    return builders