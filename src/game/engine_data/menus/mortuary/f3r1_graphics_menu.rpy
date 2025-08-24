init 10 python:
    from game.engine_data.menus.mortuary.f3r1_graphics_menu_logic import (MortuaryF3R1GraphicsMenuLogic)


    mortuaryF3R1GraphicsMenuLogic = MortuaryF3R1GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f3r1_walking = [{
        'when': mortuaryF3R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 750,
        'ypos': 850,
        'action': Function(lambda: renpy.jump(mortuaryF3R1GraphicsMenuLogic.to_mortuary_f2r1_action())),
        'tooltip': mortuaryF3R1GraphicsMenuLogic.to_mortuary_f2r1_tooltip
    }, {
        'when': mortuaryF3R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 700,
        'ypos': 200,
        'action': Function(lambda: renpy.jump(mortuaryF3R1GraphicsMenuLogic.to_mortuary_f3r2_action())),
        'tooltip': mortuaryF3R1GraphicsMenuLogic.to_mortuary_f3r2_tooltip
    }, {
        'when': mortuaryF3R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1200,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF3R1GraphicsMenuLogic.to_mortuary_f3r4_action())),
        'tooltip': mortuaryF3R1GraphicsMenuLogic.to_mortuary_f3r4_tooltip
    }, {
        'when': mortuaryF3R1GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 900,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF3R1GraphicsMenuLogic.to_pick_mortuary_key_action())),
        'tooltip': mortuaryF3R1GraphicsMenuLogic.to_pick_mortuary_key_tooltip
    }]

    mortuary_f3r1_talking = [{
        'when': mortuaryF3R1GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF3R1GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF3R1GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF3R1GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF3R1GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF3R1GraphicsMenuLogic.when_s863,
        'idle_img': 'images/menu_sprites/skelet.png',
        'hover_img': 'images/menu_sprites/skelet.png',
        'xpos': 1060,
        'ypos': 300,
        'speak_tooltip': mortuaryF3R1GraphicsMenuLogic.s863_speak_tooltip,
        'speak_action': mortuaryF3R1GraphicsMenuLogic.s863_speak_action
    }, {
        'when': mortuaryF3R1GraphicsMenuLogic.when_zm1146,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 960,
        'ypos': 300,
        'speak_tooltip': mortuaryF3R1GraphicsMenuLogic.zm1146_speak_tooltip,
        'speak_action': mortuaryF3R1GraphicsMenuLogic.zm1146_speak_action
    }, {
        'when': mortuaryF3R1GraphicsMenuLogic.when_zf1148,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 1260,
        'ypos': 400,
        'speak_tooltip': mortuaryF3R1GraphicsMenuLogic.zf1148_speak_tooltip,
        'speak_action': mortuaryF3R1GraphicsMenuLogic.zf1148_speak_action
    }]


label mortuary_f3r1_graphics_menu:
    call screen mortuary_f3r1_graphics_menu_screen


screen mortuary_f3r1_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f3r1',
        mortuary_f3r1_walking,
        mortuary_f3r1_talking
    )
