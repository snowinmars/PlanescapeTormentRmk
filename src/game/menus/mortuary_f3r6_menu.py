from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f3r6_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1500, 650))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1200, 700)
        .option('Спуститься на второй этаж') \
        .jump('walk_to_mortuaryf2r7_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(700, 100)
        .option('Пройти севернее') \
        .jump('walk_to_mortuaryf3r4_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(900, 900)
        .option('Пройти южнее') \
        .jump('walk_to_mortuaryf3r8_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/skelet.png', lambda: not gsm.get_dead_s748(), 1260, 200)
        .auto_position(1300, 200)
        .option(lambda: 'Атаковать скелет «748»'
                if gsm.get_talked_to_s748_times() > 0
                else 'Атаковать скелет со вставной челюстью') \
        .jump("start_s748_kill") \
        .when(lambda: not gsm.get_dead_s748()) \
        .style('kill') \
        .option(lambda: 'Поговорить cо скелетом «748»'
                if gsm.get_talked_to_s748_times() > 0
                else 'Поговорить со скелетом со вставной челюстью') \
        .jump("start_s748_talk") \
        .when(lambda: not gsm.get_dead_s748()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/skelet.png', lambda: not gsm.get_dead_s996(), 1160, 250)
        .auto_position(1200, 250)
        .option(lambda: 'Атаковать скелет «996»'
                if gsm.get_talked_to_s996_times() > 0
                else 'Атаковать скелет со словом на лбу') \
        .jump("start_s996_kill") \
        .when(lambda: not gsm.get_dead_s996()) \
        .style('kill') \
        .option(lambda: 'Поговорить cо скелетом «996»'
                if gsm.get_talked_to_s996_times() > 0
                else 'Поговорить со скелетом со словом на лбу') \
        .jump("start_s996_talk") \
        .when(lambda: not gsm.get_dead_s996()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm475(), 360, 400)
        .auto_position(400, 400)
        .option(lambda: 'Атаковать труп «475»'
                if gsm.get_talked_to_zm475_times() > 0
                else 'Атаковать проржавевший труп') \
        .jump("start_zm475_kill") \
        .when(lambda: not gsm.get_dead_zm475()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «475»'
                if gsm.get_talked_to_zm475_times() > 0
                else 'Поговорить с проржавевшим трупом') \
        .jump("start_zm475_talk") \
        .when(lambda: not gsm.get_dead_zm475()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm310(), 760, 1000)
        .auto_position(800, 1000)
        .option(lambda: 'Атаковать труп «310»'
                if gsm.get_talked_to_zm310_times() > 0
                else 'Атаковать безжизненный труп') \
        .jump(lambda: 'start_zm310_kill'
                if gsm.get_talked_to_zm310_times() > 0
                else 'start_zm310_kill_first') \
        .when(lambda: not gsm.get_dead_zm310()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «310»'
                if gsm.get_talked_to_zm310_times() > 0
                else 'Поговорить с безжизненным трупом') \
        .jump(lambda: 'start_zm310_talk'
                if gsm.get_talked_to_zm310_times() > 0
                else 'start_zm310_talk_first') \
        .when(lambda: not gsm.get_dead_zm310()) \
        .style('talk')
    )

    return builders
