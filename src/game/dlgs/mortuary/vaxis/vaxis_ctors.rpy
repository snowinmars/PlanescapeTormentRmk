init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_vaxis:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Vaxis","GLOBAL",0)
    if gsm.world_manager.get_vaxis() == 0:
        jump ctor_vaxis_s0

    # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    if gsm.world_manager.get_vaxis() > 0:
        jump ctor_vaxis_s57

    jump ctor_vaxis_s57 # NOTE [snow]: should not be possible


label ctor_vaxis_s0:
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s0


label ctor_vaxis_s1: # IF ~  False()
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s1


label ctor_vaxis_s40: # -
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s40


label ctor_vaxis_s41: # -
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s41


label ctor_vaxis_s57:
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s57


label ctor_vaxis_s69: # -
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s69


label ctor_vaxis_s73: # -
    show dialogue_sprite_vaxis_default at dialogue
    $ dialogue_stack.append('vaxis_dispose')
    jump vaxis_s73


label vaxis_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
