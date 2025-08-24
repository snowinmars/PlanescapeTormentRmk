init 10 python:
    from game.engine_data.menus.mortuary.f3r2_graphics_menu_logic import (MortuaryF3R2GraphicsMenuLogic)


    mortuaryF3R2GraphicsMenuLogic = MortuaryF3R2GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f3r2_walking = [{
        'when': mortuaryF3R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1500,
        'ypos': 800,
        'action': Function(lambda: renpy.jump(mortuaryF3R2GraphicsMenuLogic.to_mortuary_f3r3_action())),
        'tooltip': mortuaryF3R2GraphicsMenuLogic.to_mortuary_f3r3_tooltip
    }, {
        'when': mortuaryF3R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 150,
        'ypos': 500,
        'action': Function(lambda: renpy.jump(mortuaryF3R2GraphicsMenuLogic.to_mortuary_f3r1_action())),
        'tooltip': mortuaryF3R2GraphicsMenuLogic.to_mortuary_f3r1_tooltip
    }, {
        'when': mortuaryF3R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 400,
        'ypos': 700,
        'action': Function(lambda: renpy.jump(mortuaryF3R2GraphicsMenuLogic.to_pick_garbage_action())),
        'tooltip': mortuaryF3R2GraphicsMenuLogic.to_pick_garbage_tooltip
    }, {
        'when': mortuaryF3R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 400,
        'ypos': 300,
        'action': Function(lambda: renpy.jump(mortuaryF3R2GraphicsMenuLogic.to_pick_mortuary_task_list_action())),
        'tooltip': mortuaryF3R2GraphicsMenuLogic.to_pick_mortuary_task_list_tooltip
    }, {
        'when': mortuaryF3R2GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1200,
        'ypos': 600,
        'action': Function(lambda: renpy.jump(mortuaryF3R2GraphicsMenuLogic.to_pick_needle_action())),
        'tooltip': mortuaryF3R2GraphicsMenuLogic.to_pick_needle_tooltip
    }]

    mortuary_f3r2_talking = [{
        'when': mortuaryF3R2GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF3R2GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF3R2GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF3R2GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF3R2GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF3R2GraphicsMenuLogic.when_dust,
        'idle_img': 'images/menu_sprites/dust.png',
        'hover_img': 'images/menu_sprites/dust.png',
        'xpos': 960,
        'ypos': 900,
        'speak_tooltip': mortuaryF3R2GraphicsMenuLogic.dust_speak_tooltip,
        'speak_action': mortuaryF3R2GraphicsMenuLogic.dust_speak_action
    }]


label mortuary_f3r2_graphics_menu:
    call screen mortuary_f3r2_graphics_menu_screen


screen mortuary_f3r2_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f3r2',
        mortuary_f3r2_walking,
        mortuary_f3r2_talking
    )
