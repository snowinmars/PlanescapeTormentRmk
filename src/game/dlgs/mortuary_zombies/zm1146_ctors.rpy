init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1146_speak:
    # IF ~  Global("Crispy","GLOBAL",0)
    if gsm.world_manager.get_crispy_value() == 0:
        jump zm1146_s0_ctor

    # IF ~  Global("Crispy","GLOBAL",1)
    if gsm.world_manager.get_crispy_value() == 1:
        jump zm1146_s20_ctor


label zm1146_s0_ctor:
    show dialogue_sprite_zm1146_default at dialogue
    jump zm1146_s0


label zm1146_s20_ctor:
    show dialogue_sprite_zm1146_default at dialogue
    jump zm1146_s20


label zm1146_dispose:
    scene onlayer dialogue
    jump map_dispatcher
