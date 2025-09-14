init 10 python:
    gsm = renpy.store.global_state_manager


label zm1445_speak:
    # - # IF ~  True()
    jump zm1445_s0_ctor


label zm1445_s0_ctor:
    show zm1445_img default at center_left_down
    jump zm1445_s0


label zm1445_dispose:
    hide zm1445_img
    jump graphics_menu
