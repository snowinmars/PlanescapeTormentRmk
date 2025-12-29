init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label dust_speak:
    # IF ~  Global("Appearance","GLOBAL",1)
    if gsm.world_manager.get_appearance() == 1:
        jump dust_s0_ctor

    # IF ~  Global("Appearance","GLOBAL",2)
    if gsm.world_manager.get_appearance() == 2:
        jump dust_s22_ctor

    # IF ~  Global("Appearance","GLOBAL",0)
    if gsm.world_manager.get_appearance() == 0:
        jump dust_s51_ctor

    jump dust_s40_ctor

label dust_s0_ctor:
    show dust_img default at center_left_down
    jump dust_s0


label dust_s22_ctor:
    show dust_img default at center_left_down
    jump dust_s22


label dust_s38_ctor: # -
    show dust_img default at center_left_down
    jump dust_s38


label dust_s40_ctor:
    show dust_img default at center_left_down
    jump dust_s40


label dust_s51_ctor:
    show dust_img default at center_left_down
    jump dust_s51


label dust_dispose:
    hide dust_img
    jump  map_dispatcher
