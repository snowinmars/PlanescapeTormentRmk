init 10 python:
    gsm = renpy.store.global_settings_manager


label zf1096_speak:
    # - # IF ~  True()
    jump zf1096_s0_ctor


label zf1096_s0_ctor:
    scene bg mortuary_f2r3
    show zf1096_img default at center_left_down
    jump zf1096_s0


label zf1096_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f2r3
    show zf1096_img default at center_left_down
    jump zf1096_s3


label zf1096_dispose:
    hide zf1096_img
    jump graphics_menu
