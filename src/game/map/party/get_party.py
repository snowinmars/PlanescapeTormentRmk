from game.map.party.morte1_menu_item import (Morte1MenuItem)
from game.map.party.morte2_menu_item import (Morte2MenuItem)
from game.map.party.morte_menu_item import (MorteMenuItem)


def get_party(state_manager, coords):
    if True: # if not state_manager.location_manager.is_visited('outside')
        return [
            Morte1MenuItem(state_manager, coords['x'], coords['y']),
            Morte2MenuItem(state_manager, coords['x'], coords['y'])
        ]

    return [
        MorteMenuItem(state_manager, coords['x'], coords['y'])
    ]
