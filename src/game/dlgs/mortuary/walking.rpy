init python:
    def _take_embalm(gsm):
        gsm.set_has_embalm(True)

init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


label mortuary_walking_1_8_closed:
    $ glm.set_location('mortuary_f2r1')
    scene bg mortuary1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_up_closed:
    $ glm.set_location('mortuary_f2r1')
    scene bg mortuary1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_down_closed:
    $ glm.set_location('mortuary_f2r1')
    scene bg mortuary1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_visit:
    $ glm.set_location('mortuary_f2r1')
    scene bg mortuary1
    jump show_graphics_menu

label mortuary_walking_2_visit:
    $ glm.set_location('mortuary_f2r2')
    scene bg mortuary2
    jump show_graphics_menu

label mortuary_walking_2_scene:
    $ glm.set_location('mortuary_f2r2')
    scene bg mortuary2
    jump dmorte2_s0

label mortuary_walking_3_visit:
    $ glm.set_location('mortuary_f2r3')
    scene bg mortuary3
    jump show_graphics_menu

label mortuary_walking_3_scene:
    $ glm.set_location('mortuary_f2r3')
    scene bg mortuary3
    jump dmorte2_s31

label mortuary_walking_4_visit:
    $ glm.set_location('mortuary_f2r4')
    scene bg mortuary4
    jump show_graphics_menu

label mortuary_walking_5_visit:
    $ glm.set_location('mortuary_f2r5')
    scene bg mortuary5
    jump show_graphics_menu

label mortuary_walking_6_visit:
    $ glm.set_location('mortuary_f2r6')
    scene bg mortuary6
    jump show_graphics_menu

label mortuary_walking_7_visit:
    $ glm.set_location('mortuary_f2r7')
    scene bg mortuary7
    jump show_graphics_menu

label mortuary_walking_8_visit:
    $ glm.set_location('mortuary_f2r8')
    scene bg mortuary8
    jump show_graphics_menu

label mortuary_walking_8_up_visit:
    $ glm.set_location('mortuaryx')
    scene bg mortuaryx
    jump show_graphics_menu

label mortuary_walking_1_pick_scalpel:
    $ gsm.set_has_scalpel(True)
    scene bg mortuary1
    teller "Ты подбираешь скальпель с одной из полок."
    jump show_graphics_menu

label mortuary_walking_1_pick_embalm:
    $ _take_embalm(gsm)
    teller "На столе стоят несколько бутылок с мутно-зелёной жидкостью. Ты берёшь парочку."
    jump dvaxis_dispose
