init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s863_speak:
    # IF ~  !HasItem("DRemind","S863")
    if gsm.inventory_items_manager.is_own_item('has_dremind'):
        jump s863_s0_ctor

    # IF ~  HasItem("DRemind","S863")
    if not gsm.inventory_items_manager.is_own_item('has_dremind'):
        jump s863_s8_ctor

    jump s863_s8_ctor # NOTE [snow]: should not be possible


label s863_s0_ctor:
    show dialogue_sprite_s863_default at dialogue
    $ dialogue_stack.append('s863_dispose')
    jump s863_s0


label s863_s7_ctor: # - # IF ~  False()
    show dialogue_sprite_s863_default at dialogue
    $ dialogue_stack.append('s863_dispose')
    jump s863_s7


label s863_s8_ctor:
    show dialogue_sprite_s863_default at dialogue
    $ dialogue_stack.append('s863_dispose')
    jump s863_s8


label s863_dispose:
    scene onlayer dialogue
    jump map_dispatcher
