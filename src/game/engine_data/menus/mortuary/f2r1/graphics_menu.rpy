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
    $ gsm = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r1',
        [
            InMortuaryF2R1PickScalpel(gsm, 2270, 1600),
            FromMortuaryF2R1ToMortuaryF2R2(gsm, 2030, 1600),
            FromMortuaryF2R1ToMortuaryF2R8(gsm, 2960, 2120),
            FromMortuaryF2R1ToMortuaryF3R1(gsm, 2546, 1380),
            FromMortuaryF2R1ToMortuaryF1R1(gsm, 2470, 1460),
        ],
        [
            *get_party(gsm, 2950, 1610),
            InMortuaryF2R1Zm569(gsm, 2500, 1940),
            InMortuaryF2R1Zm782(gsm, 2830, 2000),
            InMortuaryF2R1Zm825(gsm, 2530, 1700),
        ],
        audio.mortuary
    )
