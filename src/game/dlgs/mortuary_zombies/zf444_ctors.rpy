init 10 python:
    gsm = renpy.store.global_settings_manager


label zf444_speak:
    # - # IF ~  True()
    jump zf444_s0_ctor


label zf444_s0_ctor:
    scene bg DISABLED
    show zf444_img default at center_left_down
    jump zf444_s0


label zf444_s3_ctor: # - # IF ~  False()
    scene bg DISABLED
    show zf444_img default at center_left_down
    jump zf444_s3


label zf444_dispose:
    hide zf444_img
    jump graphics_menu
