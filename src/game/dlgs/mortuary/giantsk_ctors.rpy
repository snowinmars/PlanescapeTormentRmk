init 10 python:
    gsm = renpy.store.global_settings_manager


label giantsk_speak:
    # IF ~  True()
    jump giantsk_s0_ctor


label giantsk_s0_ctor:
    scene bg mortuary_f1rc
    show giantsk_img default at center_left_down
    jump giantsk_s0


label giantsk_dispose:
    hide giantsk_img
    jump graphics_menu
