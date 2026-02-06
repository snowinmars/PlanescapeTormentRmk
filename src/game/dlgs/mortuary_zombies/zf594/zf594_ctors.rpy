init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf594:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf594_s0


label ctor_zf594_s0:
    show dialogue_sprite_zf594_default at dialogue
    $ dialogue_stack.append('zf594_dispose')
    jump zf594_s0


label ctor_zf594_s3: # - # IF ~  False()
    show dialogue_sprite_zf594_default at dialogue
    $ dialogue_stack.append('zf594_dispose')
    jump zf594_s3


label zf594_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
