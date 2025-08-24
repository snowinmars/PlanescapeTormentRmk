init 10 python:
    gsm = renpy.store.global_settings_manager


label zf1072_speak:
    # - # IF ~  True()
    jump zf1072_s0_ctor


label zf1072_s0_ctor:
    scene bg mortuary_f2r3
    show zf1072_img default at center_left_down
    jump zf1072_s0


label zf1072_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f2r3
    show zf1072_img default at center_left_down
    jump zf1072_s3


label zf1072_dispose:
    hide zf1072_img
    jump graphics_menu
