init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm1041:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Bei","GLOBAL",0)
    if gsm.world_manager.get_bei() == 0:
        jump ctor_zm1041_s0

    # IF ~  Global("Bei","GLOBAL",1)
    if gsm.world_manager.get_bei() == 1:
        jump ctor_zm1041_s37

    jump ctor_zm1041_s37 # NOTE [snow]: should not be possible


label ctor_zm1041_s0:
    show dialogue_sprite_zm1041_default at dialogue
    $ dialogue_stack.append('zm1041_dispose')
    jump zm1041_s0


label ctor_zm1041_s35: # -
    show dialogue_sprite_zm1041_default at dialogue
    $ dialogue_stack.append('zm1041_dispose')
    jump zm1041_s35


label ctor_zm1041_s37:
    show dialogue_sprite_zm1041_default at dialogue
    $ dialogue_stack.append('zm1041_dispose')
    jump zm1041_s37


label zm1041_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
