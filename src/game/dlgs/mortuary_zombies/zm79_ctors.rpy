init 10 python:
    gsm = renpy.store.global_settings_manager


label zm79_speak:
    # - # IF ~  True()
    jump zm79_s0_ctor


label zm79_s0_ctor:
    scene bg mortuary_f3r4
    show zm79_img default at center_left_down
    jump zm79_s0


label zm79_dispose:
    hide zm79_img
    jump graphics_menu
