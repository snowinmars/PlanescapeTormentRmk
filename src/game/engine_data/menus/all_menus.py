from game.engine_data.menus.mortuary_f3r1_menu import (build_mortuary_f3r1_menu)
from game.engine_data.menus.mortuary_f3r4_menu import (build_mortuary_f3r4_menu)
from game.engine_data.menus.mortuary_f3r6_menu import (build_mortuary_f3r6_menu)
from game.engine_data.menus.mortuary_f3r8_menu import (build_mortuary_f3r8_menu)


def build_all_menus(menu_manager, settings_manager):
    for builder in build_mortuary_f3r1_menu('mortuary_f3r1', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r4_menu('mortuary_f3r4', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r6_menu('mortuary_f3r6', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r8_menu('mortuary_f3r8', settings_manager):
        builder.done(menu_manager)
