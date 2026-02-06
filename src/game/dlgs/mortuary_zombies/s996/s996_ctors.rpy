init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_s996:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_s996_s0


label ctor_s996_s0:
    show dialogue_sprite_s996_default at dialogue
    $ dialogue_stack.append('s996_dispose')
    jump s996_s0


label ctor_s996_s7: # - # IF ~  False()
    show dialogue_sprite_s996_default at dialogue
    $ dialogue_stack.append('s996_dispose')
    jump s996_s7


label s996_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
