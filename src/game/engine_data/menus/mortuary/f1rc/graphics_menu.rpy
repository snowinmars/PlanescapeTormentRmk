init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1rc.items import (
        FromMortuaryF1RcToMortuaryF1R1,
        FromMortuaryF1RcToMortuaryF1R2,
        FromMortuaryF1RcToMortuaryF1R3,
        FromMortuaryF1RcToMortuaryF1R4,
        InMortuaryF1RcGiantsk,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1rc_graphics_menu:
    call screen mortuary_f1rc_graphics_menu_screen


screen mortuary_f1rc_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f1rc',
        [
            FromMortuaryF1RcToMortuaryF1R1(state_manager, 600, 900),
            FromMortuaryF1RcToMortuaryF1R2(state_manager, 400, 300),
            FromMortuaryF1RcToMortuaryF1R3(state_manager, 1600, 200),
            FromMortuaryF1RcToMortuaryF1R4(state_manager, 1500, 900),
        ],
        [
            *get_party(state_manager, 1360, 400),
            InMortuaryF1RcGiantsk(state_manager, 710, 880),
        ],
        audio.mortuary
    )
