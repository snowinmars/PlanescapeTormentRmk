from game.engine_data.menus.party.morte1_menu_item import (Morte1MenuItem)
from game.engine_data.menus.party.morte2_menu_item import (Morte2MenuItem)


def get_party(gsm, x, y):
    return [
        Morte1MenuItem(gsm, x, y),
        Morte2MenuItem(gsm, x, y),
    ]
