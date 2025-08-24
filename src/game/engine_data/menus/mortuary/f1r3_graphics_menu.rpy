init 10 python:
    from game.engine_data.menus.mortuary.f1r3_graphics_menu_logic import (MortuaryF1R3GraphicsMenuLogic)


    mortuaryF1R3GraphicsMenuLogic = MortuaryF1R3GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f1r3_walking = [{
        'when': mortuaryF1R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 225,
        'ypos': 400,
        'action': Function(lambda: renpy.jump(mortuaryF1R3GraphicsMenuLogic.to_mortuary_f1r2_action())),
        'tooltip': mortuaryF1R3GraphicsMenuLogic.to_mortuary_f1r2_tooltip
    }, {
        'when': mortuaryF1R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1450,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF1R3GraphicsMenuLogic.to_mortuary_f1r4_action())),
        'tooltip': mortuaryF1R3GraphicsMenuLogic.to_mortuary_f1r4_tooltip
    }, {
        'when': mortuaryF1R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 850,
        'ypos': 950,
        'action': Function(lambda: renpy.jump(mortuaryF1R3GraphicsMenuLogic.to_mortuary_f1rc_action())),
        'tooltip': mortuaryF1R3GraphicsMenuLogic.to_mortuary_f1rc_tooltip
    }]

    mortuary_f1r3_talking = [{
        'when': mortuaryF1R3GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF1R3GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF1R3GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF1R3GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF1R3GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF1R3GraphicsMenuLogic.when_zf114,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 700,
        'ypos': 450,
        'speak_tooltip': mortuaryF1R3GraphicsMenuLogic.zf114_speak_tooltip,
        'speak_action': mortuaryF1R3GraphicsMenuLogic.zf114_speak_action
    }, {
        'when': mortuaryF1R3GraphicsMenuLogic.when_zm1041,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 1100,
        'ypos': 650,
        'speak_tooltip': mortuaryF1R3GraphicsMenuLogic.zm1041_speak_tooltip,
        'speak_action': mortuaryF1R3GraphicsMenuLogic.zm1041_speak_action
    }, {
        'when': mortuaryF1R3GraphicsMenuLogic.when_xach,
        'idle_img': 'images/menu_sprites/xach.png',
        'hover_img': 'images/menu_sprites/xach.png',
        'xpos': 1700,
        'ypos': 1000,
        'speak_tooltip': mortuaryF1R3GraphicsMenuLogic.xach_speak_tooltip,
        'speak_action': mortuaryF1R3GraphicsMenuLogic.xach_speak_action
    }]


label mortuary_f1r3_graphics_menu:
    call screen mortuary_f1r3_graphics_menu_screen


screen mortuary_f1r3_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1r3',
        mortuary_f1r3_walking,
        mortuary_f1r3_talking
    )
