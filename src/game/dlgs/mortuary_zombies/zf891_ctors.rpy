init 10 python:
    gsm = renpy.store.global_settings_manager


label zf891_speak:
    # - # IF ~  True()
    jump zf891_s0_ctor


label zf891_s0_ctor:
    scene bg mortuary_f2r8
    show zf891_img default at center_left_down
    jump zf891_s0


label zf891_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f2r8
    show zf891_img default at center_left_down
    jump zf891_s3


label zf891_dispose:
    hide zf891_img
    jump graphics_menu
