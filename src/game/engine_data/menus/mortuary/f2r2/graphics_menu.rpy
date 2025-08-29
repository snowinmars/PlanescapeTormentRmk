init 10 python:
    from game.engine_data.menus.mortuary.f2r2.items import (
        FromMortuaryF2R2ToMortuaryF2R1,
        FromMortuaryF2R2ToMortuaryF2R3,
        InMortuaryF2R2Zm965,
        InMortuaryF2R2Zf594,
        InMortuaryF2R2Zf626,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r2_graphics_menu:
    call screen mortuary_f2r2_graphics_menu_screen


screen mortuary_f2r2_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r2',
        [
            FromMortuaryF2R2ToMortuaryF2R1(660, 980),
            FromMortuaryF2R2ToMortuaryF2R3(500, 100),
        ],
        [
            *get_party(510, 880),
            InMortuaryF2R2Zm965(840, 600),
            InMortuaryF2R2Zf594(450, 520),
            InMortuaryF2R2Zf626(490, 720),
        ],
        audio.mortuary
    )
