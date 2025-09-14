init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf626_speak:
    # - # IF ~  True()
    jump zf626_s0_ctor


label zf626_s0_ctor:
    show zf626_img default at center_left_down
    jump zf626_s0


label zf626_s3_ctor: # - # IF ~  False()
    show zf626_img default at center_left_down
    jump zf626_s3


label zf626_dispose:
    hide zf626_img
    jump graphics_menu
