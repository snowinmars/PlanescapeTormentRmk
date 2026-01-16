init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm506_speak:
    # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    if not gsm.world_manager.get_has_506_thread():
        jump zm506_s0_ctor

    # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    if gsm.world_manager.get_has_506_thread():
        jump zm506_s5_ctor

    jump zm506_s5_ctor # TODO [snow]: should not be possible


label zm506_s0_ctor:
    show dialogue_sprite_zm506_default at dialogue
    jump zm506_s0


label zm506_s5_ctor:
    show dialogue_sprite_zm506_default at dialogue
    jump zm506_s5


label zm506_dispose:
    scene onlayer dialogue
    jump map_dispatcher
