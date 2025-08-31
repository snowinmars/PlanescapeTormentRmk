init 10 python:
    from game.engine_data.menus.mortuary.f2r6.items import (
        FromMortuaryF2R6ToMortuaryF2R7,
        FromMortuaryF2R6ToMortuaryF2R5,
        InMortuaryF2R6Vaxis,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r6_graphics_menu:
    call screen mortuary_f2r6_graphics_menu_screen


screen mortuary_f2r6_graphics_menu_screen():
    $ gsm = renpy.store.global_settings_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r6',
        [
            FromMortuaryF2R6ToMortuaryF2R7(gsm, 1470, 1000),
            FromMortuaryF2R6ToMortuaryF2R5(gsm, 1380, 70),
        ],
        [
            *get_party(gsm, 1360, 220),
            InMortuaryF2R6Vaxis(gsm, 1300, 700),
        ],
        audio.mortuary
    )
