init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm199:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm199_s0


label ctor_zm199_s0:
    show dialogue_sprite_zm199_default at dialogue
    $ dialogue_stack.append('zm199_dispose')
    jump zm199_s0


label zm199_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
