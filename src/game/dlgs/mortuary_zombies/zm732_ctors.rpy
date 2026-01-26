init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm732_speak:
    # IF ~  !HasItem("TomeBA","ZM732")
    if gsm.inventory_manager.is_own_item('has_tome_ba'):
        jump zm732_s0_ctor

    # IF ~  HasItem("TomeBA","ZM732")
    if not gsm.inventory_manager.is_own_item('has_tome_ba'):
        jump zm732_s3_ctor

    jump zm732_s3_ctor # NOTE [snow]: should not be possible


label zm732_s0_ctor:
    show dialogue_sprite_zm732_default at dialogue
    $ dialogue_stack.append('zm732_dispose')
    jump zm732_s0


label zm732_s3_ctor:
    show dialogue_sprite_zm732_default at dialogue
    $ dialogue_stack.append('zm732_dispose')
    jump zm732_s3


label zm732_dispose:
    scene onlayer dialogue
    jump map_dispatcher
