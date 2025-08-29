from game.engine_data.menus.party.morte1_menu_item import (Morte1MenuItem)
from game.engine_data.menus.party.morte2_menu_item import (Morte2MenuItem)


def get_party(x, y):
    return [
        Morte1MenuItem(x, y),
        Morte2MenuItem(x, y),
    ]
