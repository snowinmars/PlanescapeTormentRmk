init 10 python:
    gsm = renpy.store.global_settings_manager


label zm985_speak:
    # IF ~  Global("Topple_985","GLOBAL",0)
    if not gsm.get_topple_985():
        jump zm985_s0_ctor

    # TODO [snow]: that's a storytelling bug:
    # the leg should be replaced after a while, not instant
    # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    if gsm.get_topple_985():
        jump zm985_s5_ctor


label zm985_s0_ctor:
    scene bg mortuary_f2r5
    show zm985_img default at center_left_down
    jump zm985_s0


label zm985_s5_ctor:
    scene bg mortuary_f2r5
    show zm985_img default at center_left_down
    jump zm985_s5


label zm985_dispose:
    hide zm985_img
    jump graphics_menu
