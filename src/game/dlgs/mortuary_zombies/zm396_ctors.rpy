init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm396_speak:
    # IF ~  HasItem("Bandage","ZM396")
    if not gsm.world_manager.get_has_bandages_zm396():
        jump zm396_s0_ctor

    # IF ~  !HasItem("Bandage","ZM396")
    if gsm.world_manager.get_has_bandages_zm396():
        jump zm396_s4_ctor


label zm396_s0_ctor:
    show zm396_img default at center_left_down
    jump zm396_s0


label zm396_s4_ctor:
    show zm396_img default at center_left_down
    jump zm396_s4


label zm396_dispose:
    hide zm396_img
    jump  map_dispatcher
