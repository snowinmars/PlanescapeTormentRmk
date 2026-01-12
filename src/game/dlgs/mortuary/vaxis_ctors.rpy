init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label vaxis_speak:
    # IF ~  Global("Vaxis","GLOBAL",0)
    if gsm.world_manager.get_vaxis_value() == 0:
        jump vaxis_s0_ctor

    # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    if gsm.world_manager.get_vaxis_value() > 0:
        jump vaxis_s57_ctor


label vaxis_s0_ctor:
    show vaxis_img default at center_left_down
    jump vaxis_s0


label vaxis_s1_ctor: # IF ~  False()
    show vaxis_img default at center_left_down
    jump vaxis_s1


label vaxis_s40_ctor: # -
    show vaxis_img default at center_left_down
    jump vaxis_s40


label vaxis_s41_ctor: # -
    show vaxis_img default at center_left_down
    jump vaxis_s41


label vaxis_s57_ctor:
    show vaxis_img default at center_left_down
    jump vaxis_s57


label vaxis_s69_ctor: # -
    show vaxis_img default at center_left_down
    jump vaxis_s69


label vaxis_s73_ctor: # -
    show vaxis_img default at center_left_down
    jump vaxis_s73


label vaxis_dispose:
    scene onlayer dialogue
    jump map_dispatcher
