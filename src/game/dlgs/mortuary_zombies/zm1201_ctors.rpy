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


label zm1201_s0_ctor:
    show zm1201_img default at center_left_down
    jump zm1201_s0


label zm1201_s5_ctor:
    show zm1201_img default at center_left_down
    jump zm1201_s5


label zm1201_dispose:
    hide zm1201_img
    jump  map_dispatcher
