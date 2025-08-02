from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f3r8_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 800, 800))

    builders.append(MenuBuilder(location_id) \
        .auto_position(1500, 500)
        .option('Пройти западнее') \
        .jump('walk_to_mortuaryf3r6_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(150, 600)
        .option('Пройти восточнее') \
        .jump('walk_to_mortuaryf3r2_visit') \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/dustfem.png', lambda: not gsm.get_dead_dustfem(), 960, 400)
        .auto_position(1000, 400)
        .option(lambda: 'Атаковать тленную'
                if gsm.get_meet_dustfem()
                else 'Атаковать человека') \
        .jump(lambda: 'start_dustfem_kill'
              if gsm.get_meet_dustfem()
              else 'start_dustfem_kill_first') \
        .when(lambda: not gsm.get_dead_dustfem()) \
        .style('kill') \
        .option(lambda: 'Поговорить с тленной'
                if gsm.get_meet_dustfem()
                else 'Поговорить с человеком') \
        .jump(lambda: 'start_dustfem_talk'
              if gsm.get_meet_dustfem()
              else 'start_dustfem_talk_first') \
        .when(lambda: not gsm.get_dead_dustfem() and not gsm.get_mortualy_alarmed()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/skelet.png', lambda: not gsm.get_dead_s42(), 560, 300)
        .auto_position(600, 300)
        .option(lambda: 'Атаковать скелет «42»'
                if gsm.get_meet_s42()
                else 'Атаковать скелет в комбинезоне') \
        .jump("start_s42_kill") \
        .when(lambda: not gsm.get_dead_s42()) \
        .style('kill') \
        .option(lambda: 'Поговорить cо скелетом «42»'
                if gsm.get_meet_s42()
                else 'Поговорить со скелетом в комбинезоне') \
        .jump("start_s42_talk") \
        .when(lambda: not gsm.get_dead_s42()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zf832(), 1260, 400)
        .auto_position(1300, 400)
        .option(lambda: 'Атаковать труп «832»'
                if gsm.get_meet_zf832()
                else 'Атаковать красивый труп') \
        .jump("start_zf832_kill") \
        .when(lambda: not gsm.get_dead_zf832()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «832»'
                if gsm.get_meet_zf832()
                else 'Поговорить с красивым трупом') \
        .jump("start_zf832_talk") \
        .when(lambda: not gsm.get_dead_zf832()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm613(), 360, 400)
        .auto_position(400, 400)
        .option(lambda: 'Атаковать труп «613»'
                if gsm.get_meet_zm613()
                else 'Атаковать изрезанный труп') \
        .jump("start_zm613_kill") \
        .when(lambda: not gsm.get_dead_zm613()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «613»'
                if gsm.get_meet_zm613()
                else 'Поговорить с изрезанным трупом') \
        .jump("start_zm613_talk") \
        .when(lambda: not gsm.get_dead_zm613()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm79(), 560, 750)
        .auto_position(600, 750)
        .option(lambda: 'Атаковать труп «79»'
                if gsm.get_meet_zm79()
                else 'Атаковать труп почти без головы') \
        .jump("start_zm79_kill") \
        .when(lambda: not gsm.get_dead_zm79()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «79»'
                if gsm.get_meet_zm79()
                else 'Поговорить с трупом почти без головы') \
        .jump("start_zm79_talk") \
        .when(lambda: not gsm.get_dead_zm79()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zf679(), 485, 825)
        .auto_position(525, 825)
        .option(lambda: 'Атаковать труп «679»'
                if gsm.get_meet_zf679()
                else 'Атаковать древний труп') \
        .jump("start_zf679_kill") \
        .when(lambda: not gsm.get_dead_zf679()) \
        .style('kill') \
        .option(lambda: 'Поговорить c трупом «679»'
                if gsm.get_meet_zf679()
                else 'Поговорить с древним трупом') \
        .jump("start_zf679_talk") \
        .when(lambda: not gsm.get_dead_zf679()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/skelet.png', lambda: not gsm.get_dead_s1221(), 410, 900)
        .auto_position(450, 900)
        .option(lambda: 'Атаковать скелет «1221»'
                if gsm.get_meet_s1221()
                else 'Атаковать вонючий скелет') \
        .jump("start_s1221_kill") \
        .when(lambda: not gsm.get_dead_s1221()) \
        .style('kill') \
        .option(lambda: 'Поговорить cо скелетом «1221»'
                if gsm.get_meet_s1221()
                else 'Поговорить со вонючим скелетом') \
        .jump("start_s1221_talk") \
        .when(lambda: not gsm.get_dead_s1221()) \
        .style('talk')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(950, 650) \
        .option("Взять ломик") \
        .jump("walk_mortuaryf3r8_pick_prybar") \
        .when(lambda: not gsm.get_has_prybar()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(820, 700) \
        .option("Взять бумагу") \
        .jump("walk_mortuaryf3r8_pick_dustman_request") \
        .when(lambda: not gsm.get_has_dustman_request()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1675, 150) \
        .option("Взять иголку") \
        .jump("walk_mortuaryf3r8_pick_needle") \
        .when(lambda: not gsm.get_has_needle()) \
        .style('open')
    )

    builders.append(MenuBuilder(location_id) \
        .auto_position(1800, 200) \
        .option("Взять мусор") \
        .jump("walk_mortuaryf3r8_pick_garbage") \
        .when(lambda: not gsm.get_has_garbage()) \
        .style('open')
    )

    return builders
