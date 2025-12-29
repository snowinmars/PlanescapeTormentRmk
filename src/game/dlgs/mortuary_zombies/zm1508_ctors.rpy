init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm1508_speak:
    # - # IF ~  True()
    jump zm1508_s0_ctor


label zm1508_s0_ctor:
    show zm1508_img default at center_left_down
    jump zm1508_s0


label zm1508_dispose:
    hide zm1508_img
    jump  map_dispatcher
