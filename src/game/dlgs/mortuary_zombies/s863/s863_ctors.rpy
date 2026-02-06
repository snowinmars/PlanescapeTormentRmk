init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_s863:
    $ renpy.show_screen('screen_narrat')

    # IF ~  !HasItem("DRemind","S863")
    if gsm.inventory_items_manager.is_own_item('has_dremind'):
        jump ctor_s863_s0

    # IF ~  HasItem("DRemind","S863")
    if not gsm.inventory_items_manager.is_own_item('has_dremind'):
        jump ctor_s863_s8

    jump ctor_s863_s8 # NOTE [snow]: should not be possible


label ctor_s863_s0:
    show dialogue_sprite_s863_default at dialogue
    $ dialogue_stack.append('s863_dispose')
    jump s863_s0


label ctor_s863_s7: # - # IF ~  False()
    show dialogue_sprite_s863_default at dialogue
    $ dialogue_stack.append('s863_dispose')
    jump s863_s7


label ctor_s863_s8:
    show dialogue_sprite_s863_default at dialogue
    $ dialogue_stack.append('s863_dispose')
    jump s863_s8


label s863_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
