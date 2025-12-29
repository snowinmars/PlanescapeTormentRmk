init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm732_speak:
    # IF ~  !HasItem("TomeBA","ZM732")
    if gsm.world_manager.get_has_tome_ba():
        jump zm732_s0_ctor

    # IF ~  HasItem("TomeBA","ZM732")
    if not gsm.world_manager.get_has_tome_ba():
        jump zm732_s3_ctor


label zm732_s0_ctor:
    show zm732_img default at center_left_down
    jump zm732_s0


label zm732_s3_ctor:
    show zm732_img default at center_left_down
    jump zm732_s3


label zm732_dispose:
    hide zm732_img
    jump  map_dispatcher
