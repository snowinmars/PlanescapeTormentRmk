init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r1.items import (
        FromMortuaryF1R1ToMortuaryF2R1,
        FromMortuaryF1R1ToMortuaryF1R2,
        FromMortuaryF1R1ToMortuaryF1R4,
        FromMortuaryF1R1ToMortuaryF1Rc,
        FromMortuaryF1R1ToGameEnd,
        InMortuaryF1R1Soego,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1r1_graphics_menu:
    call screen mortuary_f1r1_graphics_menu_screen


screen mortuary_f1r1_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f1r1',
        [
            FromMortuaryF1R1ToMortuaryF2R1(state_manager, 800, 125),
            FromMortuaryF1R1ToMortuaryF1R2(state_manager, 450, 200),
            FromMortuaryF1R1ToMortuaryF1R4(state_manager, 1600, 900),
            FromMortuaryF1R1ToMortuaryF1Rc(state_manager, 1300, 300),
            FromMortuaryF1R1ToGameEnd(state_manager, 650, 850),
        ],
        [
            *get_party(state_manager, 900, 300),
            InMortuaryF1R1Soego(state_manager, 950, 600),
        ],
        audio.mortuary
    )
