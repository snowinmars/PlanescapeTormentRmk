init 10 python:
    gsm = renpy.store.global_state_manager


label zm506_speak:
    # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    if not gsm.get_has_506_thread():
        jump zm506_s0_ctor

    # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    if gsm.get_has_506_thread():
        jump zm506_s5_ctor


label zm506_s0_ctor:
    show zm506_img default at center_left_down
    jump zm506_s0


label zm506_s5_ctor:
    show zm506_img default at center_left_down
    jump zm506_s5


label zm506_dispose:
    hide zm506_img
    jump graphics_menu
