init 10 python:
    gsm = renpy.store.global_settings_manager


label zm1041_speak:
    # IF ~  Global("Bei","GLOBAL",0)
    if gsm.get_bei_value() == 0:
        jump zm1041_s0_ctor

    # IF ~  Global("Bei","GLOBAL",1)
    if gsm.get_bei_value() == 1:
        jump zm1041_s37_ctor


label zm1041_s0_ctor:
    scene bg mortuary_f1r3
    show zm1041_img default at center_left_down
    jump zm1041_s0


label zm1041_s35_ctor: # -
    scene bg mortuary_f1r3
    show zm1041_img default at center_left_down
    jump zm1041_s35


label zm1041_s37_ctor:
    scene bg mortuary_f1r3
    show zm1041_img default at center_left_down
    jump zm1041_s37


label zm1041_dispose:
    hide zm1041_img
    jump graphics_menu
