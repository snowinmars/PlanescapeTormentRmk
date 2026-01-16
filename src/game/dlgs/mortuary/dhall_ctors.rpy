init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager
    glem = runtime.global_log_events_manager

label dhall_speak:
    # IF ~  Global("Dhall","GLOBAL",0)
    if gsm.world_manager.get_dhall_value() == 0:
        jump dhall_s5_ctor

    # IF ~  Global("Dhall","GLOBAL",1)
    if gsm.world_manager.get_dhall_value() == 1:
        jump dhall_s40_ctor

    jump dhall_s40_ctor # TODO [snow]: should not be possible


label dhall_s5_ctor:
    show dialogue_sprite_dhall_default at dialogue
    jump dhall_s5


label dhall_s39_ctor: # -
    show dialogue_sprite_dhall_default at dialogue
    jump dhall_s39


label dhall_s40_ctor:
    show dialogue_sprite_dhall_default at dialogue
    jump dhall_s40


label dhall_dispose:
    scene onlayer dialogue
    jump map_dispatcher
