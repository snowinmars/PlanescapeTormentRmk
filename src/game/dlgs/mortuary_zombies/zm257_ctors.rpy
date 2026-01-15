init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm257_speak:
    # - # IF ~  True()
    jump zm257_s0_ctor


label zm257_s0_ctor:
    show dialogue_sprite_zm257_default at dialogue
    jump zm257_s0


label zm257_dispose:
    scene onlayer dialogue
    jump map_dispatcher
