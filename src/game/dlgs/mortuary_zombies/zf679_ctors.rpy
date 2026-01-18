init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf679_speak:
    # - # IF ~  True()
    jump zf679_s0_ctor


label zf679_s0_ctor:
    show dialogue_sprite_zf679_default at dialogue
    $ dialogue_stack.append('zf679_dispose')
    jump zf679_s0


label zf679_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf679_default at dialogue
    $ dialogue_stack.append('zf679_dispose')
    jump zf679_s3


label zf679_dispose:
    scene onlayer dialogue
    jump map_dispatcher
