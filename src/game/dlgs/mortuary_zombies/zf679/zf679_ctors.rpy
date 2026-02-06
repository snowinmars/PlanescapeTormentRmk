init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf679:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf679_s0


label ctor_zf679_s0:
    show dialogue_sprite_zf679_default at dialogue
    $ dialogue_stack.append('zf679_dispose')
    jump zf679_s0


label ctor_zf679_s3: # - # IF ~  False()
    show dialogue_sprite_zf679_default at dialogue
    $ dialogue_stack.append('zf679_dispose')
    jump zf679_s3


label zf679_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
