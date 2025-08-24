init 10 python:
    from game.engine_data.menus.mortuary.f1rc_graphics_menu_logic import (MortuaryF1RcGraphicsMenuLogic)


    mortuaryF1RcGraphicsMenuLogic = MortuaryF1RcGraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f1rc_walking = [{
        'when': mortuaryF1RcGraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 600,
        'ypos': 190050,
        'action': Function(lambda: renpy.jump(mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r1_action())),
        'tooltip': mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r1_tooltip
    }, {
        'when': mortuaryF1RcGraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 400,
        'ypos': 300,
        'action': Function(lambda: renpy.jump(mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r2_action())),
        'tooltip': mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r2_tooltip
    }, {
        'when': mortuaryF1RcGraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1600,
        'ypos': 200,
        'action': Function(lambda: renpy.jump(mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r3_action())),
        'tooltip': mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r3_tooltip
    }, {
        'when': mortuaryF1RcGraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1500,
        'ypos': 900,
        'action': Function(lambda: renpy.jump(mortuaryF1RcGraphicsMenuLogic.to_mortuary_f1r4_action())),
        'tooltip': mortuaryF1R4GraphicsMenuLogic.to_mortuary_f1rc_tooltip
    }]

    mortuary_f1rc_talking = [{
        'when': mortuaryF1RcGraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF1RcGraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF1RcGraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF1RcGraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF1RcGraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF1RcGraphicsMenuLogic.when_giantsk,
        'idle_img': 'images/menu_sprites/giantsk.png',
        'hover_img': 'images/menu_sprites/giantsk.png',
        'xpos': 710,
        'ypos': 880,
        'speak_tooltip': mortuaryF1RcGraphicsMenuLogic.giantsk_speak_tooltip,
        'speak_action': mortuaryF1RcGraphicsMenuLogic.giantsk_speak_action
    }]


label mortuary_f1rc_graphics_menu:
    call screen mortuary_f1rc_graphics_menu_screen


screen mortuary_f1rc_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f1rc',
        mortuary_f1rc_walking,
        mortuary_f1rc_talking
    )
