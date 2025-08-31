init 10 python:
    from game.engine_data.menus.mortuary.f3r3.items import (
        FromMortuaryF3R3ToMortuaryF2R7,
        FromMortuaryF3R3ToMortuaryF3R2,
        FromMortuaryF3R3ToMortuaryF3R4,
        InMortuaryF3R3S748,
        InMortuaryF3R3S996,
        InMortuaryF3R3Zm475,
        InMortuaryF3R3Zm310,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f3r3_graphics_menu:
    call screen mortuary_f3r3_graphics_menu_screen


screen mortuary_f3r3_graphics_menu_screen():
    $ gsm = renpy.store.global_settings_manager
    use abstract_location_menu_screen(
        'bg mortuary_f3r3',
        [
            FromMortuaryF3R3ToMortuaryF2R7(gsm, 1200, 700),
            FromMortuaryF3R3ToMortuaryF3R2(gsm, 700, 100),
            FromMortuaryF3R3ToMortuaryF3R4(gsm, 900, 900),
        ],
        [
            *get_party(gsm, 1500, 600),
            InMortuaryF3R3S748(gsm, 1260, 200),
            InMortuaryF3R3S996(gsm, 1160, 250),
            InMortuaryF3R3Zm475(gsm, 360, 400),
            InMortuaryF3R3Zm310(gsm, 760, 1000),
        ],
        audio.mortuary
    )
