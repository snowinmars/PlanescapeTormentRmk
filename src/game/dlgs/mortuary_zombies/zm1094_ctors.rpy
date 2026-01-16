init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1094_speak:
    # IF ~  Global("Asonje","GLOBAL",0)
    if gsm.world_manager.get_asonje_value() == 0:
        jump zm1094_s0_ctor

    # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    if  gsm.world_manager.get_asonje_value() > 0 and \
        gsm.world_manager.get_asonje_value() < 3:
        jump zm1094_s26_ctor

    # IF ~  Global("Asonje","GLOBAL",3)
    if gsm.world_manager.get_asonje_value() == 3:
        jump zm1094_s27_ctor

    jump zm1094_s27_ctor # TODO [snow]: should not be possible


label zm1094_s0_ctor:
    show dialogue_sprite_zm1094_default at dialogue
    jump zm1094_s0


label zm1094_s26_ctor:
    show dialogue_sprite_zm1094_default at dialogue
    jump zm1094_s26


label zm1094_s27_ctor:
    show dialogue_sprite_zm1094_default at dialogue
    jump zm1094_s27


label zm1094_dispose:
    scene onlayer dialogue
    jump map_dispatcher
