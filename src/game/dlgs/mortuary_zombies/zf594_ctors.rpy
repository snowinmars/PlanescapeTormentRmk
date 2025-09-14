init 10 python:
    gsm = renpy.store.global_state_manager


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
    hide zf594_img
    jump graphics_menu
