init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1201_speak:
    # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    if not gsm.world_manager.get_1201_note_retrieved():
        jump zm1201_s0_ctor

    # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    if gsm.world_manager.get_1201_note_retrieved():
        jump zm1201_s5_ctor

    jump zm1201_s5_ctor # TODO [snow]: should not be possible


label zm1201_s0_ctor:
    show dialogue_sprite_zm1201_default at dialogue
    $ dialogue_stack.append('zm1201_dispose')
    jump zm1201_s0


label zm1201_s5_ctor:
    show dialogue_sprite_zm1201_default at dialogue
    $ dialogue_stack.append('zm1201_dispose')
    jump zm1201_s5


label zm1201_dispose:
    scene onlayer dialogue
    jump map_dispatcher
