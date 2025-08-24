init 10 python:
    gsm = renpy.store.global_settings_manager


label zm569_speak:
    # - # IF ~  True()
    jump zm569_s0_ctor


label zm569_s0_ctor:
    scene bg mortuary_f2r1
    show zm569_img default at center_left_down
    jump zm569_s0


label zm569_dispose:
    hide zm569_img
    jump graphics_menu
