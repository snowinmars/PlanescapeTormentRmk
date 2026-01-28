init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label morte1_speak:
    # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    if  not gsm.world_manager.get_in_party_morte() and \
        gsm.world_manager.get_morte() > 0:
        jump morte1_s26_ctor

    # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    if  not gsm.world_manager.get_in_party_morte() and \
        gsm.world_manager.get_morte() == 0:
        jump morte1_s0_ctor

    # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    # Manually changed logic to extern
    # if  gsm.world_manager.get_mortuary_walkthrough() == 0 and \
    #     not gsm.inventory_items_manager.is_own_item('has_intro_key'):
    #     jump morte1_s24_ctor

    # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    if gsm.world_manager.get_mortuary_walkthrough() == 1:
        jump morte1_s30_ctor

    jump morte1_s30_ctor # NOTE [snow]: should not be possible


label morte1_s0_ctor:
    $ gsm.locations_manager.set_location('mortuary_f2r1')
    $ gsm.world_manager.set_in_party_morte(True)
    # show bg mortuary_f2_morte1_s0
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte1_dispose')
    jump morte1_s0


label morte1_s24_ctor:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte1_dispose')
    jump morte1_s24


label morte1_s26_ctor:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte1_dispose')
    jump morte1_s26


label morte1_s30_ctor:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte1_dispose')
    jump morte1_s30


label morte1_dispose:
    scene onlayer dialogue
    jump map_dispatcher
