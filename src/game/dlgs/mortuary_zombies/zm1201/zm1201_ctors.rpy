init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm1201:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    if not gsm.world_manager.get_1201_note_retrieved():
        jump ctor_zm1201_s0

    # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    if gsm.world_manager.get_1201_note_retrieved():
        jump ctor_zm1201_s5

    jump ctor_zm1201_s5 # NOTE [snow]: should not be possible


label ctor_zm1201_s0:
    show dialogue_sprite_zm1201_default at dialogue
    $ dialogue_stack.append('zm1201_dispose')
    jump zm1201_s0


label ctor_zm1201_s5:
    show dialogue_sprite_zm1201_default at dialogue
    $ dialogue_stack.append('zm1201_dispose')
    jump zm1201_s5


label zm1201_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
