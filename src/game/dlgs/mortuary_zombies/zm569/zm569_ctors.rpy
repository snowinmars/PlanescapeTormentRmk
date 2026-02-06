init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm569:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm569_s0


label ctor_zm569_s0:
    show dialogue_sprite_zm569_default at dialogue
    $ dialogue_stack.append('zm569_dispose')
    jump zm569_s0


label zm569_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
