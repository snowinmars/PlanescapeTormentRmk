init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label s863_speak:
    # IF ~  !HasItem("DRemind","S863")
    if gsm.world_manager.get_has_dremind():
        jump s863_s0_ctor

    # IF ~  HasItem("DRemind","S863")
    if not gsm.world_manager.get_has_dremind():
        jump s863_s8_ctor


label s863_s0_ctor:
    show s863_img default at center_left_down
    jump s863_s0


label s863_s7_ctor: # - # IF ~  False()
    show s863_img default at center_left_down
    jump s863_s7


label s863_s8_ctor:
    show s863_img default at center_left_down
    jump s863_s8


label s863_dispose:
    hide s863_img
    jump graphics_menu
