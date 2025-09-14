init 10 python:
    from game.engine_data.menus.mortuary.f2r3.items import (
        FromMortuaryF2R3ToMortuaryF2R4,
        FromMortuaryF2R3ToMortuaryF2R2,
        InMortuaryF2R3Dhall,
        InMortuaryF2R3Zm396,
        InMortuaryF2R3Zm1201,
        InMortuaryF2R3Zf1096,
        InMortuaryF2R3Zf1072,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r3_graphics_menu:
    call screen mortuary_f2r3_graphics_menu_screen


screen mortuary_f2r3_graphics_menu_screen():
    $ gsm = renpy.store.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r3',
        [
            FromMortuaryF2R3ToMortuaryF2R4(gsm, 960, 320),
            FromMortuaryF2R3ToMortuaryF2R2(gsm, 160, 1000),
        ],
        [
            *get_party(gsm, 510, 880),
            InMortuaryF2R3Dhall(gsm, 950, 920),
            InMortuaryF2R3Zm396(gsm, 560, 550),
            InMortuaryF2R3Zm1201(gsm, 660, 930),
            InMortuaryF2R3Zf1096(gsm, 1160, 950),
            InMortuaryF2R3Zf1072(gsm, 900, 600),
        ],
        audio.mortuary
    )
