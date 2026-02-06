init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_deionarra:
    $ renpy.show_screen('screen_narrat')

    # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    if  gsm.world_manager.get_deionarra() == 0 and \
        gsm.locations_manager.get_current_internal() != 'AR1203' and \
        gsm.locations_manager.get_current_internal() != 'AR1200':
        jump ctor_deionarra_s1

    # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    if  gsm.world_manager.get_deionarra() == 2 and \
        gsm.locations_manager.get_current_internal() != 'AR1203' and \
        gsm.locations_manager.get_current_internal() != 'AR1200':
        jump ctor_deionarra_s4

    # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    if  gsm.world_manager.get_deionarra() == 1 and \
        gsm.locations_manager.get_current_internal() != 'AR1203' and \
        gsm.locations_manager.get_current_internal() != 'AR1200':
        jump ctor_deionarra_s5

    # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    if  gsm.world_manager.get_deionarra() == 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1203':
        jump ctor_deionarra_s49

    # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    if  gsm.world_manager.get_deionarra() > 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1203':
        jump ctor_deionarra_s50

    # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    if  gsm.locations_manager.get_current_internal() == 'AR1200' and \
        gsm.world_manager.get_1200_cut_scene_2():
        jump ctor_deionarra_s62

    # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    if  gsm.world_manager.get_deionarra() == 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1200' and \
        not gsm.world_manager.get_1200_cut_scene_2():
        jump ctor_deionarra_s60

    # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    if  gsm.world_manager.get_deionarra() > 0 and \
        gsm.locations_manager.get_current_internal() == 'AR1200' and \
        not gsm.world_manager.get_1200_cut_scene_2():
        jump ctor_deionarra_s61

    jump ctor_deionarra_s61 # NOTE [snow]: should not be possible


label ctor_deionarra_s1:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s1


label ctor_deionarra_s4:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s4


label ctor_deionarra_s5:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s5


label ctor_deionarra_s49:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s49


label ctor_deionarra_s50:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s50


label ctor_deionarra_s60:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s60


label ctor_deionarra_s61:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s61


label ctor_deionarra_s62:
    show dialogue_sprite_deionarra_default at dialogue
    play music deionarra if_changed
    $ dialogue_stack.append('deionarra_dispose')
    jump deionarra_s62


label deionarra_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    stop music
    return
