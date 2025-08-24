init 10 python:
    gsm = renpy.store.global_settings_manager


label xach_speak:
    # IF ~  True()
    jump xach_s0_ctor


label xach_s0_ctor:
    scene bg mortuary_f1r3
    show xach_img default at center_left_down
    jump xach_s0


label xach_s14_ctor: # -
    scene bg mortuary_f1r3
    show xach_img default at center_left_down
    jump xach_s14


label xach_s15_ctor: # -
    scene bg mortuary_f1r3
    show xach_img default at center_left_down
    jump xach_s15


label xach_s35_ctor: # -
    scene bg mortuary_f1r3
    show xach_img default at center_left_down
    jump xach_s35


label xach_dispose:
    hide xach_img
    jump graphics_menu
