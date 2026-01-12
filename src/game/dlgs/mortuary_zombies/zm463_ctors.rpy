init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm463_speak:
    # - # IF ~  True()
    jump zm463_s0_ctor


label zm463_s0_ctor:
    show zm463_img default at center_left_down
    jump zm463_s0


label zm463_dispose:
    scene onlayer dialogue
    jump map_dispatcher
