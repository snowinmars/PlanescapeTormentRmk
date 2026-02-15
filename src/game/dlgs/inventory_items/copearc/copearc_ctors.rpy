init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_copearc:
    $ renpy.show_screen('screen_narrat')

    jump ctor_copearc_s0


label ctor_copearc_s0:
    show dialogue_sprite_copearc_default at dialogue
    $ dialogue_stack.append('copearc_dispose')
    jump copearc_s0


label copearc_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
