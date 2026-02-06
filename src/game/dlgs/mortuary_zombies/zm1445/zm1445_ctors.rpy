init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm1445:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zm1445_s0


label ctor_zm1445_s0:
    show dialogue_sprite_zm1445_default at dialogue
    $ dialogue_stack.append('zm1445_dispose')
    jump zm1445_s0


label zm1445_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
