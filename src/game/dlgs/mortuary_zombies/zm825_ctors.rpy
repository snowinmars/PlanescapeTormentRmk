init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label zm825_speak:
    # - # IF ~  True()
    jump zm825_s0_ctor


label zm825_s0_ctor:
    show zm825_img default at center_left_down
    jump zm825_s0


label zm825_dispose:
    hide zm825_img
    jump graphics_menu
