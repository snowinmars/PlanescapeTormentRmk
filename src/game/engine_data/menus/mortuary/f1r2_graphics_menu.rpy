init 10 python:
    from game.engine_data.menus.mortuary.f1r2_graphics_menu_logic import (MortuaryF1R2GraphicsMenuLogic)


    mortuaryF1R2GraphicsMenuLogic = MortuaryF1R2GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f1r2_walking = [{
        'when': mortuaryF1R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1200,
        'ypos': 900,
        'action': Function(lambda: renpy.jump(mortuaryF1R2GraphicsMenuLogic.to_mortuary_f1rc_action())),
        'tooltip': mortuaryF1R2GraphicsMenuLogic.to_mortuary_f1rc_tooltip
    }, {
        'when': mortuaryF1R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1500,
        'ypos': 150,
        'action': Function(lambda: renpy.jump(mortuaryF1R2GraphicsMenuLogic.to_mortuary_f1r3_action())),
        'tooltip': mortuaryF1R2GraphicsMenuLogic.to_mortuary_f1r3_tooltip
    }, {
        'when': mortuaryF1R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 400,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF1R2GraphicsMenuLogic.to_mortuary_f1r1_action())),
        'tooltip': mortuaryF1R2GraphicsMenuLogic.to_mortuary_f1r1_tooltip
    }]

    mortuary_f1r2_talking = [{
        'when': mortuaryF1R2GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF1R2GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF1R2GraphicsMenuLogic.calc_morte_ypos(),
        'kill_tooltip': mortuaryF1R2GraphicsMenuLogic.morte_kill_tooltip,
        'kill_action': mortuaryF1R2GraphicsMenuLogic.morte_kill_action,
        'speak_tooltip': mortuaryF1R2GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF1R2GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF1R2GraphicsMenuLogic.when_deionarra,
        'idle_img': 'images/menu_sprites/deionarra.png',
        'hover_img': 'images/menu_sprites/deionarra.png',
        'xpos': 670,
        'ypos': 670,
        'speak_tooltip': mortuaryF1R2GraphicsMenuLogic.deionarra_speak_tooltip,
        'speak_action': mortuaryF1R2GraphicsMenuLogic.deionarra_speak_action
    }]


label mortuary_f1r2_graphics_menu:
    call screen mortuary_f1r2_graphics_menu_screen


screen mortuary_f1r2_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1r2',
        mortuary_f1r2_walking,
        mortuary_f1r2_talking
    )
