init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_giantsk:
    $ renpy.show_screen('screen_narrat')

    # IF ~  True()
    jump ctor_giantsk_s0


label ctor_giantsk_s0:
    show dialogue_sprite_giantsk_default at dialogue
    $ dialogue_stack.append('giantsk_dispose')
    jump giantsk_s0


label giantsk_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
