init 10 python:
    gsm = renpy.store.global_state_manager


label zf832_speak:
    # - # IF ~  True()
    jump zf832_s0_ctor


label zf832_s0_ctor:
    show zf832_img default at center_left_down
    jump zf832_s0


label zf832_s3_ctor: # - # IF ~  False()
    show zf832_img default at center_left_down
    jump zf832_s3


label zf832_dispose:
    hide zf832_img
    jump graphics_menu
