init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm825_speak:
    # - # IF ~  True()
    jump zm825_s0_ctor


label zm825_s0_ctor:
    show dialogue_sprite_zm825_default at dialogue
    jump zm825_s0


label zm825_dispose:
    scene onlayer dialogue
    jump map_dispatcher
