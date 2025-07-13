from menus.mortuary_f2r1_menu import (build_mortuary_f2r1_menu)
from menus.mortuary_f2r2_menu import (build_mortuary_f2r2_menu)
from menus.mortuary_f2r3_menu import (build_mortuary_f2r3_menu)
from menus.mortuary_f2r4_menu import (build_mortuary_f2r4_menu)
from menus.mortuary_f2r5_menu import (build_mortuary_f2r5_menu)
from menus.mortuary_f2r6_menu import (build_mortuary_f2r6_menu)
from menus.mortuary_f2r7_menu import (build_mortuary_f2r7_menu)
from menus.mortuary_f2r8_menu import (build_mortuary_f2r8_menu)


def build_all_menus(menu_manager, gsm, glm):
    for builder in build_mortuary_f2r1_menu('mortuary_f2r1', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r2_menu('mortuary_f2r2', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r3_menu('mortuary_f2r3', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r4_menu('mortuary_f2r4', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r5_menu('mortuary_f2r5', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r6_menu('mortuary_f2r6', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r7_menu('mortuary_f2r7', gsm, glm):
        builder.done(menu_manager)
    for builder in build_mortuary_f2r8_menu('mortuary_f2r8', gsm, glm):
        builder.done(menu_manager)
