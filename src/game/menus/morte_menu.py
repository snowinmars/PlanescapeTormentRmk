from engine.menu import (MenuBuilder)

def morte_menu(gsm, location_id, main_texture_xpos, main_texture_ypos):
    return MenuBuilder(location_id) \
        .with_main_texture('images/menu_sprites/morte.png', lambda: not gsm.get_dead_morte(), main_texture_xpos, main_texture_ypos) \
        .auto_position(main_texture_xpos + 40, main_texture_ypos) \
        .option('Убить Морта') \
        .jump("morte1_kill") \
        .when(lambda: gsm.get_in_party_morte() \
                      and not gsm.get_dead_morte()) \
        .style('kill') \
        .option(lambda: 'Поговорить с Мортом'
                if gsm.get_in_party_morte()
                else 'Пригласить Морта в группу') \
        .jump(lambda: 'morte1_s30'
                if gsm.get_in_party_morte()
                else 'morte1_s26') \
        .when(lambda: not gsm.get_dead_morte()) \
        .style('talk')
