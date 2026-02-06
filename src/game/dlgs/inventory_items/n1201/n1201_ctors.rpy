init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_n1201:
    $ renpy.show_screen('screen_narrat')

    jump ctor_n1201_s0


label ctor_n1201_s0:
    show n1201_img default at center_left_down
    $ dialogue_stack.append('n1201_dispose')
    jump n1201_s0


label n1201_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
