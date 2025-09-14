init 10 python:
    gsm = renpy.store.global_state_manager


label dhall_feather_speak:
    jump dhall_feather_s0_ctor


label dhall_feather_s0_ctor:
    show dhall_feather_img default at center_left_down
    jump dhall_feather_s0


label dhall_feather_dispose:
    jump graphics_menu
