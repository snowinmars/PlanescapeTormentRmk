init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_s1221:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_s1221_s0


label ctor_s1221_s0:
    show dialogue_sprite_s1221_default at dialogue
    $ dialogue_stack.append('s1221_dispose')
    jump s1221_s0


label ctor_s1221_s7: # - # IF ~  False()
    show dialogue_sprite_s1221_default at dialogue
    $ dialogue_stack.append('s1221_dispose')
    jump s1221_s7


label s1221_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
