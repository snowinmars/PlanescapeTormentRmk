init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf1148:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf1148_s0


label ctor_zf1148_s0:
    show dialogue_sprite_zf1148_default at dialogue
    $ dialogue_stack.append('zf1148_dispose')
    jump zf1148_s0


label ctor_zf1148_s3: # - # IF ~  False()
    show dialogue_sprite_zf1148_default at dialogue
    $ dialogue_stack.append('zf1148_dispose')
    jump zf1148_s3


label zf1148_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
