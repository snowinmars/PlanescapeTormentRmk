init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f1.items import (
        FromMortuaryF1R1ToMortuaryF2R1,
        FromMortuaryF1R1ToMortuaryF1R2,
        FromMortuaryF1R1ToMortuaryF1R4,
        FromMortuaryF1R1ToMortuaryF1Rc,
        FromMortuaryF1R1ToGameEnd,
        MortuaryF1R1Shadow,
        InMortuaryF1R1Soego,

        FromMortuaryF1R2ToMortuaryF1Rc,
        FromMortuaryF1R2ToMortuaryF1R3,
        FromMortuaryF1R2ToMortuaryF1R1,
        MortuaryF1R2Shadow,
        InMortuaryF1R2Deionarra,

        FromMortuaryF1R3ToMortuaryF1R2,
        FromMortuaryF1R3ToMortuaryF1R4,
        FromMortuaryF1R3ToMortuaryF1Rc,
        MortuaryF1R3Shadow,
        InMortuaryF1R3Zf114,
        InMortuaryF1R3Zm1041,
        InMortuaryF1R3Xach,

        FromMortuaryF1R4ToMortuaryF1R3,
        FromMortuaryF1R4ToMortuaryF1R1,
        FromMortuaryF1R4ToMortuaryF1Rc,
        FromMortuaryF1R4ToMortuaryF2R7,
        MortuaryF1R4Shadow,
        InMortuaryF1R4Zm732,

        FromMortuaryF1RcToMortuaryF1R1,
        FromMortuaryF1RcToMortuaryF1R2,
        FromMortuaryF1RcToMortuaryF1R3,
        FromMortuaryF1RcToMortuaryF1R4,
        MortuaryF1RcShadow,
        InMortuaryF1RcGiantsk
    )


    def screen_location_map_mortuary_f1_get_party():
        return get_party(runtime.global_state_manager, mortuaryF1LootLogic.get_where_party_stands())


    screen_location_map_mortuary_f1_static_actions = [
        FromMortuaryF1R1ToMortuaryF2R1(runtime.global_state_manager, 1185, 2015),
        FromMortuaryF1R1ToMortuaryF1R2(runtime.global_state_manager,  585, 1717),
        FromMortuaryF1R1ToMortuaryF1R4(runtime.global_state_manager, 2421, 2752),
        FromMortuaryF1R1ToMortuaryF1Rc(runtime.global_state_manager, 1659, 2146),
        FromMortuaryF1R1ToGameEnd     (runtime.global_state_manager,  952, 2761),

        FromMortuaryF1R2ToMortuaryF1Rc(runtime.global_state_manager, 1626, 1193),
        FromMortuaryF1R2ToMortuaryF1R3(runtime.global_state_manager, 2080,  385),
        FromMortuaryF1R2ToMortuaryF1R1(runtime.global_state_manager,  585, 1717),

        FromMortuaryF1R3ToMortuaryF1R2(runtime.global_state_manager, 2080,  385),
        FromMortuaryF1R3ToMortuaryF1R4(runtime.global_state_manager, 3947, 1610),
        FromMortuaryF1R3ToMortuaryF1Rc(runtime.global_state_manager, 2950, 1044),

        FromMortuaryF1R4ToMortuaryF1R3(runtime.global_state_manager, 3947, 1610),
        FromMortuaryF1R4ToMortuaryF1R1(runtime.global_state_manager, 2421, 2752),
        FromMortuaryF1R4ToMortuaryF1Rc(runtime.global_state_manager, 2874, 1934),
        FromMortuaryF1R4ToMortuaryF2R7(runtime.global_state_manager, 3494, 1865),

        FromMortuaryF1RcToMortuaryF1R1(runtime.global_state_manager, 1659, 2146),
        FromMortuaryF1RcToMortuaryF1R2(runtime.global_state_manager, 1626, 1193),
        FromMortuaryF1RcToMortuaryF1R3(runtime.global_state_manager, 2950, 1044),
        FromMortuaryF1RcToMortuaryF1R4(runtime.global_state_manager, 2874, 1934)
    ]
    screen_location_map_mortuary_f1_dynamic_actions = [
        InMortuaryF1R1Soego    (runtime.global_state_manager, 1300, 2600),

        InMortuaryF1R2Deionarra(runtime.global_state_manager, 1050, 1000),

        InMortuaryF1R3Zf114    (runtime.global_state_manager, 2400,  400),
        InMortuaryF1R3Zm1041   (runtime.global_state_manager, 3200,  900),
        InMortuaryF1R3Xach     (runtime.global_state_manager, 3850, 1100),

        InMortuaryF1R4Zm732    (runtime.global_state_manager, 3400, 2300),

        InMortuaryF1RcGiantsk  (runtime.global_state_manager, 2200, 1250)
    ]
    screen_location_map_mortuary_f1_get_party = screen_location_map_mortuary_f1_get_party
    screen_location_map_mortuary_f1_shadows = [
        MortuaryF1R1Shadow(runtime.global_state_manager, 1200, 2450),
        MortuaryF1R2Shadow(runtime.global_state_manager, 1100,  900),
        MortuaryF1R3Shadow(runtime.global_state_manager, 3250,  700),
        MortuaryF1R4Shadow(runtime.global_state_manager, 3300, 2200),
        MortuaryF1RcShadow(runtime.global_state_manager, 2350, 1400),
    ]


label mortuary_f1_map:
    $ renpy.scene(layer = 'screens')
    $ renpy.music.play(audio.mortuary, channel='music', loop=True, if_changed=True)

    call screen screen_location_map(
        background='bg/mortuary/f1/root.webp',
        static_actions=screen_location_map_mortuary_f1_static_actions,
        dynamic_actions=screen_location_map_mortuary_f1_dynamic_actions,
        get_party=screen_location_map_mortuary_f1_get_party,
        shadows=screen_location_map_mortuary_f1_shadows
    )
