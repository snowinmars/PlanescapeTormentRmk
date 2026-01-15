init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s996_speak:
    # - # IF ~  True()
    jump s996_s0_ctor


label s996_s0_ctor:
    show dialogue_sprite_s996_default at dialogue
    jump s996_s0


label s996_s7_ctor: # - # IF ~  False()
    show dialogue_sprite_s996_default at dialogue
    jump s996_s7


label s996_dispose:
    scene onlayer dialogue
    jump map_dispatcher
