from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary3_menu(location_id, gsm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 310, 770))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/dhall.png', lambda: not gsm.get_dead_dhall(), 950, 920) \
        .auto_position(990, 920) \
        # .option(lambda: 'Убить Дхалла' \
        #         if gsm.get_meet_dhall() \
        #         else 'Убить существо около большой книги') \
        # .jump(lambda: 'start_ddhall_kill' \
        #     if gsm.get_meet_dhall() \
        #     else 'start_ddhall_kill_first') \
        # .when(lambda: not gsm.get_dead_dhall()) \
        # .style('kill') \
        .option(lambda: 'Поговорить с Дхаллом' \
                if gsm.get_meet_dhall() \
                else 'Подойти к существу около большой книги') \
        .jump(lambda: 'start_ddhall_talk' \
              if gsm.get_meet_dhall() \
              else 'start_ddhall_talk_first') \
        .when(lambda: not gsm.get_dead_dhall()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm396(), 560, 500)
        .auto_position(600, 500) \
        .option(lambda: 'Атаковать труп «396»' \
                if gsm.get_meet_dzm396() \
                else 'Атаковать труп медбрата') \
        .jump("start_dzm396_kill") \
        .when(lambda: not gsm.get_dead_dzm396()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «396»' \
                if gsm.get_meet_dzm396() \
                else 'Поговорить с трупом медбрата') \
        .jump(lambda: 'start_dzm396_talk' \
                if gsm.get_has_bandages_zm396() \
                else 'start_dzm396_talk_first') \
        .when(lambda: not gsm.get_dead_dzm396()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm1201(), 660, 930)
        .auto_position(700, 930)
        # .option(lambda: 'Атаковать труп «1201»'
        #         if gsm.get_meet_dzm1201()
        #         else 'Атаковать труп с чернильницей') \
        # .jump("dzm1201_kill") \
        # .when(lambda: not gsm.get_dead_dzm1201()) \
        # .style('kill') \
        .option(lambda: 'Поговорить c трупом «1201»'
                if gsm.get_meet_dzm1201()
                else 'Поговорить с трупом с чернильницей') \
        .jump("dzm1201_s0") \
        .when(lambda: not gsm.get_dead_dzm1201()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf1096(), 1160, 950)
        .auto_position(1200, 950)
        .option(lambda: 'Атаковать труп «1096»'
                if gsm.get_meet_dzf1096()
                else 'Атаковать труп с косой на шее') \
        .jump("start_dzf1096_kill") \
        .when(lambda: not gsm.get_dead_dzf1096()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1096»'
                if gsm.get_meet_dzf1096()
                else 'Поговорить с трупом с косой на шее') \
        .jump("start_dzf1096_talk") \
        .when(lambda: not gsm.get_dead_dzf1096()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzf1072(), 900, 600)
        .auto_position(940, 600)
        .option(lambda: 'Атаковать труп «1072»'
                if gsm.get_meet_dzf1072()
                else 'Атаковать труп без челюсти') \
        .jump("dzf1072_kill") \
        .when(lambda: not gsm.get_dead_dzf1072()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «1072»'
                if gsm.get_meet_dzf1072()
                else 'Поговорить с трупом без челюсти') \
        .jump("dzf1072_s0") \
        .when(lambda: not gsm.get_dead_dzf1072()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(960, 320)
        .option(lambda: 'Пройти в северную комнату'
                if gsm.is_visited_location('mortuary4')
                else "Открыть дверь") \
        .jump('mortuary_walking_4_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(160, 1000) \
        .option("Пройти в западную комнату") \
        .jump("mortuary_walking_2_scene") \
        .style('open')
    )

    return builders
