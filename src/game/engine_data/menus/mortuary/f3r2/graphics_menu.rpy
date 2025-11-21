init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f3r2.items import (
        FromMortuaryF3R2ToMortuaryF3R3,
        FromMortuaryF3R2ToMortuaryF3R1,
        InMortuaryF3R2PickGarbage,
        InMortuaryF3R2PickTaskList,
        InMortuaryF3R2PickNeedle,
        InMortuaryF3R2Dust,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f3r2_graphics_menu:
    call screen mortuary_f3r2_graphics_menu_screen


screen mortuary_f3r2_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f3r2',
        [
            FromMortuaryF3R2ToMortuaryF3R3(state_manager, 1500, 800),
            FromMortuaryF3R2ToMortuaryF3R1(state_manager, 150, 500),
            InMortuaryF3R2PickGarbage(state_manager, 400, 700),
            InMortuaryF3R2PickTaskList(state_manager, 400, 300),
            InMortuaryF3R2PickNeedle(state_manager, 1200, 600),
        ],
        [
            *get_party(state_manager, 800, 400),
            InMortuaryF3R2Dust(state_manager, 960, 900),
        ],
        audio.mortuary
    )
