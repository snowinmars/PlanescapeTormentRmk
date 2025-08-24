init 10 python:
    gsm = renpy.store.global_settings_manager


label zm782_speak:
    # - # IF ~  True()
    jump zm782_s0_ctor


label zm782_s0_ctor:
    scene bg mortuary_f2r1
    show zm782_img default at center_left_down
    jump zm782_s0


label zm782_dispose:
    hide zm782_img
    jump graphics_menu
