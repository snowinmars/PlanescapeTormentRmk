init 10 python:
    gsm = renpy.store.global_state_manager


label dustfem_speak:
    # IF ~  Global("Appearance","GLOBAL",1)
    if gsm.get_appearance() == 1:
        jump dustfem_s0_ctor

    # IF ~  Global("Appearance","GLOBAL",2)
    if gsm.get_appearance() == 2:
        jump dustfem_s22_ctor

    # IF ~  Global("Appearance","GLOBAL",0)
    if gsm.get_appearance() == 0:
        jump dustfem_s51_ctor

    jump dustfem_s40_ctor


label dustfem_s0_ctor:
    show dustfem_img default at center_left_down
    jump dustfem_s0


label dustfem_s22_ctor:
    show dustfem_img default at center_left_down
    jump dustfem_s22


label dustfem_s38_ctor: # -
    show dustfem_img default at center_left_down
    jump dustfem_s38


label dustfem_s40_ctor:
    show dustfem_img default at center_left_down
    jump dustfem_s40


label dustfem_s51_ctor:
    show dustfem_img default at center_left_down
    jump dustfem_s51


label dustfem_dispose:
    hide dustfem_img
    jump graphics_menu
