init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1041_speak:
    # IF ~  Global("Bei","GLOBAL",0)
    if gsm.world_manager.get_bei_value() == 0:
        jump zm1041_s0_ctor

    # IF ~  Global("Bei","GLOBAL",1)
    if gsm.world_manager.get_bei_value() == 1:
        jump zm1041_s37_ctor

    jump zm1041_s37_ctor # TODO [snow]: should not be possible


label zm1041_s0_ctor:
    show dialogue_sprite_zm1041_default at dialogue
    jump zm1041_s0


label zm1041_s35_ctor: # -
    show dialogue_sprite_zm1041_default at dialogue
    jump zm1041_s35


label zm1041_s37_ctor:
    show dialogue_sprite_zm1041_default at dialogue
    jump zm1041_s37


label zm1041_dispose:
    scene onlayer dialogue
    jump map_dispatcher
