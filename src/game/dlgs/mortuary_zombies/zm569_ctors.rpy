init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm569_speak:
    # - # IF ~  True()
    jump zm569_s0_ctor


label zm569_s0_ctor:
    show dialogue_sprite_zm569_default at dialogue
    jump zm569_s0


label zm569_dispose:
    scene onlayer dialogue
    jump map_dispatcher
