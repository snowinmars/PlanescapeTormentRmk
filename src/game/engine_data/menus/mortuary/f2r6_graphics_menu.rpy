init 10 python:
    from game.engine_data.menus.mortuary.f2r6_graphics_menu_logic import (MortuaryF2R6GraphicsMenuLogic)


    mortuaryF2R6GraphicsMenuLogic = MortuaryF2R6GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r6_walking = [{
        'when': mortuaryF2R6GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1470,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF2R6GraphicsMenuLogic.to_mortuary_f2r7_action())),
        'tooltip': mortuaryF2R6GraphicsMenuLogic.to_mortuary_f2r7_tooltip
    }, {
        'when': mortuaryF2R6GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1380,
        'ypos': 70,
        'action': Function(lambda: renpy.jump(mortuaryF2R6GraphicsMenuLogic.to_mortuary_f2r5_action())),
        'tooltip': mortuaryF2R6GraphicsMenuLogic.to_mortuary_f2r5_tooltip
    }]

    mortuary_f2r6_talking = [{
        'when': mortuaryF2R6GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R6GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R6GraphicsMenuLogic.calc_morte_ypos(),
        'kill_tooltip': mortuaryF2R6GraphicsMenuLogic.morte_kill_tooltip,
        'kill_action': mortuaryF2R6GraphicsMenuLogic.morte_kill_action,
        'speak_tooltip': mortuaryF2R6GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF2R6GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF2R6GraphicsMenuLogic.when_vaxis,
        'idle_img': 'images/menu_sprites/vaxis.png',
        'hover_img': 'images/menu_sprites/vaxis.png',
        'xpos': 1300,
        'ypos': 700,
        'kill_tooltip': mortuaryF2R6GraphicsMenuLogic.vaxis_kill_tooltip,
        'kill_action': mortuaryF2R6GraphicsMenuLogic.vaxis_kill_action,
        'speak_tooltip': mortuaryF2R6GraphicsMenuLogic.vaxis_speak_tooltip,
        'speak_action': mortuaryF2R6GraphicsMenuLogic.vaxis_speak_action
    }]


label mortuary_f2r6_graphics_menu:
    call screen mortuary_f2r6_graphics_menu_screen


screen mortuary_f2r6_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r6',
        mortuary_f2r6_walking,
        mortuary_f2r6_talking
    )
