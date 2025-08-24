init 10 python:
    gsm = renpy.store.global_settings_manager


label zm475_speak:
    # - # IF ~  True()
    jump zm475_s0_ctor


label zm475_s0_ctor:
    scene bg DISABLED
    show zm475_img default at center_left_down
    jump zm475_s0


label zm475_dispose:
    hide zm475_img
    jump graphics_menu
