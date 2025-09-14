init 10 python:
    gsm = renpy.store.global_state_manager


label s996_speak:
    # - # IF ~  True()
    jump s996_s0_ctor


label s996_s0_ctor:
    show s996_img default at center_left_down
    jump s996_s0


label s996_s7_ctor: # - # IF ~  False()
    show s996_img default at center_left_down
    jump s996_s7


label s996_dispose:
    hide s996_img
    jump graphics_menu
