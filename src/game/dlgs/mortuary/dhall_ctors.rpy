init 10 python:
    gsm = renpy.store.global_settings_manager


label dhall_speak:
    # IF ~  Global("Dhall","GLOBAL",0)
    if gsm.get_dhall_value() == 0:
        jump dhall_s5_ctor

    # IF ~  Global("Dhall","GLOBAL",1)
    if gsm.get_dhall_value() == 1:
        jump dhall_s40_ctor


label dhall_s5_ctor:
    scene bg mortuary_f2r3
    show dhall_img default at center_left_down
    jump dhall_s5


label dhall_s39_ctor: # -
    scene bg mortuary_f2r3
    show dhall_img default at center_left_down
    jump dhall_s39


label dhall_s40_ctor:
    scene bg mortuary_f2r3
    show dhall_img default at center_left_down
    jump dhall_s40


label dhall_dispose:
    hide dhall_img
    jump graphics_menu
