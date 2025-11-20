init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label eivene_speak:
    # IF ~  Global("EiVene","GLOBAL",0)
    if gsm.world_manager.get_eivene_value() == 0:
        jump eivene_s0_ctor

    # IF ~  Global("EiVene","GLOBAL",1)
    if gsm.world_manager.get_eivene_value() == 1:
        jump eivene_s15_ctor


label eivene_s0_ctor:
    show eivene_img default at center_left_down
    jump eivene_s0


label eivene_s15_ctor:
    show eivene_img default at center_left_down
    jump eivene_s15


label eivene_s25_ctor: # -
    show eivene_img default at center_left_down
    jump eivene_s25


label eivene_dispose:
    hide eivene_img
    jump graphics_menu

