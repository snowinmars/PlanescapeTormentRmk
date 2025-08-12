init 10 python:
    from game.dlgs.mortuary.walking_f1_logic import WalkingF1Logic
    walkingF1Logic = WalkingF1Logic(renpy.store.global_settings_manager)


label walk_to_mortuaryf1r1_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r1_visit()
    scene bg mortuary_f1r1
    jump graphics_menu


label walk_to_mortuaryf1r2_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r2_visit()
    scene bg mortuary_f1r2
    jump graphics_menu


label walk_to_mortuaryf1r3_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r3_visit()
    scene bg mortuary_f1r3
    jump graphics_menu


label walk_to_mortuaryf1r4_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r4_visit()
    scene bg mortuary_f1r4
    jump graphics_menu


label walk_to_mortuaryf1rc_visit:
    $ walkingF1Logic.walk_to_mortuaryf1rc_visit()
    scene bg mortuary_f1rc
    jump graphics_menu