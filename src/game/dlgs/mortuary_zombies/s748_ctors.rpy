init 10 python:
    gsm = renpy.store.global_state_manager


label s748_speak:
    # - # IF ~  True()
    jump s748_s0_ctor


label s748_s0_ctor:
    show s748_img default at center_left_down
    jump s748_s0


label s748_s7_ctor: # -
    show s748_img default at center_left_down
    jump s748_s7


label s748_dispose:
    hide s748_img
    jump graphics_menu
