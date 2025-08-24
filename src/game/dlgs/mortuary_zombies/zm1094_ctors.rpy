init 10 python:
    gsm = renpy.store.global_settings_manager


label zm1094_speak:
    # IF ~  Global("Asonje","GLOBAL",0)
    if gsm.get_asonje_value() == 0:
        jump zm1094_s0_ctor

    # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    if  gsm.get_asonje_value() > 0 and \
        gsm.get_asonje_value() < 3:
        jump zm1094_s26_ctor

    # IF ~  Global("Asonje","GLOBAL",3)
    if gsm.get_asonje_value() == 3:
        jump zm1094_s27_ctor


label zm1094_s0_ctor:
    scene bg mortuary_f2r3
    show zm1094_img default at center_left_down
    jump zm1094_s0


label zm1094_s26_ctor:
    scene bg mortuary_f2r3
    show zm1094_img default at center_left_down
    jump zm1094_s26


label zm1094_s27_ctor:
    scene bg mortuary_f2r3
    show zm1094_img default at center_left_down
    jump zm1094_s27


label zm1094_dispose:
    hide zm1094_img
    jump graphics_menu
