init 10 python:
    gsm = renpy.store.global_state_manager


label zm965_speak:
    # IF ~  NearbyDialog("Dmorte")
    if gsm.get_in_party_morte():
        jump zm965_s0_ctor

    # IF ~  !NearbyDialog("Dmorte")
    if not gsm.get_in_party_morte():
        jump zm965_s1_ctor


label zm965_s0_ctor:
    show zm965_img default at center_left_down
    jump zm965_s0


label zm965_s1_ctor:
    show zm965_img default at center_left_down
    jump zm965_s1


label zm965_dispose:
    hide zm965_img
    jump graphics_menu
