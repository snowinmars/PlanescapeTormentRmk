from game.map.party.items import (
    Morte1MenuItem,
    Morte2MenuItem,
    MorteMenuItem
)


def get_party(state_manager, coords):
    if True: # if not state_manager.location_manager.is_visited('outside')
        return [
            Morte1MenuItem(state_manager, coords['x'], coords['y']),
            Morte2MenuItem(state_manager, coords['x'], coords['y'])
        ]

    return [
        MorteMenuItem(state_manager, coords['x'], coords['y'])
    ]
