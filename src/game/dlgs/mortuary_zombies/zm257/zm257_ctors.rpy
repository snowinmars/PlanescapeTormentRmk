init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm257:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm257_s0


label ctor_zm257_s0:
    show dialogue_sprite_zm257_default at dialogue
    $ dialogue_stack.append('zm257_dispose')
    jump zm257_s0


label zm257_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
