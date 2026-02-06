init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_xach:
    $ renpy.show_screen('screen_narrat')

    # IF ~  True()
    jump ctor_xach_s0


label ctor_xach_s0:
    show dialogue_sprite_xach_default at dialogue
    $ dialogue_stack.append('xach_dispose')
    jump xach_s0


label ctor_xach_s14: # -
    show dialogue_sprite_xach_default at dialogue
    $ dialogue_stack.append('xach_dispose')
    jump xach_s14


label ctor_xach_s15: # -
    show dialogue_sprite_xach_default at dialogue
    $ dialogue_stack.append('xach_dispose')
    jump xach_s15


label ctor_xach_s35: # -
    show dialogue_sprite_xach_default at dialogue
    $ dialogue_stack.append('xach_dispose')
    jump xach_s35


label xach_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
