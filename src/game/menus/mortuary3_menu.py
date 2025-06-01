from engine.menu import (MenuBuilder)

def build_mortuary3_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 310, 770)
        .auto_position(350, 770)
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
        .with_main_texture('images/menu_sprites/dhall.png', lambda: not gsm.get_dead_dhall(), 950, 920)
        .auto_position(990, 920)
        .option(lambda: 'Убить Дхалла'
                if gsm.get_meet_dhall()
                else 'Убить существо около большой книги') \
        .jump(lambda: 'dmorte_two_kill_dhall'
              if gsm.get_meet_dhall()
              else 'dmorte_two_kill_dhall') \
        .when(lambda: not gsm.get_dead_dhall()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Дхаллом'
                if gsm.get_meet_dhall()
                else 'Подойти к существу около большой книги') \
        .jump(lambda: 'dmorte_two_talk_dhall'
              if gsm.get_meet_dhall()
              else 'dmorte_two_meet_dhall') \
        .when(lambda: gsm.get_saw_dhall() \
                      and not gsm.get_dead_dhall()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm396(), 560, 500)
        .auto_position(600, 500)
        .option(lambda: 'Атаковать труп «396»'
                if gsm.get_meet_dzm396()
                else 'Атаковать труп медбрата') \
        .jump("dmorte_one_kill_dzm396") \
        .when(lambda: not gsm.get_dead_dzm396()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «396»'
                if gsm.get_meet_dzm396()
                else 'Поговорить с трупом медбрата') \
        .jump("dmorte_one_talk_dzm396") \
        .when(lambda: not gsm.get_dead_dzm396()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm1201(), 660, 930)
        .auto_position(700, 930)
        .option(lambda: 'Атаковать труп «1201»'
                if gsm.get_meet_dzm1201()
                else 'Атаковать труп с чернильницей') \
        .jump("dmorte_one_kill_dzm1201") \
        .when(lambda: not gsm.get_dead_dzm1201()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1201»'
                if gsm.get_meet_dzm1201()
                else 'Поговорить с трупом с чернильницей') \
        .jump("dmorte_one_talk_dzm1201") \
        .when(lambda: not gsm.get_dead_dzm1201()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf1096(), 1160, 950)
        .auto_position(1200, 950)
        .option(lambda: 'Атаковать труп «1096»'
                if gsm.get_meet_dzf1096()
                else 'Атаковать труп с косой на шее') \
        .jump("dmorte_one_kill_dzf1096") \
        .when(lambda: not gsm.get_dead_dzf1096()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1096»'
                if gsm.get_meet_dzf1096()
                else 'Поговорить с трупом с косой на шее') \
        .jump("dmorte_one_talk_dzf1096") \
        .when(lambda: not gsm.get_dead_dzf1096()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf1072(), 900, 600)
        .auto_position(940, 600)
        .option(lambda: 'Атаковать труп «1072»'
                if gsm.get_meet_dzf1072()
                else 'Атаковать труп без челюсти') \
        .jump("dmorte_one_kill_dzf1072") \
        .when(lambda: not gsm.get_dead_dzf1072()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1072»'
                if gsm.get_meet_dzf1072()
                else 'Поговорить с трупом без челюсти') \
        .jump("dmorte_one_talk_dzf1072") \
        .when(lambda: not gsm.get_dead_dzf1072()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(960, 320)
        .option(lambda: 'Пройти в северную комнату'
                if gsm.is_visited_location('mortuary4')
                else "Открыть дверь") \
        .jump('dmorte_one_mortuary_go_4_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(160, 1000) \
        .option("Пройти в западную комнату") \
        .jump("dmorte_one_mortuary_go_2_visit") \
        .style('open')
    )

    return builders
