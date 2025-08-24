init 10 python:
    gsm = renpy.store.global_settings_manager


label zf832_speak:
    # - # IF ~  True()
    jump zf832_s0_ctor


label zf832_s0_ctor:
    scene bg mortuary_f3r4
    show zf832_img default at center_left_down
    jump zf832_s0


label zf832_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f3r4
    show zf832_img default at center_left_down
    jump zf832_s3


label zf832_dispose:
    hide zf832_img
    jump graphics_menu
