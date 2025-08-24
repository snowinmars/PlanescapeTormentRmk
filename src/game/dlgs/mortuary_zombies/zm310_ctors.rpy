init 10 python:
    gsm = renpy.store.global_settings_manager


label zm310_speak:
    # IF ~  Global("Oinosian","GLOBAL",0)
    if gsm.get_oinosian_value() == 0:
        jump zm310_s0_ctor

    # IF ~  Global("Oinosian","GLOBAL",1)
    if gsm.get_oinosian_value() == 1:
        jump zm310_s18_ctor


label zm310_s0_ctor:
    scene bg mortuary_f3r3
    show zm310_img default at center_left_down
    jump zm310_s0


label zm310_s18_ctor:
    scene bg mortuary_f3r3
    show zm310_img default at center_left_down
    jump zm310_s18


label zm310_dispose:
    hide zm310_img
    jump graphics_menu
