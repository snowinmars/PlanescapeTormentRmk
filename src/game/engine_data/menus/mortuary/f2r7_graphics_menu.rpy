init 10 python:
    from game.engine_data.menus.mortuary.f2r7_graphics_menu_logic import (MortuaryF2R7GraphicsMenuLogic)


    mortuaryF2R7GraphicsMenuLogic = MortuaryF2R7GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r7_walking = [{
        'when': mortuaryF2R7GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 930,
        'ypos': 260,
        'action': Function(lambda: renpy.jump(mortuaryF2R7GraphicsMenuLogic.to_mortuary_f3r3_action())),
        'tooltip': mortuaryF2R7GraphicsMenuLogic.to_mortuary_f3r3_tooltip
    }, {
        'when': mortuaryF2R7GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1030,
        'ypos': 300,
        'action': Function(lambda: renpy.jump(mortuaryF2R7GraphicsMenuLogic.to_mortuary_f1r4_action())),
        'tooltip': mortuaryF2R7GraphicsMenuLogic.to_mortuary_f1r4_tooltip
    }, {
        'when': mortuaryF2R7GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 740,
        'ypos': 970,
        'action': Function(lambda: renpy.jump(mortuaryF2R7GraphicsMenuLogic.to_mortuary_f2r8_action())),
        'tooltip': mortuaryF2R7GraphicsMenuLogic.to_mortuary_f2r8_tooltip
    }, {
        'when': mortuaryF2R7GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1540,
        'ypos': 400,
        'action': Function(lambda: renpy.jump(mortuaryF2R7GraphicsMenuLogic.to_mortuary_f2r6_action())),
        'tooltip': mortuaryF2R7GraphicsMenuLogic.to_mortuary_f2r6_tooltip
    }, {
        'when': mortuaryF2R7GraphicsMenuLogic.has_no_embalm,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1110,
        'ypos': 350,
        'action': Function(lambda: renpy.jump(mortuaryF2R7GraphicsMenuLogic.to_pick_embalm_action())),
        'tooltip': mortuaryF2R7GraphicsMenuLogic.to_pick_embalm_tooltip
    }, {
        'when': mortuaryF2R7GraphicsMenuLogic.has_no_copper_earring_closed,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 750,
        'ypos': 200,
        'action': Function(lambda: renpy.jump(mortuaryF2R7GraphicsMenuLogic.to_pick_copper_earring_closed_action())),
        'tooltip': mortuaryF2R7GraphicsMenuLogic.to_pick_copper_earring_closed_tooltip
    }]

    mortuary_f2r7_talking = [{
        'when': mortuaryF2R7GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R7GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R7GraphicsMenuLogic.calc_morte_ypos(),
        'kill_tooltip': mortuaryF2R7GraphicsMenuLogic.morte_kill_tooltip,
        'kill_action': mortuaryF2R7GraphicsMenuLogic.morte_kill_action,
        'speak_tooltip': mortuaryF2R7GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF2R7GraphicsMenuLogic.morte_speak_action
    }]


label mortuary_f2r7_graphics_menu:
    call screen mortuary_f2r7_graphics_menu_screen


screen mortuary_f2r7_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r7',
        mortuary_f2r7_walking,
        mortuary_f2r7_talking
    )
