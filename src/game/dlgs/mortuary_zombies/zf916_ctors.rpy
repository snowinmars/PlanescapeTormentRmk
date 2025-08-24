init 10 python:
    gsm = renpy.store.global_settings_manager


label zf916_speak:
    # - # IF ~  True()
    jump zf916_s0_ctor


label zf916_s0_ctor:
    scene bg DISABLED
    show zf916_img default at center_left_down
    jump zf916_s0


label zf916_s3_ctor: # - # IF ~  False()
    scene bg DISABLED
    show zf916_img default at center_left_down
    jump zf916_s3


label zf916_dispose:
    hide zf916_img
    jump graphics_menu
