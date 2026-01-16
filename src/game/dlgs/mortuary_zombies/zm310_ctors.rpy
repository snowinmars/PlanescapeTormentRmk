init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm310_speak:
    # IF ~  Global("Oinosian","GLOBAL",0)
    if gsm.world_manager.get_oinosian_value() == 0:
        jump zm310_s0_ctor

    # IF ~  Global("Oinosian","GLOBAL",1)
    if gsm.world_manager.get_oinosian_value() == 1:
        jump zm310_s18_ctor

    jump zm310_s18_ctor # TODO [snow]: should not be possible


label zm310_s0_ctor:
    show dialogue_sprite_zm310_default at dialogue
    jump zm310_s0


label zm310_s18_ctor:
    show dialogue_sprite_zm310_default at dialogue
    jump zm310_s18


label zm310_dispose:
    scene onlayer dialogue
    jump map_dispatcher
