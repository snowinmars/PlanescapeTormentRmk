init 10 python:
    gsm = renpy.store.global_settings_manager


label zm463_speak:
    # - # IF ~  True()
    jump zm463_s0_ctor


label zm463_s0_ctor:
    scene bg DISABLED
    show zm463_img default at center_left_down
    jump zm463_s0


label zm463_dispose:
    hide zm463_img
    jump graphics_menu
