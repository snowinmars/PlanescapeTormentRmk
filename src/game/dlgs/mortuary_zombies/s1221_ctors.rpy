init 10 python:
    gsm = renpy.store.global_settings_manager


label s1221_speak:
    # - # IF ~  True()
    jump s1221_s0_ctor


label s1221_s0_ctor:
    scene bg mortuary_f3r4
    show s1221_img default at center_left_down
    jump s1221_s0


label s1221_s7_ctor: # - # IF ~  False()
    scene bg mortuary_f3r4
    show s1221_img default at center_left_down
    jump s1221_s7


label s1221_dispose:
    hide s1221_img
    jump graphics_menu
