init 10 python:
    from game.engine_data.menus.mortuary.f2r3_graphics_menu_logic import (MortuaryF2R3GraphicsMenuLogic)


    mortuaryF2R3GraphicsMenuLogic = MortuaryF2R3GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f2r3_walking = [{
        'when': mortuaryF2R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 960,
        'ypos': 320,
        'action': Function(lambda: renpy.jump(mortuaryF2R3GraphicsMenuLogic.to_mortuary_f2r4_action())),
        'tooltip': mortuaryF2R3GraphicsMenuLogic.to_mortuary_f2r4_tooltip
    }, {
        'when': mortuaryF2R3GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 160,
        'ypos': 1000,
        'action': Function(lambda: renpy.jump(mortuaryF2R3GraphicsMenuLogic.to_mortuary_f2r2_action())),
        'tooltip': mortuaryF2R3GraphicsMenuLogic.to_mortuary_f2r2_tooltip
    }]

    mortuary_f2r3_talking = [{
        'when': mortuaryF2R3GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF2R3GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF2R3GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF2R3GraphicsMenuLogic.morte2_speak_tooltip,
        'speak_action': mortuaryF2R3GraphicsMenuLogic.morte2_speak_action
    }, {
        'when': mortuaryF2R3GraphicsMenuLogic.when_dhall,
        'idle_img': 'images/menu_sprites/dhall.png',
        'hover_img': 'images/menu_sprites/dhall.png',
        'xpos': 950,
        'ypos': 920,
        'speak_tooltip': mortuaryF2R3GraphicsMenuLogic.dhall_speak_tooltip,
        'speak_action': mortuaryF2R3GraphicsMenuLogic.dhall_speak_action
    }, {
        'when': mortuaryF2R3GraphicsMenuLogic.when_zm396,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 560,
        'ypos': 550,
        'speak_tooltip': mortuaryF2R3GraphicsMenuLogic.zm396_speak_tooltip,
        'speak_action': mortuaryF2R3GraphicsMenuLogic.zm396_speak_action
    }, {
        'when': mortuaryF2R3GraphicsMenuLogic.when_zm1201,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 660,
        'ypos': 930,
        'speak_tooltip': mortuaryF2R3GraphicsMenuLogic.zm1201_speak_tooltip,
        'speak_action': mortuaryF2R3GraphicsMenuLogic.zm1201_speak_action
    }, {
        'when': mortuaryF2R3GraphicsMenuLogic.when_zf1096,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 1160,
        'ypos': 950,
        'speak_tooltip': mortuaryF2R3GraphicsMenuLogic.zf1096_speak_tooltip,
        'speak_action': mortuaryF2R3GraphicsMenuLogic.zf1096_speak_action
    }, {
        'when': mortuaryF2R3GraphicsMenuLogic.when_zf1072,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 900,
        'ypos': 600,
        'speak_tooltip': mortuaryF2R3GraphicsMenuLogic.zf1072_speak_tooltip,
        'speak_action': mortuaryF2R3GraphicsMenuLogic.zf1072_speak_action
    }]


label mortuary_f2r3_graphics_menu:
    call screen mortuary_f2r3_graphics_menu_screen


screen mortuary_f2r3_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f2r3',
        mortuary_f2r3_walking,
        mortuary_f2r3_talking
    )
