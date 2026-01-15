init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s42_speak:
    # - # IF ~  True()
    jump s42_s0_ctor


label s42_s0_ctor:
    show dialogue_sprite_s42_default at dialogue
    jump s42_s0


label s42_s11_ctor: # -
    show dialogue_sprite_s42_default at dialogue
    jump s42_s11


label s42_dispose:
    scene onlayer dialogue
    jump map_dispatcher
