init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf1148_speak:
    # - # IF ~  True()
    jump zf1148_s0_ctor


label zf1148_s0_ctor:
    show zf1148_img default at center_left_down
    jump zf1148_s0


label zf1148_s3_ctor: # - # IF ~  False()
    show zf1148_img default at center_left_down
    jump zf1148_s3


label zf1148_dispose:
    hide zf1148_img
    jump  map_dispatcher
