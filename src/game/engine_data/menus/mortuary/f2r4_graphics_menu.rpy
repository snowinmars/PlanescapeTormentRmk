init 10 python:
    from game.engine_data.menus.mortuary.f2r4_graphics_menu_logic import (MortuaryF2R4GraphicsMenuLogic)


    mortuaryF2R4GraphicsMenuLogic = MortuaryF2R4GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r4_walking = [{
        'when': mortuaryF2R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1590,
        'ypos': 400,
        'action': Function(lambda: renpy.jump(mortuaryF2R4GraphicsMenuLogic.to_mortuary_f2r5_action())),
        'tooltip': mortuaryF2R4GraphicsMenuLogic.to_mortuary_f2r5_tooltip
    }, {
        'when': mortuaryF2R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 140,
        'ypos': 500,
        'action': Function(lambda: renpy.jump(mortuaryF2R4GraphicsMenuLogic.to_mortuary_f2r3_action())),
        'tooltip': mortuaryF2R4GraphicsMenuLogic.to_mortuary_f2r3_tooltip
    }]

    mortuary_f2r4_talking = [{
        'when': mortuaryF2R4GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R4GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R4GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF2R4GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF2R4GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF2R4GraphicsMenuLogic.when_zm1664,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 950,
        'ypos': 920,
        'speak_tooltip': mortuaryF2R4GraphicsMenuLogic.zm1664_speak_tooltip,
        'speak_action': mortuaryF2R4GraphicsMenuLogic.zm1664_speak_action
    }]


label mortuary_f2r4_graphics_menu:
    call screen mortuary_f2r4_graphics_menu_screen


screen mortuary_f2r4_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r4',
        mortuary_f2r4_walking,
        mortuary_f2r4_talking
    )
