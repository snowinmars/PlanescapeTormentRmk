init 10 python:
    gsm = renpy.store.global_state_manager


label xach_speak:
    # IF ~  True()
    jump xach_s0_ctor


label xach_s0_ctor:
    show xach_img default at center_left_down
    jump xach_s0


label xach_s14_ctor: # -
    show xach_img default at center_left_down
    jump xach_s14


label xach_s15_ctor: # -
    show xach_img default at center_left_down
    jump xach_s15


label xach_s35_ctor: # -
    show xach_img default at center_left_down
    jump xach_s35


label xach_dispose:
    hide xach_img
    jump graphics_menu
