from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f1r6_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1360, 400))

    builders.append(MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/zombie.png', lambda: not gsm.get_dead_xach(), 710, 880)
        .auto_position(750, 880)
        .option(lambda: 'Атаковать труп «331»'
                if gsm.get_meet_xach()
                else 'Атаковать ходячий труп повешенного') \
        .jump("start_xach_kill") \
        .when(lambda: not gsm.get_dead_xach()) \
        .style('kill') \
        .option(lambda: 'Поговорить с трупом «331»'
                if gsm.get_meet_xach()
                else 'Поговорить с ходячим трупом повешенного') \
        .jump("start_xach_talk") \
        .when(lambda: not gsm.get_dead_xach()) \
        .style('talk')
    )

    return builders
