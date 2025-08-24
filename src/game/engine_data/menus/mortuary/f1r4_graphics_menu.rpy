init 10 python:
    from game.engine_data.menus.mortuary.f1r4_graphics_menu_logic import (MortuaryF1R4GraphicsMenuLogic)


    mortuaryF1R4GraphicsMenuLogic = MortuaryF1R4GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f1r4_walking = [{
        'when': mortuaryF1R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1500,
        'ypos': 150,
        'action': Function(lambda: renpy.jump(mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1r3_action())),
        'tooltip': mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1r3_tooltip
    }, {
        'when': mortuaryF1R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 400,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1r1_action())),
        'tooltip': mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1r1_tooltip
    }, {
        'when': mortuaryF1R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 500,
        'ypos': 300,
        'action': Function(lambda: renpy.jump(mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1rc_action())),
        'tooltip': mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1rc_tooltip
    }, {
        'when': mortuaryF1R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1100,
        'ypos': 150,
        'action': Function(lambda: renpy.jump(mortuaryF1R4GraphicsMenuLogic.to_mortuary_f2r7_action())),
        'tooltip': mortuaryF1R4GraphicsMenuLogic.to_mortuary_f2r7_tooltip
    }]

    mortuary_f1r4_talking = [{
        'when': mortuaryF1R4GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF1R4GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF1R4GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF1R4GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF1R4GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF1R4GraphicsMenuLogic.when_zm732,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 710,
        'ypos': 880,
        'speak_tooltip': mortuaryF1R4GraphicsMenuLogic.zm732_speak_tooltip,
        'speak_action': mortuaryF1R4GraphicsMenuLogic.zm732_speak_action
    }]


label mortuary_f1r4_graphics_menu:
    call screen mortuary_f1r4_graphics_menu_screen


screen mortuary_f1r4_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1r4',
        mortuary_f1r4_walking,
        mortuary_f1r4_talking
    )
