init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label morte1_speak:
    # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    if  not gsm.get_in_party_morte() and \
        gsm.get_morte_value() > 0:
        jump morte1_s26_ctor

    # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    if  not gsm.get_in_party_morte() and \
        gsm.get_morte_value() == 0:
        jump morte1_s0_ctor

    # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    # Manually changed logic to extern
    # if  gsm.get_mortuary_walkthrough() == 0 and \
    #     not gsm.get_has_intro_key():
    #     jump morte1_s24_ctor

    # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    if gsm.get_mortuary_walkthrough() == 1:
        jump morte1_s30_ctor

    jump morte1_s30_ctor


label morte1_s0_ctor:
    $ gsm.locations_manager.set_location('mortuary_f2r1')
    $ gsm.set_in_party_morte(True)
    show morte_img default at center_left_down
    jump morte1_s0


label morte1_s24_ctor:
    show morte_img default at center_left_down
    jump morte1_s24


label morte1_s26_ctor:
    show morte_img default at center_left_down
    jump morte1_s26


label morte1_s30_ctor:
    show morte_img default at center_left_down
    jump morte1_s30


label morte1_dispose:
    hide morte_img
    jump graphics_menu
