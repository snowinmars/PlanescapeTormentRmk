init 10 python:
    from game.engine_data.menus.mortuary.f1r1_graphics_menu_logic import (MortuaryF1R1GraphicsMenuLogic)


    mortuaryF1R1GraphicsMenuLogic = MortuaryF1R1GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f1r1_walking = [{
        'when': mortuaryF1R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 800,
        'ypos': 125,
        'action': Function(lambda: renpy.jump(mortuaryF1R1GraphicsMenuLogic.to_mortuary_f2r1_action())),
        'tooltip': mortuaryF1R1GraphicsMenuLogic.to_mortuary_f2r1_tooltip
    }, {
        'when': mortuaryF1R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 450,
        'ypos': 200,
        'action': Function(lambda: renpy.jump(mortuaryF1R1GraphicsMenuLogic.to_mortuary_f1r2_action())),
        'tooltip': mortuaryF1R1GraphicsMenuLogic.to_mortuary_f1r2_tooltip
    }, {
        'when': mortuaryF1R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1600,
        'ypos': 900,
        'action': Function(lambda: renpy.jump(mortuaryF1R1GraphicsMenuLogic.to_mortuary_f1r4_action())),
        'tooltip': mortuaryF1R1GraphicsMenuLogic.to_mortuary_f1r4_tooltip
    }, {
        'when': mortuaryF1R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1300,
        'ypos': 300,
        'action': Function(lambda: renpy.jump(mortuaryF1R1GraphicsMenuLogic.to_mortuary_f1rc_action())),
        'tooltip': mortuaryF1R1GraphicsMenuLogic.to_mortuary_f1rc_tooltip
    }]

    mortuary_f1r1_talking = [{
        'when': mortuaryF1R1GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF1R1GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF1R1GraphicsMenuLogic.calc_morte_ypos(),
        'kill_tooltip': mortuaryF1R1GraphicsMenuLogic.morte_kill_tooltip,
        'kill_action': mortuaryF1R1GraphicsMenuLogic.morte_kill_action,
        'speak_tooltip': mortuaryF1R1GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF1R1GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF1R1GraphicsMenuLogic.when_soego,
        'idle_img': 'images/menu_sprites/soego.png',
        'hover_img': 'images/menu_sprites/soego.png',
        'xpos': 950,
        'ypos': 600,
        'kill_tooltip': mortuaryF1R1GraphicsMenuLogic.soego_kill_tooltip,
        'kill_action': mortuaryF1R1GraphicsMenuLogic.soego_kill_action,
        'speak_tooltip': mortuaryF1R1GraphicsMenuLogic.soego_speak_tooltip,
        'speak_action': mortuaryF1R1GraphicsMenuLogic.soego_speak_action
    }]


label mortuary_f1r1_graphics_menu:
    call screen mortuary_f1r1_graphics_menu_screen


screen mortuary_f1r1_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1r1',
        mortuary_f1r1_walking,
        mortuary_f1r1_talking
    )
