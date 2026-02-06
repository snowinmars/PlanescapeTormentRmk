init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm396:
    $ renpy.show_screen('screen_narrat')

    # IF ~  HasItem("Bandage","ZM396")
    if not gsm.world_manager.get_has_bandages_zm396():
        jump ctor_zm396_s0

    # IF ~  !HasItem("Bandage","ZM396")
    if gsm.world_manager.get_has_bandages_zm396():
        jump ctor_zm396_s4

    jump ctor_zm396_s4 # NOTE [snow]: should not be possible


label ctor_zm396_s0:
    show dialogue_sprite_zm396_default at dialogue
    $ dialogue_stack.append('zm396_dispose')
    jump zm396_s0


label ctor_zm396_s4:
    show dialogue_sprite_zm396_default at dialogue
    $ dialogue_stack.append('zm396_dispose')
    jump zm396_s4


label zm396_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
