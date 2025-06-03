from menus.mortuary1_menu import (build_mortuary1_menu)
from menus.mortuary2_menu import (build_mortuary2_menu)
from menus.mortuary3_menu import (build_mortuary3_menu)
from menus.mortuary4_menu import (build_mortuary4_menu)
from menus.mortuary5_menu import (build_mortuary5_menu)
from menus.mortuary6_menu import (build_mortuary6_menu)
from menus.mortuary7_menu import (build_mortuary7_menu)


def build_all_menus(menu_manager, gsm):
    for builder in build_mortuary1_menu('mortuary1', gsm):
        builder.done(menu_manager)
    for builder in build_mortuary2_menu('mortuary2', gsm):
        builder.done(menu_manager)
    for builder in build_mortuary3_menu('mortuary3', gsm):
        builder.done(menu_manager)
    for builder in build_mortuary4_menu('mortuary4', gsm):
        builder.done(menu_manager)
    for builder in build_mortuary5_menu('mortuary5', gsm):
        builder.done(menu_manager)
    for builder in build_mortuary6_menu('mortuary6', gsm):
        builder.done(menu_manager)
    for builder in build_mortuary7_menu('mortuary7', gsm):
        builder.done(menu_manager)
