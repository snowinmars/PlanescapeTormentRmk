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
    use abstract_location_menu_screen(
        'bg mortuary_f3r4',
        [
            FromMortuaryF3R4ToMortuaryF3R3(1500, 500),
            FromMortuaryF3R4ToMortuaryF3R1(150, 600),
            InMortuaryF3R4PickPrybar(950, 650),
            InMortuaryF3R4PickDustmanRequest(820, 700),
            InMortuaryF3R4PickNeedle(1670, 150),
            InMortuaryF3R4PickGarbage(1800, 200),
        ],
        [
            *get_party(800, 800),
            InMortuaryF3R4Dustfem(960, 400),
            InMortuaryF3R4S42(560, 300),
            InMortuaryF3R4Zf832(1260, 400),
            InMortuaryF3R4Zm613(360, 400),
            InMortuaryF3R4Zm79(560, 750),
            InMortuaryF3R4Zf679(485, 825),
            InMortuaryF3R4S1221(410, 900),
        ],
        audio.mortuary
    )
