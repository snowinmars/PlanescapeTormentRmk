init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_quill:
    $ renpy.show_screen('screen_narrat')

    jump ctor_quill_s0


label ctor_quill_s0:
    show quill_img default at center_left_down
    $ dialogue_stack.append('quill_dispose')
    jump quill_s0


label quill_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
