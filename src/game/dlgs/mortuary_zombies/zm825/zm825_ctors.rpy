init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm825:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm825_s0


label ctor_zm825_s0:
    show dialogue_sprite_zm825_default at dialogue
    $ dialogue_stack.append('zm825_dispose')
    jump zm825_s0


label zm825_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
