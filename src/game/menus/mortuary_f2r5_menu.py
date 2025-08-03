from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f2r5_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 780, 330))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/eivene.png', lambda: not gsm.get_dead_eivene(), 960, 530)
        .auto_position(1000, 530)
        .option(lambda: 'Атаковать Эи-Вейн'
                if gsm.get_talked_to_eivene_times() > 0
                else 'Атаковать хрупкую девушку') \
        .jump(lambda: 'start_eivene_kill'
              if gsm.get_talked_to_eivene_times() > 0
              else 'start_eivene_kill_first') \
        .when(lambda: not gsm.get_dead_eivene()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Эи-Вейн'
                if gsm.get_talked_to_eivene_times() > 0
                else 'Поговорить с хрупкой девушкой') \
        .jump(lambda: 'start_eivene_talk'
              if gsm.get_talked_to_eivene_times() > 0
              else 'start_eivene_talk_first') \
        .when(lambda: not gsm.get_dead_eivene()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm257(), 780, 560)
        .auto_position(820, 560)
        .option(lambda: 'Атаковать труп «257»'
                if gsm.get_talked_to_zm257_times() > 0
                else 'Атаковать косой труп') \
        .jump("start_zm257_kill") \
        .when(lambda: not gsm.get_dead_zm257()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «257»'
                if gsm.get_talked_to_zm257_times() > 0
                else 'Поговорить с косым трупом') \
        .jump("start_zm257_talk") \
        .when(lambda: not gsm.get_dead_zm257()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm506(), 1160, 700)
        .auto_position(1200, 700)
        .option(lambda: 'Атаковать труп «506»'
                if gsm.get_talked_to_zm506_times() > 0
                else 'Атаковать труп со швами') \
        .jump("start_zm506_kill") \
        .when(lambda: not gsm.get_dead_zm506()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «506»'
                if gsm.get_talked_to_zm506_times() > 0
                else 'Поговорить с трупом со швами') \
        .jump(lambda: 'start_zm506_talk'
                if gsm.get_has_506_thread()
                else 'start_zm506_talk_first') \
        .when(lambda: not gsm.get_dead_zm506()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm985(), 780, 820)
        .auto_position(820, 820)
        .option(lambda: 'Атаковать труп «985»'
                if gsm.get_talked_to_zm985_times() > 0
                else 'Атаковать качающийся труп') \
        .jump("start_zm985_kill") \
        .when(lambda: not gsm.get_dead_zm985()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «985»'
                if gsm.get_talked_to_zm985_times() > 0
                else 'Поговорить с качающимся трупом') \
        .jump("start_zm985_talk") \
        .when(lambda: not gsm.get_dead_zm985()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1600, 900)
        .option(lambda: 'Пройти в восточную комнату'
                if glm.is_visited_location('mortuary_f2r6')
                else "Открыть дверь") \
        .jump('walk_to_mortuaryf2r6_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(650, 300) \
        .option("Пройти в северную комнату") \
        .jump("walk_to_mortuaryf2r4_visit") \
        .style('open')
    )

    return builders
