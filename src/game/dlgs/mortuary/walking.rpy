init 10 python:
    from dlgs.mortuary.walking_logic import WalkingLogic
    walkingLogic = WalkingLogic(renpy.store.global_settings_manager)


label mortuary_walking_1_8_closed:
    $ walkingLogic.mortuary_walking_1_8_closed()
    scene bg mortuary_f2r1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_up_closed:
    $ walkingLogic.mortuary_walking_1_up_closed()
    scene bg mortuary_f2r1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_down_closed:
    $ walkingLogic.mortuary_walking_1_down_closed()
    scene bg mortuary_f2r1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_visit:
    $ walkingLogic.mortuary_walking_1_visit()
    scene bg mortuary_f2r1
    jump show_graphics_menu

label mortuary_walking_2_visit:
    $ walkingLogic.mortuary_walking_2_visit()
    scene bg mortuary_f2r2
    jump show_graphics_menu

label mortuary_walking_2_scene:
    $ walkingLogic.mortuary_walking_2_scene()
    scene bg mortuary_f2r2
    jump morte2_s0

label mortuary_walking_3_visit:
    $ walkingLogic.mortuary_walking_3_visit()
    scene bg mortuary_f2r3
    jump show_graphics_menu

label mortuary_walking_3_scene:
    $ walkingLogic.mortuary_walking_3_scene()
    scene bg mortuary_f2r3
    jump morte2_s31

label mortuary_walking_4_visit:
    $ walkingLogic.mortuary_walking_4_visit()
    scene bg mortuary_f2r4
    jump show_graphics_menu

label mortuary_walking_5_visit:
    $ walkingLogic.mortuary_walking_5_visit()
    scene bg mortuary_f2r5
    jump show_graphics_menu

label mortuary_walking_6_visit:
    $ walkingLogic.mortuary_walking_6_visit()
    scene bg mortuary_f2r6
    jump show_graphics_menu

label mortuary_walking_7_visit:
    $ walkingLogic.mortuary_walking_7_visit()
    scene bg mortuary_f2r7
    jump show_graphics_menu

label mortuary_walking_8_visit:
    $ walkingLogic.mortuary_walking_8_visit()
    scene bg mortuary_f2r8
    jump show_graphics_menu

label mortuary_walking_8_up_visit:
    $ walkingLogic.mortuary_walking_8_up_visit()
    scene bg mortuaryx
    jump show_graphics_menu

label mortuary_walking_1_pick_scalpel:
    $ walkingLogic.mortuary_walking_1_pick_scalpel()
    scene bg mortuary_f2r1
    teller "Ты подбираешь скальпель с одной из полок."
    jump show_graphics_menu

label mortuary_walking_1_pick_embalm:
    $ walkingLogic.mortuary_walking_1_pick_embalm()
    scene bg mortuary_f2r7
    teller "На столе стоят несколько бутылок с мутно-зелёной жидкостью. Ты берёшь парочку."
    jump dvaxis_dispose
