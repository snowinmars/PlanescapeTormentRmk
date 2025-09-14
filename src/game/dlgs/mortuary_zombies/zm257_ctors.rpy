init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm257_speak:
    # - # IF ~  True()
    jump zm257_s0_ctor


label zm257_s0_ctor:
    show zm257_img default at center_left_down
    jump zm257_s0


label zm257_dispose:
    hide zm257_img
    jump graphics_menu
