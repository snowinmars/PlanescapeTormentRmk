init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm965_speak:
    # IF ~  NearbyDialog("Dmorte")
    if gsm.world_manager.get_in_party_morte():
        jump zm965_s0_ctor

    # IF ~  !NearbyDialog("Dmorte")
    if not gsm.world_manager.get_in_party_morte():
        jump zm965_s1_ctor


label zm965_s0_ctor:
    show dialogue_sprite_zm965_default at dialogue
    jump zm965_s0


label zm965_s1_ctor:
    show dialogue_sprite_zm965_default at dialogue
    jump zm965_s1


label zm965_dispose:
    scene onlayer dialogue
    jump map_dispatcher
