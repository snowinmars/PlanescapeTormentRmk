init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf891_speak:
    # - # IF ~  True()
    jump zf891_s0_ctor


label zf891_s0_ctor:
    show dialogue_sprite_zf891_default at dialogue
    $ dialogue_stack.append('zf891_dispose')
    jump zf891_s0


label zf891_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf891_default at dialogue
    $ dialogue_stack.append('zf891_dispose')
    jump zf891_s3


label zf891_dispose:
    scene onlayer dialogue
    jump map_dispatcher
