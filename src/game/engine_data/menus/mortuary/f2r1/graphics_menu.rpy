init 10 python:
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
    use abstract_location_menu_screen(
        'bg mortuary_f2r1',
        [
            InMortuaryF2R1PickScalpel(520, 440),
            FromMortuaryF2R1ToMortuaryF2R2(170, 460),
            FromMortuaryF2R1ToMortuaryF2R8(1240, 1000),
            FromMortuaryF2R1ToMortuaryF3R1(940, 220),
            FromMortuaryF2R1ToMortuaryF1R1(790, 280),
        ],
        [
            *get_party(1360, 400),
            InMortuaryF2R1Zm569(400, 720),
            InMortuaryF2R1Zm825(710, 880),
            InMortuaryF2R1Zm782(1160, 860),
        ],
        audio.mortuary
    )
