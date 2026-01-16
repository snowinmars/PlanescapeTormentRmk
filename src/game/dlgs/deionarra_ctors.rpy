init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label deionarra_speak:
    # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    if  gsm.world_manager.get_deionarra_value() == 0 and \
        gsm.locations_manager.get_current_internal() != 'AR1203' and \
        gsm.locations_manager.get_current_internal() != 'AR1200':
        jump deionarra_s1_ctor

    # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    if  gsm.world_manager.get_deionarra_value() == 2 and \
        gsm.locations_manager.get_current_internal() != 'AR1203' and \
        gsm.locations_manager.get_current_internal() != 'AR1200':
        jump deionarra_s4_ctor

    # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    if  gsm.world_manager.get_deionarra_value() == 1 and \
        gsm.locations_manager.get_current_internal() != 'AR1203' and \
        gsm.locations_manager.get_current_internal() != 'AR1200':
        jump deionarra_s5_ctor

    # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    if  gsm.world_manager.get_deionarra_value() == 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1203':
        jump deionarra_s49_ctor

    # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    if  gsm.world_manager.get_deionarra_value() > 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1203':
        jump deionarra_s50_ctor

    # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1200' and \
        gsm.world_manager.get_1200_cut_scene_2():
        jump deionarra_s62_ctor

    # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    if  gsm.world_manager.get_deionarra_value() == 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1200' and \
        not gsm.world_manager.get_1200_cut_scene_2():
        jump deionarra_s60_ctor

    # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    if  gsm.world_manager.get_deionarra_value() > 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1200' and \
        not gsm.world_manager.get_1200_cut_scene_2():
        jump deionarra_s61_ctor

    jump deionarra_s61_ctor # TODO [snow]: should not be possible


label deionarra_s1_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s1


label deionarra_s4_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s4


label deionarra_s5_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s5


label deionarra_s49_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s49


label deionarra_s50_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s50


label deionarra_s60_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s60


label deionarra_s61_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s61


label deionarra_s62_ctor:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s62


label deionarra_dispose:
    scene onlayer dialogue
    stop music
    return
