init 10 python:
    from game.engine_data.menus.mortuary.f2r2_graphics_menu_logic import (MortuaryF2R2GraphicsMenuLogic)


    mortuaryF2R2GraphicsMenuLogic = MortuaryF2R2GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r2_walking = [{
        'when': mortuaryF2R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 660,
        'ypos': 980,
        'action': Function(lambda: renpy.jump(mortuaryF2R2GraphicsMenuLogic.to_mortuary_f2r1_action())),
        'tooltip': mortuaryF2R2GraphicsMenuLogic.to_mortuary_f2r1_tooltip
    }, {
        'when': mortuaryF2R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 500,
        'ypos': 100,
        'action': Function(lambda: renpy.jump(mortuaryF2R2GraphicsMenuLogic.to_mortuary_f2r3_action())),
        'tooltip': mortuaryF2R2GraphicsMenuLogic.to_mortuary_f2r3_tooltip
    }]

    mortuary_f2r2_talking = [{
        'when': mortuaryF2R2GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R2GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R2GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF2R2GraphicsMenuLogic.morte2_speak_tooltip,
        'speak_action': mortuaryF2R2GraphicsMenuLogic.morte2_speak_action
    }, {
        'when': mortuaryF2R2GraphicsMenuLogic.when_zm965,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 840,
        'ypos': 600,
        'speak_tooltip': mortuaryF2R2GraphicsMenuLogic.zm965_speak_tooltip,
        'speak_action': mortuaryF2R2GraphicsMenuLogic.zm965_speak_action
    }, {
        'when': mortuaryF2R2GraphicsMenuLogic.when_zf594,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 450,
        'ypos': 520,
        'speak_tooltip': mortuaryF2R2GraphicsMenuLogic.zf594_speak_tooltip,
        'speak_action': mortuaryF2R2GraphicsMenuLogic.zf594_speak_action
    }, {
        'when': mortuaryF2R2GraphicsMenuLogic.when_zf626,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 490,
        'ypos': 720,
        'speak_tooltip': mortuaryF2R2GraphicsMenuLogic.zf626_speak_tooltip,
        'speak_action': mortuaryF2R2GraphicsMenuLogic.zf626_speak_action
    }]


label mortuary_f2r2_graphics_menu:
    call screen mortuary_f2r2_graphics_menu_screen


screen mortuary_f2r2_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r2',
        mortuary_f2r2_walking,
        mortuary_f2r2_talking
    )
