init 10 python:
    from game.dlgs.mortuary.walking_f1_logic import WalkingF1Logic
    walkingF1Logic = WalkingF1Logic(renpy.store.global_settings_manager)


label walk_to_mortuaryf1r1_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r1_visit()
    scene bg mortuary_f1r1
    jump show_graphics_menu


label walk_to_mortuaryf1r3_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r3_visit()
    scene bg mortuary_f1r3
    jump show_graphics_menu


label walk_to_mortuaryf1r5_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r5_visit()
    scene bg mortuary_f1r5
    jump show_graphics_menu


label walk_to_mortuaryf1r7_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r7_visit()
    scene bg mortuary_f1r7
    jump show_graphics_menu


label walk_to_mortuaryf1rc_visit:
    $ walkingF1Logic.walk_to_mortuaryf1rc_visit()
    scene bg mortuary_f1rc
    jump show_graphics_menu