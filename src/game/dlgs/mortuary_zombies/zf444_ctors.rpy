init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf444_speak:
    # - # IF ~  True()
    jump zf444_s0_ctor


label zf444_s0_ctor:
    show dialogue_sprite_zf444_default at dialogue
    jump zf444_s0


label zf444_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf444_default at dialogue
    jump zf444_s3


label zf444_dispose:
    scene onlayer dialogue
    jump map_dispatcher
