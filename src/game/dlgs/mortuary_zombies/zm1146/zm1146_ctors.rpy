init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm1146:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Crispy","GLOBAL",0)
    if gsm.world_manager.get_crispy() == 0:
        jump ctor_zm1146_s0

    # IF ~  Global("Crispy","GLOBAL",1)
    if gsm.world_manager.get_crispy() == 1:
        jump ctor_zm1146_s20

    jump ctor_zm1146_s20 # NOTE [snow]: should not be possible


label ctor_zm1146_s0:
    show dialogue_sprite_zm1146_default at dialogue
    $ dialogue_stack.append('zm1146_dispose')
    jump zm1146_s0


label ctor_zm1146_s20:
    show dialogue_sprite_zm1146_default at dialogue
    $ dialogue_stack.append('zm1146_dispose')
    jump zm1146_s20


label zm1146_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
