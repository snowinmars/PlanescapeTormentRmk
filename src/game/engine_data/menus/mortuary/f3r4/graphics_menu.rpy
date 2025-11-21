init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f3r4.items import (
        FromMortuaryF3R4ToMortuaryF3R3,
        FromMortuaryF3R4ToMortuaryF3R1,
        InMortuaryF3R4PickPrybar,
        InMortuaryF3R4PickDustmanRequest,
        InMortuaryF3R4PickNeedle,
        InMortuaryF3R4PickGarbage,
        InMortuaryF3R4Dustfem,
        InMortuaryF3R4S42,
        InMortuaryF3R4Zf832,
        InMortuaryF3R4Zm613,
        InMortuaryF3R4Zm79,
        InMortuaryF3R4Zf679,
        InMortuaryF3R4S1221,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f3r4_graphics_menu:
    call screen mortuary_f3r4_graphics_menu_screen


screen mortuary_f3r4_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f3r4',
        [
            FromMortuaryF3R4ToMortuaryF3R3(state_manager, 1500, 500),
            FromMortuaryF3R4ToMortuaryF3R1(state_manager, 150, 600),
            InMortuaryF3R4PickPrybar(state_manager, 950, 650),
            InMortuaryF3R4PickDustmanRequest(state_manager, 820, 700),
            InMortuaryF3R4PickNeedle(state_manager, 1670, 150),
            InMortuaryF3R4PickGarbage(state_manager, 1800, 200),
        ],
        [
            *get_party(state_manager, 800, 800),
            InMortuaryF3R4Dustfem(state_manager, 960, 400),
            InMortuaryF3R4S42(state_manager, 560, 300),
            InMortuaryF3R4Zf832(state_manager, 1260, 400),
            InMortuaryF3R4Zm613(state_manager, 360, 400),
            InMortuaryF3R4Zm79(state_manager, 560, 750),
            InMortuaryF3R4Zf679(state_manager, 485, 825),
            InMortuaryF3R4S1221(state_manager, 410, 900),
        ],
        audio.mortuary
    )
