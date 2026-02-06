init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager
    glem = runtime.global_log_events_manager

label speak_dhall:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Dhall","GLOBAL",0)
    if gsm.world_manager.get_dhall() == 0:
        jump ctor_dhall_s5

    # IF ~  Global("Dhall","GLOBAL",1)
    if gsm.world_manager.get_dhall() == 1:
        jump ctor_dhall_s40

    jump ctor_dhall_s40 # NOTE [snow]: should not be possible


label ctor_dhall_s5:
    show dialogue_sprite_dhall_default at dialogue
    $ dialogue_stack.append('dhall_dispose')
    jump dhall_s5


label ctor_dhall_s39: # -
    show dialogue_sprite_dhall_default at dialogue
    $ dialogue_stack.append('dhall_dispose')
    jump dhall_s39


label ctor_dhall_s40:
    show dialogue_sprite_dhall_default at dialogue
    $ dialogue_stack.append('dhall_dispose')
    jump dhall_s40


label dhall_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
