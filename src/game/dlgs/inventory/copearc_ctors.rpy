init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label copearc_speak:
    jump copearc_s0_ctor


label copearc_s0_ctor:
    show copearc_img default at center_left_down
    jump copearc_s0


label copearc_dispose:
    hide copearc_img
    jump graphics_menu
