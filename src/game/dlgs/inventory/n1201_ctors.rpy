init 10 python:
    gsm = renpy.store.global_state_manager


label n1201_speak:
    jump n1201_s0_ctor


label n1201_s0_ctor:
    show n1201_img default at center_left_down
    jump n1201_s0


label n1201_dispose:
    jump graphics_menu
