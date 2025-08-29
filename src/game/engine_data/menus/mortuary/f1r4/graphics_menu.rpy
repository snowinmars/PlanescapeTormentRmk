init 10 python:
    from game.engine_data.menus.mortuary.f1r4.items import (
        FromMortuaryF1R4ToMortuaryF1R3,
        FromMortuaryF1R4ToMortuaryF1R1,
        FromMortuaryF1R4ToMortuaryF1Rc,
        FromMortuaryF1R4ToMortuaryF2R7,
        InMortuaryF1R4Zm732,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1r4_graphics_menu:
    call screen mortuary_f1r4_graphics_menu_screen


screen mortuary_f1r4_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1r4',
        [
            FromMortuaryF1R4ToMortuaryF1R3(1500, 500),
            FromMortuaryF1R4ToMortuaryF1R1(400, 1000),
            FromMortuaryF1R4ToMortuaryF1Rc(500, 300),
            FromMortuaryF1R4ToMortuaryF2R7(1100, 150),
        ],
        [
            *get_party(1360, 400),
            InMortuaryF1R4Zm732(710, 880),
        ],
        audio.mortuary
    )
