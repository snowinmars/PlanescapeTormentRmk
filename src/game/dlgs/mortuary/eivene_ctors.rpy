init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label eivene_speak:
    # IF ~  Global("EiVene","GLOBAL",0)
    if gsm.world_manager.get_eivene() == 0:
        jump eivene_s0_ctor

    # IF ~  Global("EiVene","GLOBAL",1)
    if gsm.world_manager.get_eivene() == 1:
        jump eivene_s15_ctor

    jump eivene_s15_ctor # NOTE [snow]: should not be possible


label eivene_s0_ctor:
    show dialogue_sprite_eivene_default at dialogue
    $ dialogue_stack.append('eivene_dispose')
    jump eivene_s0


label eivene_s15_ctor:
    show dialogue_sprite_eivene_default at dialogue
    $ dialogue_stack.append('eivene_dispose')
    jump eivene_s15


label eivene_s25_ctor: # -
    show dialogue_sprite_eivene_default at dialogue
    $ dialogue_stack.append('eivene_dispose')
    jump eivene_s25


label eivene_dispose:
    scene onlayer dialogue
    jump map_dispatcher

