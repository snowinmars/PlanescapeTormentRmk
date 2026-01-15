init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label xach_speak:
    # IF ~  True()
    jump xach_s0_ctor


label xach_s0_ctor:
    show dialogue_sprite_xach_default at dialogue
    jump xach_s0


label xach_s14_ctor: # -
    show dialogue_sprite_xach_default at dialogue
    jump xach_s14


label xach_s15_ctor: # -
    show dialogue_sprite_xach_default at dialogue
    jump xach_s15


label xach_s35_ctor: # -
    show dialogue_sprite_xach_default at dialogue
    jump xach_s35


label xach_dispose:
    scene onlayer dialogue
    jump map_dispatcher
