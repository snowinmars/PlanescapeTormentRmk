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

    jump zm396_s4_ctor # NOTE [snow]: should not be possible


label zm396_s0_ctor:
    show dialogue_sprite_zm396_default at dialogue
    $ dialogue_stack.append('zm396_dispose')
    jump zm396_s0


label zm396_s4_ctor:
    show dialogue_sprite_zm396_default at dialogue
    $ dialogue_stack.append('zm396_dispose')
    jump zm396_s4


label zm396_dispose:
    scene onlayer dialogue
    jump map_dispatcher
