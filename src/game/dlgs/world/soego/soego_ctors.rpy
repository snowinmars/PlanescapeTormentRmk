init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_soego:
    $ renpy.show_screen('screen_narrat')

    # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_soego_exposed():
        jump ctor_soego_s95

    # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_met_soego():
        jump ctor_soego_s82

    # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_cr_vic() == 1:
        jump ctor_soego_s79

    # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    if  gsm.world_manager.get_dustman_initiation() == 5 and \
        gsm.world_manager.get_soego() < 3 and \
        gsm.world_manager.get_cr_vic() != 1:
        jump ctor_soego_s108

    # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_cr_vic() != 1:
        jump ctor_soego_s63

    # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_gate_open() and \
        gsm.world_manager.get_gate_cut_scene():
        jump ctor_soego_s12

    # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_gate_open():
        jump ctor_soego_s58

    # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_soego() == 1 and \
        not gsm.world_manager.get_gate_open():
        jump ctor_soego_s59

    # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_appearance() == 1 and \
        not gsm.world_manager.get_gate_open() and \
        gsm.world_manager.get_soego() == 0:
        jump ctor_soego_s0

    # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_appearance() != 1 and \
        not gsm.world_manager.get_gate_open() and \
        gsm.world_manager.get_soego() == 0:
        jump ctor_soego_s38

    jump ctor_soego_s38 # NOTE [snow]: should not be possible


label ctor_soego_s0:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s0


label ctor_soego_s10: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s10


label ctor_soego_s12:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s12


label ctor_soego_s38:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s38


label ctor_soego_s58:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s58


label ctor_soego_s59:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s59


label ctor_soego_s63:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s63


label ctor_soego_s75: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s75


label ctor_soego_s76: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s76


label ctor_soego_s79:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s79


label ctor_soego_s82:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s82


label ctor_soego_s85: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s85


label ctor_soego_s86: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s86


label ctor_soego_s87: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s87


label ctor_soego_s95:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s95


label ctor_soego_s96: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s96


label ctor_soego_s98: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s98


label ctor_soego_s99: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s99


label ctor_soego_s102: # -
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s102


label ctor_soego_s108:
    show dialogue_sprite_soego_default at dialogue
    $ dialogue_stack.append('soego_dispose')
    jump soego_s108


label soego_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    return
