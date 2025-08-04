init 10 python:
    from game.dlgs.mortuary.walking_f1_logic import WalkingF1Logic
    walkingF1Logic = WalkingF1Logic(renpy.store.global_settings_manager)


label walk_to_mortuaryf1r1_visit:
    $ walkingF1Logic.walk_to_mortuaryf1r1_visit()
    scene bg mortuary_f1r1
    jump show_graphics_menu
