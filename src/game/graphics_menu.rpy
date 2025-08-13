init 10 python:
    glm = renpy.store.global_location_manager


label graphics_menu:
    $ current_location = glm.get_location()
    if current_location == 'mortuary_f1r1':
        jump mortuary_f1r1_graphics_menu
    if current_location == 'mortuary_f1r2':
        jump mortuary_f1r2_graphics_menu
    if current_location == 'mortuary_f1r3':
        jump mortuary_f1r3_graphics_menu
    if current_location == 'mortuary_f1r4':
        jump mortuary_f1r4_graphics_menu
    if current_location == 'mortuary_f1rc':
        jump mortuary_f1rc_graphics_menu
    if current_location == 'mortuary_f2r1':
        jump mortuary_f2r1_graphics_menu
    if current_location == 'mortuary_f2r2':
        jump mortuary_f2r2_graphics_menu
    if current_location == 'mortuary_f2r3':
        jump mortuary_f2r3_graphics_menu
    if current_location == 'mortuary_f2r4':
        jump mortuary_f2r4_graphics_menu
    if current_location == 'mortuary_f2r5':
        jump mortuary_f2r5_graphics_menu
    if current_location == 'mortuary_f2r6':
        jump mortuary_f2r6_graphics_menu
    if current_location == 'mortuary_f2r7':
        jump mortuary_f2r7_graphics_menu
    if current_location == 'mortuary_f2r8':
        jump mortuary_f2r8_graphics_menu
    if current_location == 'mortuary_f3r1':
        jump mortuary_f3r1_graphics_menu
    if current_location == 'mortuary_f3r2':
        jump mortuary_f3r2_graphics_menu
    if current_location == 'mortuary_f3r3':
        jump mortuary_f3r3_graphics_menu
    if current_location == 'mortuary_f3r4':
        jump mortuary_f3r4_graphics_menu
    $ raise Exception(f"Unknown location '{current_location}'")