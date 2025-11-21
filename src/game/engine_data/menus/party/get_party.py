from game.engine_data.menus.party.morte1_menu_item import (Morte1MenuItem)
from game.engine_data.menus.party.morte2_menu_item import (Morte2MenuItem)


def get_party(state_manager, x, y):
    return [
        Morte1MenuItem(state_manager, x, y),
        Morte2MenuItem(state_manager, x, y),
    ]
