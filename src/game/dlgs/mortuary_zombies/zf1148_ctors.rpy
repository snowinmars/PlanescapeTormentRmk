init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zf1148_speak:
    # - # IF ~  True()
    jump zf1148_s0_ctor


label zf1148_s0_ctor:
    show dialogue_sprite_zf1148_default at dialogue
    $ dialogue_stack.append('zf1148_dispose')
    jump zf1148_s0


label zf1148_s3_ctor: # - # IF ~  False()
    show dialogue_sprite_zf1148_default at dialogue
    $ dialogue_stack.append('zf1148_dispose')
    jump zf1148_s3


label zf1148_dispose:
    scene onlayer dialogue
    jump map_dispatcher
