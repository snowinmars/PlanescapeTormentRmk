init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s748_speak:
    # - # IF ~  True()
    jump s748_s0_ctor


label s748_s0_ctor:
    show dialogue_sprite_s748_default at dialogue
    $ dialogue_stack.append('s748_dispose')
    jump s748_s0


label s748_s7_ctor: # -
    show dialogue_sprite_s748_default at dialogue
    $ dialogue_stack.append('s748_dispose')
    jump s748_s7


label s748_dispose:
    scene onlayer dialogue
    jump map_dispatcher
