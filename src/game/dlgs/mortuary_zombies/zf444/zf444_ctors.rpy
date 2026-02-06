init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zf444:
    $ renpy.show_screen('screen_narrat')

    # - # IF ~  True()
    jump ctor_zf444_s0


label ctor_zf444_s0:
    show dialogue_sprite_zf444_default at dialogue
    $ dialogue_stack.append('zf444_dispose')
    jump zf444_s0


label ctor_zf444_s3: # - # IF ~  False()
    show dialogue_sprite_zf444_default at dialogue
    $ dialogue_stack.append('zf444_dispose')
    jump zf444_s3


label zf444_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
