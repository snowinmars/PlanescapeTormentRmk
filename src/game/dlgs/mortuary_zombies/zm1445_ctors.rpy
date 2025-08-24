init 10 python:
    gsm = renpy.store.global_settings_manager


label zm1145_speak:
    # - # IF ~  True()
    jump zm1145_s0_ctor


label zm1145_s0_ctor:
    scene bg DISABLED
    show zm1145_img default at center_left_down
    jump zm1145_s0


label zm1145_dispose:
    hide zm1145_img
    jump graphics_menu
