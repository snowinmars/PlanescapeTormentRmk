init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm782_speak:
    # - # IF ~  True()
    jump zm782_s0_ctor


label zm782_s0_ctor:
    show zm782_img default at center_left_down
    jump zm782_s0


label zm782_dispose:
    scene onlayer dialogue
    jump map_dispatcher
