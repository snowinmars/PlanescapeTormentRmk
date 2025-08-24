init 10 python:
    from game.engine_data.menus.mortuary.f2r5_graphics_menu_logic import (MortuaryF2R5GraphicsMenuLogic)


    mortuaryF2R5GraphicsMenuLogic = MortuaryF2R5GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r5_walking = [{
        'when': mortuaryF2R5GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1600,
        'ypos': 900,
        'action': Function(lambda: renpy.jump(mortuaryF2R5GraphicsMenuLogic.to_mortuary_f2r6_action())),
        'tooltip': mortuaryF2R5GraphicsMenuLogic.to_mortuary_f2r6_tooltip
    }, {
        'when': mortuaryF2R5GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 650,
        'ypos': 300,
        'action': Function(lambda: renpy.jump(mortuaryF2R5GraphicsMenuLogic.to_mortuary_f2r4_action())),
        'tooltip': mortuaryF2R5GraphicsMenuLogic.to_mortuary_f2r4_tooltip
    }]

    mortuary_f2r5_talking = [{
        'when': mortuaryF2R5GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R5GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R5GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF2R5GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF2R5GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF2R5GraphicsMenuLogic.when_eivene,
        'idle_img': 'images/menu_sprites/eivene.png',
        'hover_img': 'images/menu_sprites/eivene.png',
        'xpos': 960,
        'ypos': 530,
        'speak_tooltip': mortuaryF2R5GraphicsMenuLogic.eivene_speak_tooltip,
        'speak_action': mortuaryF2R5GraphicsMenuLogic.eivene_speak_action
    }, {
        'when': mortuaryF2R5GraphicsMenuLogic.when_zm257,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 780,
        'ypos': 560,
        'speak_tooltip': mortuaryF2R5GraphicsMenuLogic.zm257_speak_tooltip,
        'speak_action': mortuaryF2R5GraphicsMenuLogic.zm257_speak_action
    }, {
        'when': mortuaryF2R5GraphicsMenuLogic.when_zm506,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 1160,
        'ypos': 700,
        'speak_tooltip': mortuaryF2R5GraphicsMenuLogic.zm506_speak_tooltip,
        'speak_action': mortuaryF2R5GraphicsMenuLogic.zm506_speak_action
    }, {
        'when': mortuaryF2R5GraphicsMenuLogic.when_zm985,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 780,
        'ypos': 820,
        'speak_tooltip': mortuaryF2R5GraphicsMenuLogic.zm985_speak_tooltip,
        'speak_action': mortuaryF2R5GraphicsMenuLogic.zm985_speak_action
    }]


label mortuary_f2r5_graphics_menu:
    call screen mortuary_f2r5_graphics_menu_screen


screen mortuary_f2r5_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r5',
        mortuary_f2r5_walking,
        mortuary_f2r5_talking
    )
