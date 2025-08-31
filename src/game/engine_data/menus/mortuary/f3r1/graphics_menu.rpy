init 10 python:
    from game.engine_data.menus.mortuary.f3r1.items import (
        FromMortuaryF3R1ToMortuaryF2R1,
        FromMortuaryF3R1ToMortuaryF3R2,
        FromMortuaryF3R1ToMortuaryF3R4,
        InMortuaryF3R1PickMortuaryKey,
        InMortuaryF3R1S863,
        InMortuaryF3R1Zm1146,
        InMortuaryF3R1Zf1148,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f3r1_graphics_menu:
    call screen mortuary_f3r1_graphics_menu_screen


screen mortuary_f3r1_graphics_menu_screen():
    $ gsm = renpy.store.global_settings_manager
    use abstract_location_menu_screen(
        'bg mortuary_f3r1',
        [
            FromMortuaryF3R1ToMortuaryF2R1(gsm, 750, 850),
            FromMortuaryF3R1ToMortuaryF3R2(gsm, 700, 200),
            FromMortuaryF3R1ToMortuaryF3R4(gsm, 1200, 1000),
            InMortuaryF3R1PickMortuaryKey(gsm, 900, 1000),
        ],
        [
            *get_party(gsm, 500, 800),
            InMortuaryF3R1S863(gsm, 1060, 300),
            InMortuaryF3R1Zm1146(gsm, 960, 300),
            InMortuaryF3R1Zf1148(gsm, 1260, 400),
        ],
        audio.mortuary
    )
