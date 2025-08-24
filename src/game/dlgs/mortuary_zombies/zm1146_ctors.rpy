init 10 python:
    gsm = renpy.store.global_settings_manager


label zm1146_speak:
    # IF ~  Global("Crispy","GLOBAL",0)
    if gsm.get_crispy_value() == 0:
        jump zm1146_s0_ctor

    # IF ~  Global("Crispy","GLOBAL",1)
    if gsm.get_crispy_value() == 1:
        jump zm1146_s20_ctor


label zm1146_s0_ctor:
    scene bg mortuary_f3r1
    show zm1146_img default at center_left_down
    jump zm1146_s0


label zm1146_s20_ctor:
    scene bg mortuary_f3r1
    show zm1146_img default at center_left_down
    jump zm1146_s20


label zm1146_dispose:
    hide zm1146_img
    jump graphics_menu
