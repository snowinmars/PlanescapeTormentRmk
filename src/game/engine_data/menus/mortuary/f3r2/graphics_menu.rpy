init 10 python:
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
    $ gsm = renpy.store.global_settings_manager
    use abstract_location_menu_screen(
        'bg mortuary_f3r2',
        [
            FromMortuaryF3R2ToMortuaryF3R3(gsm, 1500, 800),
            FromMortuaryF3R2ToMortuaryF3R1(gsm, 150, 500),
            InMortuaryF3R2PickGarbage(gsm, 400, 700),
            InMortuaryF3R2PickTaskList(gsm, 400, 300),
            InMortuaryF3R2PickNeedle(gsm, 1200, 600),
        ],
        [
            *get_party(gsm, 800, 400),
            InMortuaryF3R2Dust(gsm, 960, 900),
        ],
        audio.mortuary
    )
