init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm613:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm613_s0


label ctor_zm613_s0:
    show dialogue_sprite_zm613_default at dialogue
    $ dialogue_stack.append('zm613_dispose')
    jump zm613_s0


label zm613_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
