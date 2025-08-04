from game.engine.menu import (MenuBuilder)
from game.engine_data.menus.morte_menu import (morte_menu)

def build_mortuary_f1r3_menu(location_id, settings_manager):
    builders = []

    builders.append(morte_menu(settings_manager, location_id, 1360, 400))

    return builders
