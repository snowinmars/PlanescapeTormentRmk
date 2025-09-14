init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf679_speak:
    # - # IF ~  True()
    jump zf679_s0_ctor


label zf679_s0_ctor:
    show zf679_img default at center_left_down
    jump zf679_s0


label zf679_s3_ctor: # - # IF ~  False()
    show zf679_img default at center_left_down
    jump zf679_s3


label zf679_dispose:
    hide zf679_img
    jump graphics_menu
