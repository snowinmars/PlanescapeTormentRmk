init 10 python:
    gsm = renpy.store.global_state_manager


label zm613_speak:
    # - # IF ~  True()
    jump zm613_s0_ctor


label zm613_s0_ctor:
    show zm613_img default at center_left_down
    jump zm613_s0


label zm613_dispose:
    hide zm613_img
    jump graphics_menu
