init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r4.items import (
        FromMortuaryF2R4ToMortuaryF2R5,
        FromMortuaryF2R4ToMortuaryF2R3,
        InMortuaryF2R4Zm1664,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r4_graphics_menu:
    call screen mortuary_f2r4_graphics_menu_screen


screen mortuary_f2r4_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r4',
        [
            FromMortuaryF2R4ToMortuaryF2R5(state_manager, 1590, 400),
            FromMortuaryF2R4ToMortuaryF2R3(state_manager, 140, 500),
        ],
        [
            *get_party(state_manager, 500, 390),
            InMortuaryF2R4Zm1664(state_manager, 950, 920),
        ],
        audio.mortuary
    )
