init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label giantsk_speak:
    # IF ~  True()
    jump giantsk_s0_ctor


label giantsk_s0_ctor:
    show giantsk_img default at center_left_down
    jump giantsk_s0


label giantsk_dispose:
    hide giantsk_img
    jump graphics_menu
