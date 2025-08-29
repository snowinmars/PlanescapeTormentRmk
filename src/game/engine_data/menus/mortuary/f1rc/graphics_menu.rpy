init 10 python:
    from game.engine_data.menus.mortuary.f1rс.items import (
        FromMortuaryF1RсToMortuaryF1R1,
        FromMortuaryF1RсToMortuaryF1R2,
        FromMortuaryF1RсToMortuaryF1R3,
        FromMortuaryF1RсToMortuaryF1R4,
        InMortuaryF1RcGiantsk,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f1rc_graphics_menu:
    call screen mortuary_f1rc_graphics_menu_screen


screen mortuary_f1rc_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1rc',
        [
            FromMortuaryF1RсToMortuaryF1R1(600, 900),
            FromMortuaryF1RсToMortuaryF1R2(400, 300),
            FromMortuaryF1RсToMortuaryF1R3(1600, 200),
            FromMortuaryF1RсToMortuaryF1R4(1500, 900),
        ],
        [
            *get_party(1360, 400),
            InMortuaryF1RcGiantsk(710, 880),
        ],
        audio.mortuary
    )
