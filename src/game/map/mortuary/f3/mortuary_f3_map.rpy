init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f3.items import (
        FromMortuaryF3R1ToMortuaryF2R1,
        FromMortuaryF3R1uToMortuaryF3Rc,
        FromMortuaryF3R1dToMortuaryF3Rc,
        MortuaryF3R1Shadow,

        FromMortuaryF3R2lToMortuaryF3Rc,
        FromMortuaryF3R2rToMortuaryF3Rc,
        MortuaryF3R2Shadow,
        InMortuaryF3R2PickTaskList,

        FromMortuaryF3R3ToMortuaryF2R7,
        FromMortuaryF3R3uToMortuaryF3Rc,
        FromMortuaryF3R3dToMortuaryF3Rc,
        MortuaryF3R3Shadow,

        FromMortuaryF3R4lToMortuaryF3Rc,
        FromMortuaryF3R4rToMortuaryF3Rc,
        MortuaryF3R4Shadow,
        InMortuaryF3R4PickPrybar,
        InMortuaryF3R4PickDustmanRequest,
        InMortuaryF3R4Zm79,
        InMortuaryF3R4Zf679,
        InMortuaryF3R4S1221,

        FromMortuaryF3RcToMortuaryF3R1u,
        FromMortuaryF3RcToMortuaryF3R1d,
        FromMortuaryF3RcToMortuaryF3R3u,
        FromMortuaryF3RcToMortuaryF3R3d,
        FromMortuaryF3RcToMortuaryF3R2l,
        FromMortuaryF3RcToMortuaryF3R2r,
        FromMortuaryF3RcToMortuaryF3R4l,
        FromMortuaryF3RcToMortuaryF3R4r,
        MortuaryF3RcShadow,
        InMortuaryF3RcPickGarbage,
        InMortuaryF3RcPickNeedle,
        InMortuaryF3RcPickMortuaryKey,
        InMortuaryF3RcDust,
        InMortuaryF3RcDustfem,
        InMortuaryF3RcS42,
        InMortuaryF3RcS748,
        InMortuaryF3RcS863,
        InMortuaryF3RcS996,
        InMortuaryF3RcZm310,
        InMortuaryF3RcZm475,
        InMortuaryF3RcZm613,
        InMortuaryF3RcZf832,
        InMortuaryF3RcZm1146,
        InMortuaryF3RcZf1148
    )


    def screen_location_map_mortuary_f3_get_party():
        return get_party(runtime.global_state_manager, mortuaryF3LootLogic.get_where_party_stands())


    screen_location_map_mortuary_f3_static_actions = [
        FromMortuaryF3R1ToMortuaryF2R1  (runtime.global_state_manager,  751, 1552),
        FromMortuaryF3R1uToMortuaryF3Rc (runtime.global_state_manager,  441, 1193),
        FromMortuaryF3R1dToMortuaryF3Rc (runtime.global_state_manager,  538, 1865),

        FromMortuaryF3R2lToMortuaryF3Rc (runtime.global_state_manager, 1250,  484),
        FromMortuaryF3R2rToMortuaryF3Rc (runtime.global_state_manager, 2183,  437),
        InMortuaryF3R2PickTaskList      (runtime.global_state_manager, 1380,  326),

        FromMortuaryF3R3ToMortuaryF2R7  (runtime.global_state_manager, 2914, 1405),
        FromMortuaryF3R3uToMortuaryF3Rc (runtime.global_state_manager, 3127,  985),
        FromMortuaryF3R3dToMortuaryF3Rc (runtime.global_state_manager, 3200, 1631),

        FromMortuaryF3R4lToMortuaryF3Rc (runtime.global_state_manager, 1490, 2332),
        FromMortuaryF3R4rToMortuaryF3Rc (runtime.global_state_manager, 2420, 2280),
        InMortuaryF3R4PickPrybar        (runtime.global_state_manager, 2031, 2158),
        InMortuaryF3R4PickDustmanRequest(runtime.global_state_manager, 1901, 2131),

        FromMortuaryF3RcToMortuaryF3R1u (runtime.global_state_manager,  441, 1193),
        FromMortuaryF3RcToMortuaryF3R1d (runtime.global_state_manager,  538, 1865),
        FromMortuaryF3RcToMortuaryF3R3u (runtime.global_state_manager, 3127,  985),
        FromMortuaryF3RcToMortuaryF3R3d (runtime.global_state_manager, 3200, 1631),
        FromMortuaryF3RcToMortuaryF3R2l (runtime.global_state_manager, 1250,  484),
        FromMortuaryF3RcToMortuaryF3R2r (runtime.global_state_manager, 2183,  437),
        FromMortuaryF3RcToMortuaryF3R4l (runtime.global_state_manager, 1490, 2332),
        FromMortuaryF3RcToMortuaryF3R4r (runtime.global_state_manager, 2420, 2280),
        InMortuaryF3RcPickGarbage       (runtime.global_state_manager, 1394,  749),
        InMortuaryF3RcPickNeedle        (runtime.global_state_manager, 2144,  665),
        InMortuaryF3RcPickMortuaryKey   (runtime.global_state_manager,  847, 1756),
    ]
    screen_location_map_mortuary_f3_dynamic_actions = [
        InMortuaryF3R4Zm79   (runtime.global_state_manager, 1660, 2260),
        InMortuaryF3R4Zf679  (runtime.global_state_manager, 1620, 2300),
        InMortuaryF3R4S1221  (runtime.global_state_manager, 1600, 2360),

        InMortuaryF3RcDust   (runtime.global_state_manager, 2575, 1700),
        InMortuaryF3RcDustfem(runtime.global_state_manager,  925, 1825),
        InMortuaryF3RcS42    (runtime.global_state_manager, 1700, 1100),
        InMortuaryF3RcS748   (runtime.global_state_manager, 2900,  950),
        InMortuaryF3RcS863   (runtime.global_state_manager,  750,  750),
        InMortuaryF3RcS996   (runtime.global_state_manager, 2800,  900),
        InMortuaryF3RcZm310  (runtime.global_state_manager, 2450, 1700),
        InMortuaryF3RcZm475  (runtime.global_state_manager, 2000,  960),
        InMortuaryF3RcZm613  (runtime.global_state_manager, 1300, 1700),
        InMortuaryF3RcZf832  (runtime.global_state_manager, 2800, 1800),
        InMortuaryF3RcZm1146 (runtime.global_state_manager,  750,  950),
        InMortuaryF3RcZf1148 (runtime.global_state_manager, 1400, 1000),
    ]
    screen_location_map_mortuary_f3_get_party = screen_location_map_mortuary_f3_get_party
    screen_location_map_mortuary_f3_shadows = [
        MortuaryF3R1Shadow(runtime.global_state_manager,  465, 1422),
        MortuaryF3R2Shadow(runtime.global_state_manager, 1705,  400),
        MortuaryF3R3Shadow(runtime.global_state_manager, 3220, 1253),
        MortuaryF3R4Shadow(runtime.global_state_manager, 1960, 2280),
        MortuaryF3RcShadow(runtime.global_state_manager, 1809, 1250),
    ]


label never_mortuary_f3_map:
    $ never = _('InMortuaryF3R2PickTaskList_snack1')
    $ never = _('InMortuaryF3R4PickPrybar_snack1')
    $ never = _('InMortuaryF3R4PickDustmanRequest_snack1')
    $ never = _('FromMortuaryF3RcToMortuaryF3R1u_snack1')
    $ never = _('FromMortuaryF3RcToMortuaryF3R1d_snack1')
    $ never = _('InMortuaryF3RcPickGarbage_snack1')
    $ never = _('InMortuaryF3RcPickNeedle_snack1')
    $ never = _('InMortuaryF3RcPickMortuaryKey_snack1')


label mortuary_f3_map:
    $ renpy.scene(layer = 'screens')
    $ renpy.music.play(audio.mortuary, channel='music', loop=True, if_changed=True)

    call screen screen_location_map(
        background='bg/mortuary/f3/root.webp',
        static_actions=screen_location_map_mortuary_f3_static_actions,
        dynamic_actions=screen_location_map_mortuary_f3_dynamic_actions,
        get_party=screen_location_map_mortuary_f3_get_party,
        shadows=screen_location_map_mortuary_f3_shadows
    )
