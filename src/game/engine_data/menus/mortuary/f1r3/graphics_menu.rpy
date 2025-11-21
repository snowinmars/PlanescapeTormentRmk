init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r3.items import (
        FromMortuaryF1R3ToMortuaryF1R2,
        FromMortuaryF1R3ToMortuaryF1R4,
        FromMortuaryF1R3ToMortuaryF1Rc,
        InMortuaryF1R3Zf114,
        InMortuaryF1R3Zm1041,
        InMortuaryF1R3Xach,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1r3_graphics_menu:
    call screen mortuary_f1r3_graphics_menu_screen


screen mortuary_f1r3_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f1r3',
        [
            FromMortuaryF1R3ToMortuaryF1R2(state_manager, 225, 400),
            FromMortuaryF1R3ToMortuaryF1R4(state_manager, 1450, 1000),
            FromMortuaryF1R3ToMortuaryF1Rc(state_manager, 850, 950),
        ],
        [
            *get_party(state_manager, 1360, 400),
            InMortuaryF1R3Zf114(state_manager, 700, 450),
            InMortuaryF1R3Zm1041(state_manager, 1100, 650),
            InMortuaryF1R3Xach(state_manager, 1700, 1000),
        ],
        audio.mortuary
    )
