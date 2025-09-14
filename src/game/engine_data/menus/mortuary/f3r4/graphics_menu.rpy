init 10 python:
    from game.engine_data.menus.mortuary.f3r4.items import (
        FromMortuaryF3R4ToMortuaryF3R3,
        FromMortuaryF3R4ToMortuaryF3R1,
        InMortuaryF3R4PickPrybar,
        InMortuaryF3R4PickDustmanRequest,
        InMortuaryF3R4PickNeedle,
        InMortuaryF3R4PickGarbage,
        InMortuaryF3R4Dustfem,
        InMortuaryF3R4S42,
        InMortuaryF3R4Zf832,
        InMortuaryF3R4Zm613,
        InMortuaryF3R4Zm79,
        InMortuaryF3R4Zf679,
        InMortuaryF3R4S1221,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f3r4_graphics_menu:
    call screen mortuary_f3r4_graphics_menu_screen


screen mortuary_f3r4_graphics_menu_screen():
    $ gsm = renpy.store.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f3r4',
        [
            FromMortuaryF3R4ToMortuaryF3R3(gsm, 1500, 500),
            FromMortuaryF3R4ToMortuaryF3R1(gsm, 150, 600),
            InMortuaryF3R4PickPrybar(gsm, 950, 650),
            InMortuaryF3R4PickDustmanRequest(gsm, 820, 700),
            InMortuaryF3R4PickNeedle(gsm, 1670, 150),
            InMortuaryF3R4PickGarbage(gsm, 1800, 200),
        ],
        [
            *get_party(gsm, 800, 800),
            InMortuaryF3R4Dustfem(gsm, 960, 400),
            InMortuaryF3R4S42(gsm, 560, 300),
            InMortuaryF3R4Zf832(gsm, 1260, 400),
            InMortuaryF3R4Zm613(gsm, 360, 400),
            InMortuaryF3R4Zm79(gsm, 560, 750),
            InMortuaryF3R4Zf679(gsm, 485, 825),
            InMortuaryF3R4S1221(gsm, 410, 900),
        ],
        audio.mortuary
    )
