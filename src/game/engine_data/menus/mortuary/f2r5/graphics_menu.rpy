init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r5.items import (
        FromMortuaryF2R5ToMortuaryF2R4,
        FromMortuaryF2R5ToMortuaryF2R6,
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
            FromMortuaryF2R5ToMortuaryF2R4(state_manager, 3100, 660),
            FromMortuaryF2R5ToMortuaryF2R6(state_manager, 4050, 1250),
        ],
        [
            *get_party(state_manager, 3300, 700),
            InMortuaryF2R5Eivene(state_manager, 3440, 840),
            InMortuaryF2R5Zm257(state_manager, 3250, 1100),
            InMortuaryF2R5Zm506(state_manager, 3200, 1300),
            InMortuaryF2R5Zm985(state_manager, 2900, 1500),
        ],
        audio.mortuary
    )
