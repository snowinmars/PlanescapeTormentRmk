init 10 python:
    from game.engine.runtime import (runtime)
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
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r2',
        [
            FromMortuaryF2R2ToMortuaryF2R1(state_manager, 1350, 1970),
            FromMortuaryF2R2ToMortuaryF2R3(state_manager, 1200, 940),
        ],
        [
            *get_party(state_manager, 1300, 1700),
            InMortuaryF2R2Zm965(state_manager, 1200, 1600),
            InMortuaryF2R2Zf594(state_manager, 1600, 1450),
            InMortuaryF2R2Zf626(state_manager, 1200, 1300),
        ],
        audio.mortuary
    )
