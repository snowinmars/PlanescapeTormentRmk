init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm310:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Oinosian","GLOBAL",0)
    if gsm.world_manager.get_oinosian() == 0:
        jump ctor_zm310_s0

    # IF ~  Global("Oinosian","GLOBAL",1)
    if gsm.world_manager.get_oinosian() == 1:
        jump ctor_zm310_s18

    jump ctor_zm310_s18 # NOTE [snow]: should not be possible


label ctor_zm310_s0:
    show dialogue_sprite_zm310_default at dialogue
    $ dialogue_stack.append('zm310_dispose')
    jump zm310_s0


label ctor_zm310_s18:
    show dialogue_sprite_zm310_default at dialogue
    $ dialogue_stack.append('zm310_dispose')
    jump zm310_s18


label zm310_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
