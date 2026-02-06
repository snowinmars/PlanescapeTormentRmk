init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm475:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm475_s0


label ctor_zm475_s0:
    show dialogue_sprite_zm475_default at dialogue
    $ dialogue_stack.append('zm475_dispose')
    jump zm475_s0


label zm475_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
