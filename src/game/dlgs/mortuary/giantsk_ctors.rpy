init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label giantsk_speak:
    # IF ~  True()
    jump giantsk_s0_ctor


label giantsk_s0_ctor:
    show dialogue_sprite_giantsk_default at dialogue
    $ dialogue_stack.append('giantsk_dispose')
    jump giantsk_s0


label giantsk_dispose:
    scene onlayer dialogue
    jump map_dispatcher
