from engine.menu import (MenuBuilder)

def build_mortuary5_menu(location_id, gsm):
    builders = []

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), 780, 330)
        .auto_position(820, 330)
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
        .with_main_texture('images/menu_sprites/eivene.png', lambda: not gsm.get_dead_eivene(), 960, 530)
        .auto_position(1000, 530)
        .option(lambda: 'Атаковать Эи-Вейн'
                if gsm.get_meet_eivene()
                else 'Атаковать хрупкую девушку') \
        .jump(lambda: 'dmorte_one_kill_eivene'
              if gsm.get_meet_eivene()
              else 'dmorte_one_kill_first_eivene') \
        .when(lambda: not gsm.get_dead_eivene()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Эи-Вейн'
                if gsm.get_meet_eivene()
                else 'Поговорить с хрупкой девушкой') \
        .jump(lambda: 'dmorte_one_talk_eivene'
              if gsm.get_meet_eivene()
              else 'dmorte_one_talk_first_eivene') \
        .when(lambda: not gsm.get_dead_eivene()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm257(), 780, 560)
        .auto_position(820, 560)
        .option(lambda: 'Атаковать труп «257»'
                if gsm.get_meet_dzm257()
                else 'Атаковать косой труп') \
        .jump("dmorte_one_kill_dzm257") \
        .when(lambda: not gsm.get_dead_dzm257()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «257»'
                if gsm.get_meet_dzm257()
                else 'Поговорить с косым трупом') \
        .jump("dmorte_one_talk_dzm257") \
        .when(lambda: not gsm.get_dead_dzm257()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm506(), 1160, 700)
        .auto_position(1200, 700)
        .option(lambda: 'Атаковать труп «506»'
                if gsm.get_meet_dzm506()
                else 'Атаковать труп со швами') \
        .jump("dmorte_one_kill_dzm506") \
        .when(lambda: not gsm.get_dead_dzm506()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «506»'
                if gsm.get_meet_dzm506()
                else 'Поговорить с трупом со швами') \
        .jump("dmorte_one_talk_dzm506") \
        .when(lambda: not gsm.get_dead_dzm506()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_dzm985(), 780, 820)
        .auto_position(820, 820)
        .option(lambda: 'Атаковать труп «985»'
                if gsm.get_meet_dzm985()
                else 'Атаковать качающийся труп') \
        .jump("dmorte_one_kill_dzm985") \
        .when(lambda: not gsm.get_dead_dzm985()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «985»'
                if gsm.get_meet_dzm985()
                else 'Поговорить с качающимся трупом') \
        .jump("dmorte_one_talk_dzm985") \
        .when(lambda: not gsm.get_dead_dzm985()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1600, 900)
        .option(lambda: 'Пройти в восточную комнату'
                if gsm.is_visited_location('mortuary6')
                else "Открыть дверь") \
        .jump('dmorte_one_mortuary_go_6_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(650, 300) \
        .option("Пройти в северную комнату") \
        .jump("dmorte_one_mortuary_go_4_visit") \
        .style('open')
    )

    return builders
