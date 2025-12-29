init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label dhall_speak:
    # IF ~  Global("Dhall","GLOBAL",0)
    if gsm.world_manager.get_dhall_value() == 0:
        jump dhall_s5_ctor

    # IF ~  Global("Dhall","GLOBAL",1)
    if gsm.world_manager.get_dhall_value() == 1:
        jump dhall_s40_ctor


label dhall_s5_ctor:
    show dhall_img default at center_left_down
    jump dhall_s5


label dhall_s39_ctor: # -
    show dhall_img default at center_left_down
    jump dhall_s39


label dhall_s40_ctor:
    show dhall_img default at center_left_down
    jump dhall_s40


label dhall_dispose:
    hide dhall_img
    jump  map_dispatcher
