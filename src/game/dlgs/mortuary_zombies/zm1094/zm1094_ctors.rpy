init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm1094:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Asonje","GLOBAL",0)
    if gsm.world_manager.get_asonje() == 0:
        jump ctor_zm1094_s0

    # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    if  gsm.world_manager.get_asonje() > 0 and \
        gsm.world_manager.get_asonje() < 3:
        jump ctor_zm1094_s26

    # IF ~  Global("Asonje","GLOBAL",3)
    if gsm.world_manager.get_asonje() == 3:
        jump ctor_zm1094_s27

    jump ctor_zm1094_s27 # NOTE [snow]: should not be possible


label ctor_zm1094_s0:
    show dialogue_sprite_zm1094_default at dialogue
    $ dialogue_stack.append('zm1094_dispose')
    jump zm1094_s0


label ctor_zm1094_s26:
    show dialogue_sprite_zm1094_default at dialogue
    $ dialogue_stack.append('zm1094_dispose')
    jump zm1094_s26


label ctor_zm1094_s27:
    show dialogue_sprite_zm1094_default at dialogue
    $ dialogue_stack.append('zm1094_dispose')
    jump zm1094_s27


label zm1094_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
