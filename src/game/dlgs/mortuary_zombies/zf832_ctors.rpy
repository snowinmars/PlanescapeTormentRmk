init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf832_speak:
    # - # IF ~  True()
    jump zf832_s0_ctor


label zf832_s0_ctor:
    show dialogue_sprite_zf832_default at dialogue
    jump zf832_s0


label zf832_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf832_default at dialogue
    jump zf832_s3


label zf832_dispose:
    scene onlayer dialogue
    jump map_dispatcher
