init 10 python:
    from game.engine.runtime import (runtime)
    glm = runtime.global_locations_manager


label map_dispatcher:
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

    # if in_morutary_f2
    if current_location == 'mortuary_f2r1' or \
       current_location == 'mortuary_f2r2' or \
       current_location == 'mortuary_f2r3' or \
       current_location == 'mortuary_f2r4' or \
       current_location == 'mortuary_f2r5' or \
       current_location == 'mortuary_f2r6' or \
       current_location == 'mortuary_f2r7' or \
       current_location == 'mortuary_f2r8':
        jump mortuary_f2_map

    if current_location == 'mortuary_f3r1':
        jump mortuary_f3r1_graphics_menu
    if current_location == 'mortuary_f3r2':
        jump mortuary_f3r2_graphics_menu
    if current_location == 'mortuary_f3r3':
        jump mortuary_f3r3_graphics_menu
    if current_location == 'mortuary_f3r4':
        jump mortuary_f3r4_graphics_menu

    $ raise Exception(f"Unknown location '{current_location}'")
