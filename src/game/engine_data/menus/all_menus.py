from game.engine_data.menus.mortuary_f1r1_menu import (build_mortuary_f1r1_menu)
from game.engine_data.menus.mortuary_f1r3_menu import (build_mortuary_f1r3_menu)
from game.engine_data.menus.mortuary_f1r5_menu import (build_mortuary_f1r5_menu)
from game.engine_data.menus.mortuary_f1r6_menu import (build_mortuary_f1r6_menu)
from game.engine_data.menus.mortuary_f1r7_menu import (build_mortuary_f1r7_menu)
from game.engine_data.menus.mortuary_f1rc_menu import (build_mortuary_f1rc_menu)
from game.engine_data.menus.mortuary_f2r1_menu import (build_mortuary_f2r1_menu)
from game.engine_data.menus.mortuary_f2r2_menu import (build_mortuary_f2r2_menu)
from game.engine_data.menus.mortuary_f2r3_menu import (build_mortuary_f2r3_menu)
from game.engine_data.menus.mortuary_f2r4_menu import (build_mortuary_f2r4_menu)
from game.engine_data.menus.mortuary_f2r5_menu import (build_mortuary_f2r5_menu)
from game.engine_data.menus.mortuary_f2r6_menu import (build_mortuary_f2r6_menu)
from game.engine_data.menus.mortuary_f2r7_menu import (build_mortuary_f2r7_menu)
from game.engine_data.menus.mortuary_f2r8_menu import (build_mortuary_f2r8_menu)
from game.engine_data.menus.mortuary_f3r2_menu import (build_mortuary_f3r2_menu)
from game.engine_data.menus.mortuary_f3r4_menu import (build_mortuary_f3r4_menu)
from game.engine_data.menus.mortuary_f3r6_menu import (build_mortuary_f3r6_menu)
from game.engine_data.menus.mortuary_f3r8_menu import (build_mortuary_f3r8_menu)


def build_all_menus(menu_manager, settings_manager):
    for builder in build_mortuary_f1r1_menu('mortuary_f1r1', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f1r3_menu('mortuary_f1r3', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f1r5_menu('mortuary_f1r5', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f1r6_menu('mortuary_f1r6', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f1r7_menu('mortuary_f1r7', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f1rc_menu('mortuary_f1rc', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r1_menu('mortuary_f2r1', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r2_menu('mortuary_f2r2', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r3_menu('mortuary_f2r3', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r4_menu('mortuary_f2r4', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r5_menu('mortuary_f2r5', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r6_menu('mortuary_f2r6', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r7_menu('mortuary_f2r7', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r8_menu('mortuary_f2r8', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r2_menu('mortuary_f3r2', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r4_menu('mortuary_f3r4', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r6_menu('mortuary_f3r6', settings_manager):
        builder.done(menu_manager)
    for builder in build_mortuary_f3r8_menu('mortuary_f3r8', settings_manager):
        builder.done(menu_manager)
