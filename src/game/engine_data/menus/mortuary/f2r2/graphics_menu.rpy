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
            FromMortuaryF2R2ToMortuaryF2R1(state_manager, 660, 980),
            FromMortuaryF2R2ToMortuaryF2R3(state_manager, 500, 100),
        ],
        [
            *get_party(state_manager, 510, 880),
            InMortuaryF2R2Zm965(state_manager, 840, 600),
            InMortuaryF2R2Zf594(state_manager, 450, 520),
            InMortuaryF2R2Zf626(state_manager, 490, 720),
        ],
        audio.mortuary
    )
