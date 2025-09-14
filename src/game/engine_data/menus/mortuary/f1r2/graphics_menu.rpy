init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r2.items import (
        FromMortuaryF1R2ToMortuaryF1Rc,
        FromMortuaryF1R2ToMortuaryF1R3,
        FromMortuaryF1R2ToMortuaryF1R1,
        InMortuaryF1R2Deionarra,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1r2_graphics_menu:
    call screen mortuary_f1r2_graphics_menu_screen


screen mortuary_f1r2_graphics_menu_screen():
    $ gsm = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f1r2',
        [
            FromMortuaryF1R2ToMortuaryF1Rc(gsm, 1200, 900),
            FromMortuaryF1R2ToMortuaryF1R3(gsm, 1500, 150),
            FromMortuaryF1R2ToMortuaryF1R1(gsm, 400, 1000),
        ],
        [
            *get_party(gsm, 1360, 400),
            InMortuaryF1R2Deionarra(gsm, 670, 670),
        ],
        audio.deionarra,
    )
