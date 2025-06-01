from engine.menu import (MenuBuilder)

def build_mortuary2_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 510, 880)
        .auto_position(550, 880)
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
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm965(), 450, 520)
        .auto_position(490, 520)
        .option(lambda: 'Атаковать труп «965»'
                if gsm.get_meet_dzm965()
                else 'Атаковать бродящий труп') \
        .jump("dmorte_one_kill_dzm965") \
        .when(lambda: not gsm.get_dead_dzm965()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «965»'
                if gsm.get_meet_dzm965()
                else 'Поговорить с бродящим трупом') \
        .jump(lambda: 'dmorte_one_talk_dzm965'
              if gsm.get_meet_dzm965()
              else 'dmorte_one_first_talk_dzm965') \
        .when(lambda: not gsm.get_dead_dzm965()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf594(), 490, 720)
        .auto_position(530, 720)
        .option(lambda: 'Атаковать труп «594»'
                if gsm.get_meet_dzf594()
                else 'Атаковать неуклюжий труп') \
        .jump("dmorte_one_kill_dzf594") \
        .when(lambda: not gsm.get_dead_dzf594()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «594»'
                if gsm.get_meet_dzf594()
                else 'Поговорить с неуклюжим трупом') \
        .jump("dmorte_one_talk_dzf594") \
        .when(lambda: not gsm.get_dead_dzf594()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf626(), 840, 600)
        .auto_position(880, 600)
        .option(lambda: 'Атаковать труп «626»'
                if gsm.get_meet_dzf626()
                else 'Атаковать разбитый труп') \
        .jump("dmorte_one_kill_dzf626") \
        .when(lambda: not gsm.get_dead_dzf626()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «626»'
                if gsm.get_meet_dzf626()
                else 'Поговорить с разбитым трупом') \
        .jump("dmorte_one_talk_dzf626") \
        .when(lambda: not gsm.get_dead_dzf626()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(500, 100)
        .option(lambda: 'Пройти в северо-западную комнату'
                if gsm.is_visited_location('mortuary3')
                else "Открыть дверь") \
        .jump(lambda: 'dmorte_one_mortuary_go_3_visit'
                if gsm.is_visited_location('mortuary3')
                else 'dmorte_one_mortuary_go_2_3_scene') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(660, 980) \
        .option("Пройти в юго-западную комнату") \
        .jump("dmorte_one_mortuary_go_1_visit") \
        .style('open')
    )

    return builders
