init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_s748:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_s748_s0


label ctor_s748_s0:
    show dialogue_sprite_s748_default at dialogue
    $ dialogue_stack.append('s748_dispose')
    jump s748_s0


label ctor_s748_s7: # -
    show dialogue_sprite_s748_default at dialogue
    $ dialogue_stack.append('s748_dispose')
    jump s748_s7


label s748_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
