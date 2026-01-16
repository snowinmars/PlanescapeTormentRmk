init 10 python:
    from game.engine.runtime import (runtime)
    glm = runtime.global_locations_manager


label map_dispatcher:
    $ current_location = glm.get_location()

    # if in_morutary_f1
    if current_location == 'mortuary_f1r1' or \
        current_location == 'mortuary_f1r2' or \
        current_location == 'mortuary_f1r3' or \
        current_location == 'mortuary_f1r4' or \
        current_location == 'mortuary_f1rc':
        SmartPlayMusic(mortuary) # TODO [snow]: will it work?
        jump mortuary_f1_map

    # if in_morutary_f2
    if current_location == 'mortuary_f2r1' or \
       current_location == 'mortuary_f2r2' or \
       current_location == 'mortuary_f2r3' or \
       current_location == 'mortuary_f2r4' or \
       current_location == 'mortuary_f2r5' or \
       current_location == 'mortuary_f2r6' or \
       current_location == 'mortuary_f2r7' or \
       current_location == 'mortuary_f2r8':
        play music mortuary
        jump mortuary_f2_map

    # if in_morutary_f3
    if current_location == 'mortuary_f3r1' or \
       current_location == 'mortuary_f3r2' or \
       current_location == 'mortuary_f3r3' or \
       current_location == 'mortuary_f3r4' or \
       current_location == 'mortuary_f3rc':
        play music mortuary
        jump mortuary_f3_map

    $ raise Exception(f"Unknown location '{current_location}'")
