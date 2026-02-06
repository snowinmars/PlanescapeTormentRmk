init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm506:
    $ renpy.show_screen('screen_narrat')

    # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    if not gsm.world_manager.get_has_506_thread():
        jump ctor_zm506_s0

    # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    if gsm.world_manager.get_has_506_thread():
        jump ctor_zm506_s5

    jump ctor_zm506_s5 # NOTE [snow]: should not be possible


label ctor_zm506_s0:
    show dialogue_sprite_zm506_default at dialogue
    $ dialogue_stack.append('zm506_dispose')
    jump zm506_s0


label ctor_zm506_s5:
    show dialogue_sprite_zm506_default at dialogue
    $ dialogue_stack.append('zm506_dispose')
    jump zm506_s5


label zm506_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
