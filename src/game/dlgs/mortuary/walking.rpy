init 10 python:
    gsm = renpy.store.global_settings_manager


label mortuary_walking_1_8_closed:
    $ gsm.set_location('mortuary1')
    scene bg mortuary1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_up_closed:
    $ gsm.set_location('mortuary1')
    scene bg mortuary1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_down_closed:
    $ gsm.set_location('mortuary1')
    scene bg mortuary1
    teller "Дверь не поддаётся."
    jump show_graphics_menu

label mortuary_walking_1_visit:
    $ gsm.set_location('mortuary1')
    scene bg mortuary1
    jump show_graphics_menu

label mortuary_walking_2_visit:
    $ gsm.set_location('mortuary2')
    scene bg mortuary2
    jump show_graphics_menu

label mortuary_walking_2_scene:
    $ gsm.set_location('mortuary2')
    scene bg mortuary2
    jump dmorte2_s0

label mortuary_walking_3_visit:
    $ gsm.set_location('mortuary3')
    scene bg mortuary3
    jump show_graphics_menu

label mortuary_walking_3_scene:
    $ gsm.set_location('mortuary3')
    scene bg mortuary3
    jump dmorte2_s31

label mortuary_walking_4_visit:
    $ gsm.set_location('mortuary4')
    scene bg mortuary4
    jump show_graphics_menu

label mortuary_walking_5_visit:
    $ gsm.set_location('mortuary5')
    scene bg mortuary5
    jump show_graphics_menu

label mortuary_walking_6_visit:
    $ gsm.set_location('mortuary6')
    scene bg mortuary6
    jump show_graphics_menu

label mortuary_walking_7_visit:
    $ gsm.set_location('mortuary7')
    scene bg mortuary7
    jump show_graphics_menu

label mortuary_walking_8_visit:
    $ gsm.set_location('mortuary8')
    scene bg mortuary8
    jump show_graphics_menu

label mortuary_walking_8_up_visit:
    $ gsm.set_location('mortuaryx')
    scene bg mortuaryx
    jump show_graphics_menu
