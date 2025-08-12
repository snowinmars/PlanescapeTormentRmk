init 10 python:
    from game.engine_data.menus.mortuary.f2r1_graphics_menu_logic import (MortuaryF2R1GraphicsMenuLogic)


    mortuaryF2R1GraphicsMenuLogic = MortuaryF2R1GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r1_walking = [{
        'when': mortuaryF2R1GraphicsMenuLogic.has_no_scalpel,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 520,
        'ypos': 440,
        'action': Function(lambda: renpy.jump(mortuaryF2R1GraphicsMenuLogic.to_pick_scalpel_action())),
        'tooltip': mortuaryF2R1GraphicsMenuLogic.to_pick_scalpel_tooltip
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.see_doors,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 170,
        'ypos': 460,
        'action': Function(lambda: renpy.jump(mortuaryF2R1GraphicsMenuLogic.to_mortuary_f2r2_action())),
        'tooltip': mortuaryF2R1GraphicsMenuLogic.to_mortuary_f2r2_tooltip
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.see_doors,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1240,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF2R1GraphicsMenuLogic.to_mortuary_f2r8_action())),
        'tooltip': mortuaryF2R1GraphicsMenuLogic.to_mortuary_f2r8_tooltip
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.see_doors,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 940,
        'ypos': 220,
        'action': Function(lambda: renpy.jump(mortuaryF2R1GraphicsMenuLogic.to_mortuary_f3r1_action())),
        'tooltip': mortuaryF2R1GraphicsMenuLogic.to_mortuary_f3r1_tooltip
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.see_doors,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 790,
        'ypos': 280,
        'action': Function(lambda: renpy.jump(mortuaryF2R1GraphicsMenuLogic.to_mortuary_f1r1_action())),
        'tooltip': mortuaryF2R1GraphicsMenuLogic.to_mortuary_f1r1_tooltip
    }]

    mortuary_f2r1_talking = [{
        'when': mortuaryF2R1GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R1GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R1GraphicsMenuLogic.calc_morte_ypos(),
        'kill_tooltip': mortuaryF2R1GraphicsMenuLogic.morte_kill_tooltip,
        'kill_action': mortuaryF2R1GraphicsMenuLogic.morte_kill_action,
        'speak_tooltip': mortuaryF2R1GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF2R1GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.when_zm569,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 400,
        'ypos': 720,
        'kill_tooltip': mortuaryF2R1GraphicsMenuLogic.zm569_kill_tooltip,
        'kill_action': mortuaryF2R1GraphicsMenuLogic.zm569_kill_action,
        'speak_tooltip': mortuaryF2R1GraphicsMenuLogic.zm569_speak_tooltip,
        'speak_action': mortuaryF2R1GraphicsMenuLogic.zm569_speak_action
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.when_zm825,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 710,
        'ypos': 880,
        'kill_tooltip': mortuaryF2R1GraphicsMenuLogic.zm825_kill_tooltip,
        'kill_action': mortuaryF2R1GraphicsMenuLogic.zm825_kill_action,
        'speak_tooltip': mortuaryF2R1GraphicsMenuLogic.zm825_speak_tooltip,
        'speak_action': mortuaryF2R1GraphicsMenuLogic.zm825_speak_action
    }, {
        'when': mortuaryF2R1GraphicsMenuLogic.when_zm782,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 1160,
        'ypos': 860,
        'kill_tooltip': mortuaryF2R1GraphicsMenuLogic.zm782_kill_tooltip,
        'kill_action': mortuaryF2R1GraphicsMenuLogic.zm782_kill_action,
        'speak_tooltip': mortuaryF2R1GraphicsMenuLogic.zm782_speak_tooltip,
        'speak_action': mortuaryF2R1GraphicsMenuLogic.zm782_speak_action
    }]


label mortuary_f2r1_graphics_menu:
    call screen mortuary_f2r1_graphics_menu_screen


screen mortuary_f2r1_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r1',
        mortuary_f2r1_walking,
        mortuary_f2r1_talking
    )
