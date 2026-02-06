init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_dustfem:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Appearance","GLOBAL",1)
    if gsm.world_manager.get_appearance() == 1:
        jump ctor_dustfem_s0

    # IF ~  Global("Appearance","GLOBAL",2)
    if gsm.world_manager.get_appearance() == 2:
        jump ctor_dustfem_s22

    # IF ~  Global("Appearance","GLOBAL",0)
    if gsm.world_manager.get_appearance() == 0:
        jump ctor_dustfem_s51

    jump ctor_dustfem_s40


label ctor_dustfem_s0:
    show dialogue_sprite_dustfem_default at dialogue
    $ dialogue_stack.append('dustfem_dispose')
    jump dustfem_s0


label ctor_dustfem_s22:
    show dialogue_sprite_dustfem_default at dialogue
    $ dialogue_stack.append('dustfem_dispose')
    jump dustfem_s22


label ctor_dustfem_s38: # -
    show dialogue_sprite_dustfem_default at dialogue
    $ dialogue_stack.append('dustfem_dispose')
    jump dustfem_s38


label ctor_dustfem_s40:
    show dialogue_sprite_dustfem_default at dialogue
    $ dialogue_stack.append('dustfem_dispose')
    jump dustfem_s40


label ctor_dustfem_s51:
    show dialogue_sprite_dustfem_default at dialogue
    $ dialogue_stack.append('dustfem_dispose')
    jump dustfem_s51


label dustfem_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
