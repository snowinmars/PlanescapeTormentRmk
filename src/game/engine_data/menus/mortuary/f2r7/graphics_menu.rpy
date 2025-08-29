init 10 python:
    from game.engine_data.menus.mortuary.f2r7.items import (
        FromMortuaryF2R7ToMortuaryF3R3,
        FromMortuaryF2R7ToMortuaryF1R4,
        FromMortuaryF2R7ToMortuaryF2R8,
        FromMortuaryF2R7ToMortuaryF2R6,
        InMortuaryF2R7PickEmbalm,
        InMortuaryF2R7PickCopperEarringClosed,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r7_graphics_menu:
    call screen mortuary_f2r7_graphics_menu_screen


screen mortuary_f2r7_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r7',
        [
            FromMortuaryF2R7ToMortuaryF3R3(930, 260),
            FromMortuaryF2R7ToMortuaryF1R4(1030, 300),
            FromMortuaryF2R7ToMortuaryF2R8(740, 970),
            FromMortuaryF2R7ToMortuaryF2R6(1540, 400),
            InMortuaryF2R7PickEmbalm(1110, 350),
            InMortuaryF2R7PickCopperEarringClosed(750, 200),
        ],
        [
            *get_party(1380, 500)
        ],
        audio.mortuary
    )
