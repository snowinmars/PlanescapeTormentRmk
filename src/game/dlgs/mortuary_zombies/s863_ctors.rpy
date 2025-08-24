init 10 python:
    gsm = renpy.store.global_settings_manager


label s42_speak:
    # IF ~  !HasItem("DRemind","S863")
    if gsm.get_has_dremind():
        jump s863_s0_ctor

    # IF ~  HasItem("DRemind","S863")
    if not gsm.get_has_dremind():
        jump s863_s8_ctor


label s863_s0_ctor:
    scene bg mortuary_f3r1
    show s863_img default at center_left_down
    jump s863_s0


label s863_s7_ctor: # - # IF ~  False()
    scene bg mortuary_f3r1
    show s863_img default at center_left_down
    jump s863_s7


label s863_s8_ctor:
    scene bg mortuary_f3r1
    show s863_img default at center_left_down
    jump s863_s8


label s863_dispose:
    hide s863_img
    jump graphics_menu

