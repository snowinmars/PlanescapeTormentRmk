init 10 python:
    gsm = renpy.store.global_settings_manager


label zm732_speak:
    # IF ~  !HasItem("TomeBA","ZM732")
    if gsm.get_has_tome_ba():
        jump zm732_s0_ctor

    # IF ~  HasItem("TomeBA","ZM732")
    if not gsm.get_has_tome_ba():
        jump zm732_s3_ctor


label zm732_s0_ctor:
    scene bg mortuary_f1r4
    show zm732_img default at center_left_down
    jump zm732_s0


label zm732_s3_ctor:
    scene bg mortuary_f1r4
    show zm732_img default at center_left_down
    jump zm732_s3


label zm732_dispose:
    hide zm732_img
    jump graphics_menu
