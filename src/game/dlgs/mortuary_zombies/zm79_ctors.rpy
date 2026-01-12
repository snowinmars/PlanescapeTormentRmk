init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm79_speak:
    # - # IF ~  True()
    jump zm79_s0_ctor


label zm79_s0_ctor:
    show zm79_img default at center_left_down
    jump zm79_s0


label zm79_dispose:
    scene onlayer dialogue
    jump map_dispatcher
