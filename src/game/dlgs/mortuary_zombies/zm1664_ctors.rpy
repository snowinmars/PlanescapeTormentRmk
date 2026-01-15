init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1664_speak:
    # - # IF ~  True()
    jump zm1664_s0_ctor


label zm1664_s0_ctor:
    show dialogue_sprite_zm1664_default at dialogue
    jump zm1664_s0


label zm1664_dispose:
    scene onlayer dialogue
    jump map_dispatcher
