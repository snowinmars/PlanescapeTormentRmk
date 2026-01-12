init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label n1201_speak:
    jump n1201_s0_ctor


label n1201_s0_ctor:
    show n1201_img default at center_left_down
    jump n1201_s0


label n1201_dispose:
    scene onlayer dialogue
    jump map_dispatcher
