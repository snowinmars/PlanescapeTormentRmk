init 10 python:
    gsm = renpy.store.global_state_manager


label zf114_speak:
    # - # IF ~  True()
    jump zf114_s0_ctor


label zf114_s0_ctor:
    show zf114_img default at center_left_down
    jump zf114_s0


label zf114_s3_ctor: # - # IF ~  False()
    show zf114_img default at center_left_down
    jump zf114_s3


label zf114_dispose:
    hide zf114_img
    jump graphics_menu
