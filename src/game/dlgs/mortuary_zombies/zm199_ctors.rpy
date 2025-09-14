init 10 python:
    gsm = renpy.store.global_state_manager


label zm199_speak:
    # - # IF ~  True()
    jump zm199_s0_ctor


label zm199_s0_ctor:
    show zm199_img default at center_left_down
    jump zm199_s0


label zm199_dispose:
    hide zm199_img
    jump graphics_menu
