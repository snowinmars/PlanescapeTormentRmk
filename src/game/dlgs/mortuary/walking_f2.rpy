init 10 python:
    from dlgs.mortuary.walking_f2_logic import WalkingF2Logic
    walkingF2Logic = WalkingF2Logic(renpy.store.global_settings_manager)


label walk_to_mortuaryf2r8_closed:
    nr "Эта дверь заперта. Тебе понадобится ключ."
    jump show_graphics_menu


label walk_to_mortuaryf3r1_closed:
    nr "Эта дверь заперта. Тебе понадобится ключ."
    jump show_graphics_menu


label walk_to_mortuaryf1r1_closed:
    nr "Эта дверь заперта. Тебе понадобится ключ."
    jump show_graphics_menu


label walk_to_mortuaryf2r1_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r1_visit()
    scene bg mortuary_f2r1
    jump show_graphics_menu


label walk_to_mortuaryf2r2_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r2_visit()
    scene bg mortuary_f2r2
    jump show_graphics_menu


label walk_to_mortuaryf2r2_scene:
    $ walkingF2Logic.walk_to_mortuaryf2r2_scene()
    scene bg mortuary_f2r2
    jump morte2_s0


label walk_to_mortuaryf2r3_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r3_visit()
    scene bg mortuary_f2r3
    jump show_graphics_menu


label walk_to_mortuaryf2r3_scene:
    $ walkingF2Logic.walk_to_mortuaryf2r3_scene()
    scene bg mortuary_f2r3
    jump morte2_s31


label walk_to_mortuaryf2r4_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r4_visit()
    scene bg mortuary_f2r4
    jump show_graphics_menu


label walk_to_mortuaryf2r5_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r5_visit()
    scene bg mortuary_f2r5
    jump show_graphics_menu


label walk_to_mortuaryf2r6_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r6_visit()
    scene bg mortuary_f2r6
    jump show_graphics_menu


label walk_to_mortuaryf2r7_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r7_visit()
    scene bg mortuary_f2r7
    jump show_graphics_menu


label walk_to_mortuaryf2r8_visit:
    $ walkingF2Logic.walk_to_mortuaryf2r8_visit()
    scene bg mortuary_f2r8
    jump show_graphics_menu


label walk_mortuaryf2r1_pick_scalpel:
    $ walkingF2Logic.walk_mortuaryf2r1_pick_scalpel()
    scene bg mortuary_f2r1
    nr "Ты подбираешь скальпель с одной из полок."
    jump show_graphics_menu


label walk_mortuaryf2r7_pick_embalm:
    $ walkingF2Logic.walk_mortuaryf2r7_pick_embalm()
    scene bg mortuary_f2r7
    nr "На столе стоят несколько бутылок с мутно-зелёной жидкостью. Ты берёшь парочку."
    jump show_graphics_menu


label walk_mortuaryf2r7_pick_copper_earring_closed:
    $ walkingF2Logic.walk_mortuaryf2r7_pick_copper_earring_closed()
    scene bg mortuary_f2r7
    nr "Ты подбираешь серьгу."
    jump show_graphics_menu