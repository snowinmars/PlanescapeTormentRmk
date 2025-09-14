init 10 python:
    from game.engine_data.menus.mortuary.f1r4.items import (
        FromMortuaryF1R4ToMortuaryF1R3,
        FromMortuaryF1R4ToMortuaryF1R1,
        FromMortuaryF1R4ToMortuaryF1Rc,
        FromMortuaryF1R4ToMortuaryF2R7,
        InMortuaryF1R4Zm732,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1r4_graphics_menu:
    call screen mortuary_f1r4_graphics_menu_screen


screen mortuary_f1r4_graphics_menu_screen():
    $ gsm = renpy.store.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f1r4',
        [
            FromMortuaryF1R4ToMortuaryF1R3(gsm, 1500, 500),
            FromMortuaryF1R4ToMortuaryF1R1(gsm, 400, 1000),
            FromMortuaryF1R4ToMortuaryF1Rc(gsm, 500, 300),
            FromMortuaryF1R4ToMortuaryF2R7(gsm, 1100, 150),
        ],
        [
            *get_party(gsm, 1360, 400),
            InMortuaryF1R4Zm732(gsm, 710, 880),
        ],
        audio.mortuary
    )
