init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm985_speak:
    # IF ~  Global("Topple_985","GLOBAL",0)
    if not gsm.world_manager.get_topple_985():
        jump zm985_s0_ctor

    # TODO [snow]: that's a storytelling bug:
    # the leg should be replaced after a while, not instant
    # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    if gsm.world_manager.get_topple_985():
        jump zm985_s5_ctor

    jump zm985_s5_ctor # TODO [snow]: should not be possible


label zm985_s0_ctor:
    show dialogue_sprite_zm985_default at dialogue
    $ dialogue_stack.append('zm985_dispose')
    jump zm985_s0


label zm985_s5_ctor:
    show dialogue_sprite_zm985_default at dialogue
    $ dialogue_stack.append('zm985_dispose')
    jump zm985_s5


label zm985_dispose:
    scene onlayer dialogue
    jump map_dispatcher
