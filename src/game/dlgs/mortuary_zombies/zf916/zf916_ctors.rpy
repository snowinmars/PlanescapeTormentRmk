init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf916:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf916_s0


label ctor_zf916_s0:
    show dialogue_sprite_zf916_default at dialogue
    $ dialogue_stack.append('zf916_dispose')
    jump zf916_s0


label ctor_zf916_s3: # - # IF ~  False()
    show dialogue_sprite_zf916_default at dialogue
    $ dialogue_stack.append('zf916_dispose')
    jump zf916_s3


label zf916_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
