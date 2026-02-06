init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_dust:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Appearance","GLOBAL",1)
    if gsm.world_manager.get_appearance() == 1:
        jump ctor_dust_s0

    # IF ~  Global("Appearance","GLOBAL",2)
    if gsm.world_manager.get_appearance() == 2:
        jump ctor_dust_s22

    # IF ~  Global("Appearance","GLOBAL",0)
    if gsm.world_manager.get_appearance() == 0:
        jump ctor_dust_s51

    jump ctor_dust_s40


label ctor_dust_s0:
    show dialogue_sprite_dust_default at dialogue
    $ dialogue_stack.append('dust_dispose')
    jump dust_s0


label ctor_dust_s22:
    show dialogue_sprite_dust_default at dialogue
    $ dialogue_stack.append('dust_dispose')
    jump dust_s22


label ctor_dust_s38: # -
    show dialogue_sprite_dust_default at dialogue
    $ dialogue_stack.append('dust_dispose')
    jump dust_s38


label ctor_dust_s40:
    show dialogue_sprite_dust_default at dialogue
    $ dialogue_stack.append('dust_dispose')
    jump dust_s40


label ctor_dust_s51:
    show dialogue_sprite_dust_default at dialogue
    $ dialogue_stack.append('dust_dispose')
    jump dust_s51


label dust_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
