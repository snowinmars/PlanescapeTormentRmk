init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm732:
    $ renpy.show_screen('screen_narrat')

    # IF ~  !HasItem("TomeBA","ZM732")
    if gsm.inventory_items_manager.is_own_item('has_tome_ba'):
        jump ctor_zm732_s0

    # IF ~  HasItem("TomeBA","ZM732")
    if not gsm.inventory_items_manager.is_own_item('has_tome_ba'):
        jump ctor_zm732_s3

    jump ctor_zm732_s3 # NOTE [snow]: should not be possible


label ctor_zm732_s0:
    show dialogue_sprite_zm732_default at dialogue
    $ dialogue_stack.append('zm732_dispose')
    jump zm732_s0


label ctor_zm732_s3:
    show dialogue_sprite_zm732_default at dialogue
    $ dialogue_stack.append('zm732_dispose')
    jump zm732_s3


label zm732_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
