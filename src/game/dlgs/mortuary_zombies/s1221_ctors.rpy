init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s1221_speak:
    # - # IF ~  True()
    jump s1221_s0_ctor


label s1221_s0_ctor:
    show s1221_img default at center_left_down
    jump s1221_s0


label s1221_s7_ctor: # - # IF ~  False()
    show s1221_img default at center_left_down
    jump s1221_s7


label s1221_dispose:
    scene onlayer dialogue
    jump map_dispatcher
