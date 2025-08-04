init 10 python:
    from game.dlgs.mortuary.walking_f3_logic import WalkingF3Logic
    walkingF3Logic = WalkingF3Logic(renpy.store.global_settings_manager)


label walk_to_mortuaryf3r4_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r4_visit()
    scene bg mortuary_f3r4
    jump show_graphics_menu


label walk_to_mortuaryf3r6_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r6_visit()
    scene bg mortuary_f3r6
    jump show_graphics_menu


label walk_to_mortuaryf3r8_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r8_visit()
    scene bg mortuary_f3r8
    jump show_graphics_menu


label walk_to_mortuaryf3r2_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r2_visit()
    scene bg mortuary_f3r2
    jump show_graphics_menu


label walk_mortuaryf3r8_pick_prybar:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_prybar()
    nr "Ты подбираешь ломик."
    jump show_graphics_menu


label walk_mortuaryf3r8_pick_dustman_request:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_dustman_request()
    nr "Ты подбираешь бумагу с запросом тленного."
    jump show_graphics_menu


label walk_mortuaryf3r8_pick_needle:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_needle()
    nr "Ты подбираешь нитку с иголкой."
    jump show_graphics_menu


label walk_mortuaryf3r8_pick_mortuary_key:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_mortuary_key()
    nr "Ты подбираешь ключ от внутренних покоев Морга."
    jump show_graphics_menu

label walk_mortuaryf3r8_pick_mortuary_task_list:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_mortuary_task_list()
    nr "Ты подбираешь список заданий."
    jump show_graphics_menu
