init 10 python:
    from game.engine_data.menus.mortuary.f2r8_graphics_menu_logic import (MortuaryF2R8GraphicsMenuLogic)


    mortuaryF2R8GraphicsMenuLogic = MortuaryF2R8GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r8_walking = [{
        'when': mortuaryF2R8GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1500,
        'ypos': 750,
        'action': Function(lambda: renpy.jump(mortuaryF2R8GraphicsMenuLogic.to_mortuary_f2r7_action())),
        'tooltip': mortuaryF2R8GraphicsMenuLogic.to_mortuary_f2r7_tooltip
    }, {
        'when': mortuaryF2R8GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 80,
        'ypos': 800,
        'action': Function(lambda: renpy.jump(mortuaryF2R8GraphicsMenuLogic.to_mortuary_f2r1_action())),
        'tooltip': mortuaryF2R8GraphicsMenuLogic.to_mortuary_f2r1_tooltip
    }]

    mortuary_f2r8_talking = [{
        'when': mortuaryF2R8GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R8GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R8GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF2R8GraphicsMenuLogic.morte2_speak_tooltip,
        'speak_action': mortuaryF2R8GraphicsMenuLogic.morte2_speak_action
    }, {
        'when': mortuaryF2R8GraphicsMenuLogic.when_zf891,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 960,
        'ypos': 700,
        'speak_tooltip': mortuaryF2R8GraphicsMenuLogic.zf891_speak_tooltip,
        'speak_action': mortuaryF2R8GraphicsMenuLogic.zf891_speak_action
    }]


label mortuary_f2r8_graphics_menu:
    call screen mortuary_f2r8_graphics_menu_screen


screen mortuary_f2r8_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r8',
        mortuary_f2r8_walking,
        mortuary_f2r8_talking
    )
