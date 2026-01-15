init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1508_speak:
    # - # IF ~  True()
    jump zm1508_s0_ctor


label zm1508_s0_ctor:
    show dialogue_sprite_zm1508_default at dialogue
    jump zm1508_s0


label zm1508_dispose:
    scene onlayer dialogue
    jump map_dispatcher
