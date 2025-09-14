init 10 python:
    gsm = renpy.store.global_state_manager


label zm1664_speak:
    # - # IF ~  True()
    jump zm1664_s0_ctor


label zm1664_s0_ctor:
    show zm1664_img default at center_left_down
    jump zm1664_s0


label zm1664_dispose:
    hide zm1664_img
    jump graphics_menu
