init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_s42:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_s42_s0


label ctor_s42_s0:
    show dialogue_sprite_s42_default at dialogue
    $ dialogue_stack.append('s42_dispose')
    jump s42_s0


label ctor_s42_s11: # -
    show dialogue_sprite_s42_default at dialogue
    $ dialogue_stack.append('s42_dispose')
    jump s42_s11


label s42_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
