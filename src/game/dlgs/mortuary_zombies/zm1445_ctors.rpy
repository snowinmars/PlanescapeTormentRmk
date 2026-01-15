init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1445_speak:
    # - # IF ~  True()
    jump zm1445_s0_ctor


label zm1445_s0_ctor:
    show dialogue_sprite_zm1445_default at dialogue
    jump zm1445_s0


label zm1445_dispose:
    scene onlayer dialogue
    jump map_dispatcher
