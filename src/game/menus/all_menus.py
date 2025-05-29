from menus.morgue1_menu import (build_morgue1_menu)
from menus.morgue2_menu import (build_morgue2_menu)
from engine.menu import (MenuBuilder)


def build_all_menus(menu_manager, gsm):
    build_morgue1_menu(MenuBuilder('morgue1'), gsm).done(menu_manager)
    build_morgue2_menu(MenuBuilder('morgue2'), gsm).done(menu_manager)
