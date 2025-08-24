init 10 python:
    gsm = renpy.store.global_settings_manager


label s42_speak:
    # - # IF ~  True()
    jump s42_s0_ctor


label s42_s0_ctor:
    scene bg mortuary_f3r4
    show s42_img default at center_left_down
    jump s42_s0


label s42_s11_ctor: # -
    scene bg mortuary_f3r4
    show s42_img default at center_left_down
    jump s42_s11


label s42_dispose:
    hide s42_img
    jump graphics_menu
