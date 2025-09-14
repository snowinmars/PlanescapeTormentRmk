init 10 python:
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
    $ gsm = renpy.store.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f1r1',
        [
            FromMortuaryF1R1ToMortuaryF2R1(gsm, 800, 125),
            FromMortuaryF1R1ToMortuaryF1R2(gsm, 450, 200),
            FromMortuaryF1R1ToMortuaryF1R4(gsm, 1600, 900),
            FromMortuaryF1R1ToMortuaryF1Rc(gsm, 1300, 300),
            FromMortuaryF1R1ToGameEnd(gsm, 650, 850),
        ],
        [
            *get_party(gsm, 900, 300),
            InMortuaryF1R1Soego(gsm, 950, 600),
        ],
        audio.mortuary
    )
