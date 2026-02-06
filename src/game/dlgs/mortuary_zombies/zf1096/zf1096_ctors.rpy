init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf1096:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf1096_s0


label ctor_zf1096_s0:
    show dialogue_sprite_zf1096_default at dialogue
    $ dialogue_stack.append('zf1096_dispose')
    jump zf1096_s0


label ctor_zf1096_s3: # - # IF ~  False()
    show dialogue_sprite_zf1096_default at dialogue
    $ dialogue_stack.append('zf1096_dispose')
    jump zf1096_s3


label zf1096_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
