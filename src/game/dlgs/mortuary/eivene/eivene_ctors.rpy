init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_eivene:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("EiVene","GLOBAL",0)
    if gsm.world_manager.get_eivene() == 0:
        jump ctor_eivene_s0

    # IF ~  Global("EiVene","GLOBAL",1)
    if gsm.world_manager.get_eivene() == 1:
        jump ctor_eivene_s15

    jump ctor_eivene_s15 # NOTE [snow]: should not be possible


label ctor_eivene_s0:
    show dialogue_sprite_eivene_default at dialogue
    $ dialogue_stack.append('eivene_dispose')
    jump eivene_s0


label ctor_eivene_s15:
    show dialogue_sprite_eivene_default at dialogue
    $ dialogue_stack.append('eivene_dispose')
    jump eivene_s15


label ctor_eivene_s25: # -
    show dialogue_sprite_eivene_default at dialogue
    $ dialogue_stack.append('eivene_dispose')
    jump eivene_s25


label eivene_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher

