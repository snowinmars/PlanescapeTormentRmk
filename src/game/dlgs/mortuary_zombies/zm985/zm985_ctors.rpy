init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm985:
    $ renpy.show_screen('screen_narrat')

    # IF ~  Global("Topple_985","GLOBAL",0)
    if not gsm.world_manager.get_topple_985():
        jump ctor_zm985_s0

    # TODO [snow]: that's a storytelling bug:
    # the leg should be replaced after a while, not instant
    # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    if gsm.world_manager.get_topple_985():
        jump ctor_zm985_s5

    jump ctor_zm985_s5 # NOTE [snow]: should not be possible


label ctor_zm985_s0:
    show dialogue_sprite_zm985_default at dialogue
    $ dialogue_stack.append('zm985_dispose')
    jump zm985_s0


label ctor_zm985_s5:
    show dialogue_sprite_zm985_default at dialogue
    $ dialogue_stack.append('zm985_dispose')
    jump zm985_s5


label zm985_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher
