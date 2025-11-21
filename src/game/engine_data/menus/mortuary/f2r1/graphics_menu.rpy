init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r1.items import (
        InMortuaryF2R1PickScalpel,
        FromMortuaryF2R1ToMortuaryF2R2,
        FromMortuaryF2R1ToMortuaryF2R8,
        FromMortuaryF2R1ToMortuaryF3R1,
        FromMortuaryF2R1ToMortuaryF1R1,
        InMortuaryF2R1Zm569,
        InMortuaryF2R1Zm825,
        InMortuaryF2R1Zm782,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r1_graphics_menu:
    call screen mortuary_f2r1_graphics_menu_screen


screen mortuary_f2r1_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r1',
        [
            InMortuaryF2R1PickScalpel(state_manager, 2270, 1600),
            FromMortuaryF2R1ToMortuaryF2R2(state_manager, 2030, 1600),
            FromMortuaryF2R1ToMortuaryF2R8(state_manager, 2960, 2120),
            FromMortuaryF2R1ToMortuaryF3R1(state_manager, 2546, 1380),
            FromMortuaryF2R1ToMortuaryF1R1(state_manager, 2470, 1460),
        ],
        [
            *get_party(state_manager, 2950, 1610),
            InMortuaryF2R1Zm569(state_manager, 2500, 1940),
            InMortuaryF2R1Zm782(state_manager, 2830, 2000),
            InMortuaryF2R1Zm825(state_manager, 2530, 1700),
        ],
        audio.mortuary
    )
