init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r7.items import (
        FromMortuaryF2R7ToMortuaryF2R6,
        FromMortuaryF2R7ToMortuaryF2R8,
        FromMortuaryF2R7ToMortuaryF3R3,
        FromMortuaryF2R7ToMortuaryF1R4,
        InMortuaryF2R7PickEmbalm,
        InMortuaryF2R7PickCopperEarringClosed,
    )
    from game.engine_data.menus.party.get_party import (get_party)


label mortuary_f2r7_graphics_menu:
    call screen mortuary_f2r7_graphics_menu_screen


screen mortuary_f2r7_graphics_menu_screen():
    $ state_manager = runtime.global_state_manager
    use abstract_location_menu_screen(
        'bg mortuary_f2r7',
        [
            FromMortuaryF2R7ToMortuaryF2R6(state_manager, 4550, 1750),
            FromMortuaryF2R7ToMortuaryF2R8(state_manager, 3750, 2400),
            FromMortuaryF2R7ToMortuaryF3R3(state_manager, 3935, 1650),
            FromMortuaryF2R7ToMortuaryF1R4(state_manager, 4035, 1670),
            InMortuaryF2R7PickEmbalm(state_manager, 4130, 1760),
            InMortuaryF2R7PickCopperEarringClosed(state_manager, 3760, 1600),
        ],
        [
            *get_party(state_manager, 4450, 1900)
        ],
        audio.mortuary
    )
