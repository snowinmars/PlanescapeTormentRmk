init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf916_speak:
    # - # IF ~  True()
    jump zf916_s0_ctor


label zf916_s0_ctor:
    show dialogue_sprite_zf916_default at dialogue
    jump zf916_s0


label zf916_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf916_default at dialogue
    jump zf916_s3


label zf916_dispose:
    scene onlayer dialogue
    jump map_dispatcher
