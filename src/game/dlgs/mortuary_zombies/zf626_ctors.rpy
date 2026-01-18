init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf626_speak:
    # - # IF ~  True()
    jump zf626_s0_ctor


label zf626_s0_ctor:
    show dialogue_sprite_zf626_default at dialogue
    $ dialogue_stack.append('zf626_dispose')
    jump zf626_s0


label zf626_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf626_default at dialogue
    $ dialogue_stack.append('zf626_dispose')
    jump zf626_s3


label zf626_dispose:
    scene onlayer dialogue
    jump map_dispatcher
