init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r8.items import (
        FromMortuaryF2R8ToMortuaryF2R7,
        FromMortuaryF2R8ToMortuaryF2R1,
        InMortuaryF2R8Zf891,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r8_graphics_menu:
    call screen mortuary_f2r8_graphics_menu_screen


screen mortuary_f2r8_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r8',
        [
            FromMortuaryF2R8ToMortuaryF2R7(state_manager, 3740, 2400),
            FromMortuaryF2R8ToMortuaryF2R1(state_manager, 2300, 2500),
        ],
        [
            *get_party(state_manager, 3300, 2400),
            InMortuaryF2R8Zf891(state_manager, 3000, 2200),
        ],
        audio.mortuary
    )
