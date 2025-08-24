init 10 python:
    from game.engine_data.menus.mortuary.f3r3_graphics_menu_logic import (MortuaryF3R3GraphicsMenuLogic)


    mortuaryF3R3GraphicsMenuLogic = MortuaryF3R3GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f3r3_walking = [{
        'when': mortuaryF3R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1200,
        'ypos': 700,
        'action': Function(lambda: renpy.jump(mortuaryF3R3GraphicsMenuLogic.to_mortuary_f2r7_action())),
        'tooltip': mortuaryF3R3GraphicsMenuLogic.to_mortuary_f2r7_tooltip
    }, {
        'when': mortuaryF3R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 700,
        'ypos': 100,
        'action': Function(lambda: renpy.jump(mortuaryF3R3GraphicsMenuLogic.to_mortuary_f3r2_action())),
        'tooltip': mortuaryF3R3GraphicsMenuLogic.to_mortuary_f3r2_tooltip
    }, {
        'when': mortuaryF3R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 900,
        'ypos': 900,
        'action': Function(lambda: renpy.jump(mortuaryF3R3GraphicsMenuLogic.to_mortuary_f3r4_action())),
        'tooltip': mortuaryF3R3GraphicsMenuLogic.to_mortuary_f3r4_tooltip
    }]

    mortuary_f3r3_talking = [{
        'when': mortuaryF3R3GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF3R3GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF3R3GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF3R3GraphicsMenuLogic.morte2_speak_tooltip,
        'speak_action': mortuaryF3R3GraphicsMenuLogic.morte2_speak_action
    }, {
        'when': mortuaryF3R3GraphicsMenuLogic.when_s748,
        'idle_img': 'images/menu_sprites/skelet.png',
        'hover_img': 'images/menu_sprites/skelet.png',
        'xpos': 1260,
        'ypos': 200,
        'speak_tooltip': mortuaryF3R3GraphicsMenuLogic.s748_speak_tooltip,
        'speak_action': mortuaryF3R3GraphicsMenuLogic.s748_speak_action
    }, {
        'when': mortuaryF3R3GraphicsMenuLogic.when_s996,
        'idle_img': 'images/menu_sprites/skelet.png',
        'hover_img': 'images/menu_sprites/skelet.png',
        'xpos': 1160,
        'ypos': 250,
        'speak_tooltip': mortuaryF3R3GraphicsMenuLogic.s996_speak_tooltip,
        'speak_action': mortuaryF3R3GraphicsMenuLogic.s996_speak_action
    }, {
        'when': mortuaryF3R3GraphicsMenuLogic.when_zm475,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 360,
        'ypos': 400,
        'speak_tooltip': mortuaryF3R3GraphicsMenuLogic.zm475_speak_tooltip,
        'speak_action': mortuaryF3R3GraphicsMenuLogic.zm475_speak_action
    }, {
        'when': mortuaryF3R3GraphicsMenuLogic.when_zm310,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 760,
        'ypos': 1000,
        'speak_tooltip': mortuaryF3R3GraphicsMenuLogic.zm310_speak_tooltip,
        'speak_action': mortuaryF3R3GraphicsMenuLogic.zm310_speak_action
    }]


label mortuary_f3r3_graphics_menu:
    call screen mortuary_f3r3_graphics_menu_screen


screen mortuary_f3r3_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f3r3',
        mortuary_f3r3_walking,
        mortuary_f3r3_talking
    )
