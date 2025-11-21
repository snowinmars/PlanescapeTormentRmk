init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r5.items import (
        FromMortuaryF2R5ToMortuaryF2R6,
        FromMortuaryF2R5ToMortuaryF2R4,
        InMortuaryF2R5Eivene,
        InMortuaryF2R5Zm257,
        InMortuaryF2R5Zm506,
        InMortuaryF2R5Zm985,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r5_graphics_menu:
    call screen mortuary_f2r5_graphics_menu_screen


screen mortuary_f2r5_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r5',
        [
            FromMortuaryF2R5ToMortuaryF2R6(state_manager, 1600, 900),
            FromMortuaryF2R5ToMortuaryF2R4(state_manager, 650, 300),
        ],
        [
            *get_party(state_manager, 500, 390),
            InMortuaryF2R5Eivene(state_manager, 960, 530),
            InMortuaryF2R5Zm257(state_manager, 780, 560),
            InMortuaryF2R5Zm506(state_manager, 1160, 700),
            InMortuaryF2R5Zm985(state_manager, 780, 820),
        ],
        audio.mortuary
    )
