init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm475_speak:
    # - # IF ~  True()
    jump zm475_s0_ctor


label zm475_s0_ctor:
    show dialogue_sprite_zm475_default at dialogue
    $ dialogue_stack.append('zm475_dispose')
    jump zm475_s0


label zm475_dispose:
    scene onlayer dialogue
    jump map_dispatcher
