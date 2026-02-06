init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm463:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm463_s0


label ctor_zm463_s0:
    show dialogue_sprite_zm463_default at dialogue
    $ dialogue_stack.append('zm463_dispose')
    jump zm463_s0


label zm463_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
