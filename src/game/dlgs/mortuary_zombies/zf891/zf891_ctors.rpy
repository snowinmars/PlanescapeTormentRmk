init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf891:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf891_s0


label ctor_zf891_s0:
    show dialogue_sprite_zf891_default at dialogue
    $ dialogue_stack.append('zf891_dispose')
    jump zf891_s0


label ctor_zf891_s3: # - # IF ~  False()
    show dialogue_sprite_zf891_default at dialogue
    $ dialogue_stack.append('zf891_dispose')
    jump zf891_s3


label zf891_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
