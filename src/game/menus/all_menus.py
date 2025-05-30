from menus.mortuary1_menu import (build_mortuary1_menu)
from menus.mortuary2_menu import (build_mortuary2_menu)
from menus.mortuary3_menu import (build_mortuary3_menu)
from engine.menu import (MenuBuilder)


def build_all_menus(menu_manager, gsm):
    build_mortuary1_menu(MenuBuilder('mortuary1'), gsm).done(menu_manager)
    build_mortuary2_menu(MenuBuilder('mortuary2'), gsm).done(menu_manager)
    build_mortuary3_menu(MenuBuilder('mortuary3'), gsm).done(menu_manager)
