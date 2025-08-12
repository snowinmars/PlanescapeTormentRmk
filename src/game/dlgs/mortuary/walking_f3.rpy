init 10 python:
    from game.dlgs.mortuary.walking_f3_logic import WalkingF3Logic
    walkingF3Logic = WalkingF3Logic(renpy.store.global_settings_manager)


label walk_to_mortuaryf3r4_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r4_visit()
    scene bg mortuary_f3r4
    jump graphics_menu


label walk_to_mortuaryf3r6_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r6_visit()
    scene bg mortuary_f3r6
    jump graphics_menu


label walk_to_mortuaryf3r8_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r8_visit()
    scene bg mortuary_f3r8
    jump graphics_menu


label walk_to_mortuaryf3r1_visit:
    $ walkingF3Logic.walk_to_mortuaryf3r1_visit()
    scene bg mortuary_f3r1
    jump graphics_menu


label walk_mortuaryf3r8_pick_prybar:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_prybar()
    nr "Ты подбираешь ломик."
    jump graphics_menu


label walk_mortuaryf3r8_pick_dustman_request:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_dustman_request()
    nr "Ты подбираешь бумагу с запросом тленного."
    jump graphics_menu


label walk_mortuaryf3r8_pick_needle:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_needle()
    nr "Ты подбираешь нитку с иголкой."
    jump graphics_menu


label walk_mortuaryf3r8_pick_mortuary_key:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_mortuary_key()
    nr "Ты подбираешь ключ от внутренних покоев Морга."
    jump graphics_menu

label walk_mortuaryf3r8_pick_mortuary_task_list:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_mortuary_task_list()
    nr "Ты подбираешь список заданий."
    jump graphics_menu

label walk_mortuaryf3r8_pick_garbage:
    $ walkingF3Logic.walk_mortuaryf3r8_pick_garbage()
    nr "Ты подбираешь кусок мусора."
    jump graphics_menu
