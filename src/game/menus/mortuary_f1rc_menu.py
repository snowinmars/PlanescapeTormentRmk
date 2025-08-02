from engine.menu import (MenuBuilder)
from menus.morte_menu import (morte_menu)

def build_mortuary_f1rc_menu(location_id, gsm, glm):
    builders = []

    builders.append(morte_menu(gsm, location_id, 1360, 400))

    return builders
