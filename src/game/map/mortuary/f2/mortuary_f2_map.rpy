init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f2.items import (
        InMortuaryF2R1PickScalpel,
        FromMortuaryF2R1ToMortuaryF2R2,
        FromMortuaryF2R1ToMortuaryF2R8,
        FromMortuaryF2R1ToMortuaryF3R1,
        FromMortuaryF2R1ToMortuaryF1R1,
        InMortuaryF2R1Zm569,
        InMortuaryF2R1Zm825,
        InMortuaryF2R1Zm782,
        MortuaryF2R1Shadow,

        FromMortuaryF2R2ToMortuaryF2R1,
        FromMortuaryF2R2ToMortuaryF2R3,
        InMortuaryF2R2Zm965,
        InMortuaryF2R2Zf594,
        InMortuaryF2R2Zf626,
        MortuaryF2R2Shadow,

        FromMortuaryF2R3ToMortuaryF2R2,
        FromMortuaryF2R3ToMortuaryF2R4,
        InMortuaryF2R3Dhall,
        InMortuaryF2R3Zm396,
        InMortuaryF2R3Zm1201,
        InMortuaryF2R3Zf1096,
        InMortuaryF2R3Zf1072,
        MortuaryF2R3Shadow,

        FromMortuaryF2R4ToMortuaryF2R3,
        FromMortuaryF2R4ToMortuaryF2R5,
        InMortuaryF2R4Zm1664,
        MortuaryF2R4Shadow,

        FromMortuaryF2R5ToMortuaryF2R4,
        FromMortuaryF2R5ToMortuaryF2R6,
        InMortuaryF2R5Eivene,
        InMortuaryF2R5Zm257,
        InMortuaryF2R5Zm506,
        InMortuaryF2R5Zm985,
        MortuaryF2R5Shadow,

        FromMortuaryF2R6ToMortuaryF2R5,
        FromMortuaryF2R6ToMortuaryF2R7,
        InMortuaryF2R6Vaxis,
        MortuaryF2R6Shadow,

        FromMortuaryF2R7ToMortuaryF2R6,
        FromMortuaryF2R7ToMortuaryF2R8,
        FromMortuaryF2R7ToMortuaryF3R3,
        FromMortuaryF2R7ToMortuaryF1R4,
        InMortuaryF2R7PickEmbalm,
        InMortuaryF2R7PickCopperEarringClosed,
        MortuaryF2R7Shadow,

        FromMortuaryF2R8ToMortuaryF2R7,
        FromMortuaryF2R8ToMortuaryF2R1,
        InMortuaryF2R8Zf891,
        MortuaryF2R8Shadow
    )


label mortuary_f2_map:
    $ renpy.scene(layer = 'screens')
    $ renpy.music.play(audio.mortuary, channel='music', loop=True, if_changed=True)

    default screen_location_map_mortuary_f2_static_actions = [
        InMortuaryF2R1PickScalpel            (runtime.global_state_manager,  900, 2280),
        FromMortuaryF2R1ToMortuaryF2R2       (runtime.global_state_manager,  633, 2299),
        FromMortuaryF2R1ToMortuaryF2R8       (runtime.global_state_manager, 1658, 2842),
        FromMortuaryF2R1ToMortuaryF3R1       (runtime.global_state_manager, 1298, 2139),
        FromMortuaryF2R1ToMortuaryF1R1       (runtime.global_state_manager, 1138, 2139),

        FromMortuaryF2R2ToMortuaryF2R1       (runtime.global_state_manager,  633, 2299),
        FromMortuaryF2R2ToMortuaryF2R3       (runtime.global_state_manager,  475, 1338),

        FromMortuaryF2R3ToMortuaryF2R2       (runtime.global_state_manager,  475, 1338),
        FromMortuaryF2R3ToMortuaryF2R4       (runtime.global_state_manager, 1306,  602),

        FromMortuaryF2R4ToMortuaryF2R3       (runtime.global_state_manager, 1306,  602),
        FromMortuaryF2R4ToMortuaryF2R5       (runtime.global_state_manager, 2745,  474),

        FromMortuaryF2R5ToMortuaryF2R4       (runtime.global_state_manager, 2745,  474),
        FromMortuaryF2R5ToMortuaryF2R6       (runtime.global_state_manager, 3738, 1114),

        FromMortuaryF2R6ToMortuaryF2R5       (runtime.global_state_manager, 3738, 1114),
        FromMortuaryF2R6ToMortuaryF2R7       (runtime.global_state_manager, 3835, 2106),

        FromMortuaryF2R7ToMortuaryF2R6       (runtime.global_state_manager, 3835, 2106),
        FromMortuaryF2R7ToMortuaryF2R8       (runtime.global_state_manager, 3002, 2746),
        FromMortuaryF2R7ToMortuaryF3R3       (runtime.global_state_manager, 3205, 2001),
        FromMortuaryF2R7ToMortuaryF1R4       (runtime.global_state_manager, 3323, 2010),
        InMortuaryF2R7PickEmbalm             (runtime.global_state_manager, 3189, 2193),
        InMortuaryF2R7PickCopperEarringClosed(runtime.global_state_manager, 3058, 1966),

        FromMortuaryF2R8ToMortuaryF2R7       (runtime.global_state_manager, 3002, 2746),
        FromMortuaryF2R8ToMortuaryF2R1       (runtime.global_state_manager, 1658, 2842)
    ]
    default screen_location_map_mortuary_f2_dynamic_actions = [
        InMortuaryF2R1Zm569 (runtime.global_state_manager,  950, 2450),
        InMortuaryF2R1Zm782 (runtime.global_state_manager, 1275, 2750),
        InMortuaryF2R1Zm825 (runtime.global_state_manager, 1200, 2530),

        InMortuaryF2R2Zm965 (runtime.global_state_manager,  580, 2000),
        InMortuaryF2R2Zf594 (runtime.global_state_manager,  580, 1700),
        InMortuaryF2R2Zf626 (runtime.global_state_manager,  839, 1850),

        InMortuaryF2R3Dhall (runtime.global_state_manager, 1350, 1250),
        InMortuaryF2R3Zm396 (runtime.global_state_manager,  860,  960),
        InMortuaryF2R3Zm1201(runtime.global_state_manager, 1060,  760),
        InMortuaryF2R3Zf1096(runtime.global_state_manager, 1460, 1060),
        InMortuaryF2R3Zf1072(runtime.global_state_manager, 1600, 1460),

        InMortuaryF2R4Zm1664(runtime.global_state_manager, 2070,  900),

        InMortuaryF2R5Eivene(runtime.global_state_manager, 3125,  750),
        InMortuaryF2R5Zm257 (runtime.global_state_manager, 2960,  840),
        InMortuaryF2R5Zm506 (runtime.global_state_manager, 3060, 1100),
        InMortuaryF2R5Zm985 (runtime.global_state_manager, 2610, 1370),

        InMortuaryF2R6Vaxis (runtime.global_state_manager, 3880, 1700),

        InMortuaryF2R8Zf891 (runtime.global_state_manager, 2300, 2600)
    ]
    default screen_location_map_mortuary_f2_party = [] # get_party(runtime.global_state_manager, mortuaryF2LootLogic.get_where_party_stands())
    default screen_location_map_mortuary_f2_shadows = [
        MortuaryF2R1Shadow(runtime.global_state_manager, 1265, 2390),
        MortuaryF2R2Shadow(runtime.global_state_manager,  865, 1750),
        MortuaryF2R3Shadow(runtime.global_state_manager, 1125,  975),
        MortuaryF2R4Shadow(runtime.global_state_manager, 2050,  700),
        MortuaryF2R5Shadow(runtime.global_state_manager, 3100,  875),
        MortuaryF2R6Shadow(runtime.global_state_manager, 3425, 1550),
        MortuaryF2R7Shadow(runtime.global_state_manager, 3227, 2280),
        MortuaryF2R8Shadow(runtime.global_state_manager, 2320, 2620),
    ]

    call screen screen_location_map( # renpy.call_screen
        background='bg/mortuary/f2/root.webp',
        static_actions=screen_location_map_mortuary_f2_static_actions,
        dynamic_actions=screen_location_map_mortuary_f2_dynamic_actions,
        party=screen_location_map_mortuary_f2_party,
        shadows=screen_location_map_mortuary_f2_shadows
    )
