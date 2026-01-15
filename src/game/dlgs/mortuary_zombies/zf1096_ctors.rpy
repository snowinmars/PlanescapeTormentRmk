init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf1096_speak:
    # - # IF ~  True()
    jump zf1096_s0_ctor


label zf1096_s0_ctor:
    show dialogue_sprite_zf1096_default at dialogue
    jump zf1096_s0


label zf1096_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf1096_default at dialogue
    jump zf1096_s3


label zf1096_dispose:
    scene onlayer dialogue
    jump map_dispatcher
