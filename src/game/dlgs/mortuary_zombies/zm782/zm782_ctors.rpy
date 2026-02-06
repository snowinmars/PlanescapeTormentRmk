init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm782:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm782_s0


label ctor_zm782_s0:
    show dialogue_sprite_zm782_default at dialogue
    $ dialogue_stack.append('zm782_dispose')
    jump zm782_s0


label zm782_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
