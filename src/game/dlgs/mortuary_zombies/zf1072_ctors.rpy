init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf1072_speak:
    # - # IF ~  True()
    jump zf1072_s0_ctor


label zf1072_s0_ctor:
    show dialogue_sprite_zf1072_default at dialogue
    jump zf1072_s0


label zf1072_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf1072_default at dialogue
    jump zf1072_s3


label zf1072_dispose:
    scene onlayer dialogue
    jump map_dispatcher
