init 10 python:
    gsm = renpy.store.global_settings_manager


label zf1148_speak:
    # - # IF ~  True()
    jump zf1148_s0_ctor


label zf1148_s0_ctor:
    scene bg mortuary_f3r1
    show zf1148_img default at center_left_down
    jump zf1148_s0


label zf1148_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f3r1
    show zf1148_img default at center_left_down
    jump zf1148_s3


label zf1148_dispose:
    hide zf1148_img
    jump graphics_menu
