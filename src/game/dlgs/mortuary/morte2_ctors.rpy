init 10 python:
    gsm = renpy.store.global_settings_manager


label morte2_speak:
    # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    if  gsm.get_mortuary_walkthrough() == 1 and \
        gsm.get_in_party_morte():
        jump morte2_s0_ctor

    # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    if  gsm.get_mortuary_walkthrough() != 0 and \
        gsm.get_mortuary_walkthrough() != 1 and \
        gsm.get_mortuary_walkthrough() != 3 and \
        gsm.get_in_party_morte():
        jump morte2_s12_ctor

    # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    if  gsm.get_mortuary_walkthrough() == 3 and \
        gsm.get_in_party_morte():
        jump morte2_s31_ctor

    # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    if  not gsm.get_in_party_morte():
        jump morte2_s27_ctor


label morte2_s0_ctor:
    scene bg mortuary_f2r2
    show morte_img default at center_left_down
    jump morte2_s0


label morte2_s12_ctor:
    show morte_img default at center_left_down
    jump morte2_s12


label morte2_s27_ctor:
    show morte_img default at center_left_down
    jump morte2_s27


label morte2_s31_ctor:
    scene bg mortuary_f2r3
    show morte_img default at center_left_down
    jump morte2_s31


label morte2_dispose:
    hide morte_img
    jump graphics_menu
