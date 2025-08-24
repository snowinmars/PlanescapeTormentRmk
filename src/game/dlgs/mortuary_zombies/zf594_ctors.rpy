init 10 python:
    gsm = renpy.store.global_settings_manager


label zf594_speak:
    # - # IF ~  True()
    jump zf594_s0_ctor


label zf594_s0_ctor:
    scene bg mortuary_f2r2
    show zf594_img default at center_left_down
    jump zf594_s0


label zf594_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f2r2
    show zf594_img default at center_left_down
    jump zf594_s3


label zf594_dispose:
    hide zf594_img
    jump graphics_menu
