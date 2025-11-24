init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r3.items import (
        FromMortuaryF2R3ToMortuaryF2R2,
        FromMortuaryF2R3ToMortuaryF2R4,
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
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r3',
        [
            FromMortuaryF2R3ToMortuaryF2R2(state_manager, 1350, 1450),
            FromMortuaryF2R3ToMortuaryF2R4(state_manager, 2150, 750),
        ],
        [
            *get_party(state_manager, 1550, 1250),
            InMortuaryF2R3Dhall(state_manager, 2200, 1400),
            InMortuaryF2R3Zm396(state_manager, 1650, 1100),
            InMortuaryF2R3Zm1201(state_manager, 1900, 900),
            InMortuaryF2R3Zf1096(state_manager, 2550, 1500),
            InMortuaryF2R3Zf1072(state_manager, 2300, 1100),
        ],
        audio.mortuary
    )
