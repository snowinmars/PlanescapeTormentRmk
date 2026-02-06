init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_morte2:
    $ renpy.show_screen('screen_narrat')

    # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    if  gsm.world_manager.get_mortuary_walkthrough() == 1 and \
        gsm.world_manager.get_in_party_morte():
        jump ctor_morte2_s0

    # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    if  gsm.world_manager.get_mortuary_walkthrough() != 0 and \
        gsm.world_manager.get_mortuary_walkthrough() != 1 and \
        gsm.world_manager.get_mortuary_walkthrough() != 3 and \
        gsm.world_manager.get_in_party_morte():
        jump ctor_morte2_s12

    # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    # Manually changed logic
    if  gsm.locations_manager.get_location() == 'mortuary_f2r3' and \
        gsm.world_manager.get_mortuary_walkthrough() == 3 and \
        gsm.world_manager.get_in_party_morte() and \
        not gsm.world_manager.get_morte_mortuary_walkthrough_2(): # custom fix to prevent several jumps into this label from Dhall room
        jump ctor_morte2_s31

    # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    if  not gsm.world_manager.get_in_party_morte():
        jump ctor_morte2_s27

    jump ctor_morte2_s12


label ctor_morte2_s0:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte2_dispose')
    jump morte2_s0


label ctor_morte2_s12:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte2_dispose')
    jump morte2_s12


label ctor_morte2_s27:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte2_dispose')
    jump morte2_s27


label ctor_morte2_s31:
    show dialogue_sprite_morte_default at dialogue
    $ dialogue_stack.append('morte2_dispose')
    jump morte2_s31


label morte2_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
