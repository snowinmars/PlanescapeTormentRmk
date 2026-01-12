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


label zm1041_s0_ctor:
    show zm1041_img default at center_left_down
    jump zm1041_s0


label zm1041_s35_ctor: # -
    show zm1041_img default at center_left_down
    jump zm1041_s35


label zm1041_s37_ctor:
    show zm1041_img default at center_left_down
    jump zm1041_s37


label zm1041_dispose:
    scene onlayer dialogue
    jump map_dispatcher
