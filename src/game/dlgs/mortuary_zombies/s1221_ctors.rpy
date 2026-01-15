init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s1221_speak:
    # - # IF ~  True()
    jump s1221_s0_ctor


label s1221_s0_ctor:
    show dialogue_sprite_s1221_default at dialogue
    jump s1221_s0


label s1221_s7_ctor: # - # IF ~  False()
    show dialogue_sprite_s1221_default at dialogue
    jump s1221_s7


label s1221_dispose:
    scene onlayer dialogue
    jump map_dispatcher
