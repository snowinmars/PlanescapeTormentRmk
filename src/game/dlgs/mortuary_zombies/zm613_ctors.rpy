init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm613_speak:
    # - # IF ~  True()
    jump zm613_s0_ctor


label zm613_s0_ctor:
    show dialogue_sprite_zm613_default at dialogue
    jump zm613_s0


label zm613_dispose:
    scene onlayer dialogue
    jump map_dispatcher
