init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label soego_speak:
    # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_soego_exposed():
        jump soego_s95_ctor

    # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_met_soego():
        jump soego_s82_ctor

    # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_cr_vic_value() == 1:
        jump soego_s79_ctor

    # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    if  gsm.world_manager.get_dustman_initiation() == 5 and \
        gsm.world_manager.get_soego_value() < 3 and \
        gsm.world_manager.get_cr_vic_value() != 1:
        jump soego_s108_ctor

    # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1500' and \
        gsm.world_manager.get_cr_vic_value() != 1:
        jump soego_s63_ctor

    # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_gate_open() and \
        gsm.world_manager.get_gate_cut_scene():
        jump soego_s12_ctor

    # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_gate_open():
        jump soego_s58_ctor

    # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_soego_value() == 1 and \
        not gsm.world_manager.get_gate_open():
        jump soego_s59_ctor

    # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_appearance() == 1 and \
        not gsm.world_manager.get_gate_open() and \
        gsm.world_manager.get_soego_value() == 0:
        jump soego_s0_ctor

    # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    if  gsm.locations_manager.get_current_internal() == 'AR0201' and \
        gsm.world_manager.get_appearance() != 1 and \
        not gsm.world_manager.get_gate_open() and \
        gsm.world_manager.get_soego_value() == 0:
        jump soego_s38_ctor


label soego_s0_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s0


label soego_s10_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s10


label soego_s12_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s12


label soego_s38_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s38


label soego_s58_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s58


label soego_s59_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s59


label soego_s63_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s63


label soego_s75_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s75


label soego_s76_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s76


label soego_s79_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s79


label soego_s82_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s82


label soego_s85_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s85


label soego_s86_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s86


label soego_s87_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s87


label soego_s95_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s95


label soego_s96_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s96


label soego_s98_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s98


label soego_s99_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s99


label soego_s102_ctor: # -
    show dialogue_sprite_soego_default at dialogue
    jump soego_s102


label soego_s108_ctor:
    show dialogue_sprite_soego_default at dialogue
    jump soego_s108


label soego_dispose:
    scene onlayer dialogue
    jump map_dispatcher
