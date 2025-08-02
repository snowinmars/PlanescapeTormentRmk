from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f1r7_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_zm732(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «732»'
                if gsm.get_meet_zm732()
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_zm732_kill") \
        .when(lambda: not gsm.get_dead_zm732()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «732»'
                if gsm.get_meet_zm732()
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_zm732_talk") \
        .when(lambda: not gsm.get_dead_zm732()) \
        .style('talk')
    )

    return builders
