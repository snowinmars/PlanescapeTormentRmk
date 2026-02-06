init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf114:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf114_s0


label ctor_zf114_s0:
    show dialogue_sprite_zf114_default at dialogue
    $ dialogue_stack.append('zf114_dispose')
    jump zf114_s0


label ctor_zf114_s3: # - # IF ~  False()
    show dialogue_sprite_zf114_default at dialogue
    $ dialogue_stack.append('zf114_dispose')
    jump zf114_s3


label zf114_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
