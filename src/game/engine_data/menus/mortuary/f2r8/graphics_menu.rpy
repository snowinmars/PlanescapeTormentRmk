init 10 python:
    from game.engine_data.menus.mortuary.f2r8.items import (
        FromMortuaryF2R8ToMortuaryF2R1,
        FromMortuaryF2R8ToMortuaryF2R7,
        InMortuaryF2R8Zf891,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r8_graphics_menu:
    call screen mortuary_f2r8_graphics_menu_screen


screen mortuary_f2r8_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r8',
        [
            FromMortuaryF2R8ToMortuaryF2R1(1500, 750),
            FromMortuaryF2R8ToMortuaryF2R7(80, 800),
        ],
        [
            *get_party(1360, 220),
            InMortuaryF2R8Zf891(960, 700),
        ],
        audio.mortuary
    )
