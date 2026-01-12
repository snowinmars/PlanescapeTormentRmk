init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf594_speak:
    # - # IF ~  True()
    jump zf594_s0_ctor


label zf594_s0_ctor:
    show zf594_img default at center_left_down
    jump zf594_s0


label zf594_s3_ctor: # - # IF ~  False()
    show zf594_img default at center_left_down
    jump zf594_s3


label zf594_dispose:
    scene onlayer dialogue
    jump map_dispatcher
