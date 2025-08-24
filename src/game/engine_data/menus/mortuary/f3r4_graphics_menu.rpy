init 10 python:
    from game.engine_data.menus.mortuary.f3r4_graphics_menu_logic import (MortuaryF3R4GraphicsMenuLogic)


    mortuaryF3R4GraphicsMenuLogic = MortuaryF3R4GraphicsMenuLogic(renpy.store.global_settings_manager, renpy.store.global_location_manager)


    mortuary_f3r4_walking = [{
        'when': mortuaryF3R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1500,
        'ypos': 500,
        'action': Function(lambda: renpy.jump(mortuaryF3R4GraphicsMenuLogic.to_mortuary_f3r3_action())),
        'tooltip': mortuaryF3R4GraphicsMenuLogic.to_mortuary_f3r3_tooltip
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 150,
        'ypos': 600,
        'action': Function(lambda: renpy.jump(mortuaryF3R4GraphicsMenuLogic.to_mortuary_f3r1_action())),
        'tooltip': mortuaryF3R4GraphicsMenuLogic.to_mortuary_f3r1_tooltip
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 950,
        'ypos': 650,
        'action': Function(lambda: renpy.jump(mortuaryF3R4GraphicsMenuLogic.to_prybar_action())),
        'tooltip': mortuaryF3R4GraphicsMenuLogic.to_prybar_tooltip
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 820,
        'ypos': 700,
        'action': Function(lambda: renpy.jump(mortuaryF3R4GraphicsMenuLogic.to_dustman_request_action())),
        'tooltip': mortuaryF3R4GraphicsMenuLogic.to_dustman_request_tooltip
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1675,
        'ypos': 150,
        'action': Function(lambda: renpy.jump(mortuaryF3R4GraphicsMenuLogic.to_needle_action())),
        'tooltip': mortuaryF3R4GraphicsMenuLogic.to_needle_tooltip
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.always,
        'idle_img': 'images/icons/open_idle.png',
        'hover_img': 'images/icons/open_hover.png',
        'xpos': 1800,
        'ypos': 200,
        'action': Function(lambda: renpy.jump(mortuaryF3R4GraphicsMenuLogic.to_garbage_action())),
        'tooltip': mortuaryF3R4GraphicsMenuLogic.to_garbage_tooltip
    }]

    mortuary_f3r4_talking = [{
        'when': mortuaryF3R4GraphicsMenuLogic.when_morte,
        'idle_img': 'images/menu_sprites/morte.png',
        'hover_img': 'images/menu_sprites/morte.png',
        'xpos': mortuaryF3R4GraphicsMenuLogic.calc_morte_xpos(),
        'ypos': mortuaryF3R4GraphicsMenuLogic.calc_morte_ypos(),
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.morte_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.morte_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_dustfem,
        'idle_img': 'images/menu_sprites/dustfem.png',
        'hover_img': 'images/menu_sprites/dustfem.png',
        'xpos': 960,
        'ypos': 400,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.dustfem_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.dustfem_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_s42,
        'idle_img': 'images/menu_sprites/skelet.png',
        'hover_img': 'images/menu_sprites/skelet.png',
        'xpos': 560,
        'ypos': 300,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.s42_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.s42_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_zf832,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 1260,
        'ypos': 400,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.zf832_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.zf832_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_zm613,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 360,
        'ypos': 400,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.zm613_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.zm613_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_zm79,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 560,
        'ypos': 750,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.zm79_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.zm79_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_zf679,
        'idle_img': 'images/menu_sprites/zombie.png',
        'hover_img': 'images/menu_sprites/zombie.png',
        'xpos': 485,
        'ypos': 825,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.zf679_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.zf679_speak_action
    }, {
        'when': mortuaryF3R4GraphicsMenuLogic.when_s1221,
        'idle_img': 'images/menu_sprites/skelet.png',
        'hover_img': 'images/menu_sprites/skelet.png',
        'xpos': 410,
        'ypos': 900,
        'speak_tooltip': mortuaryF3R4GraphicsMenuLogic.s1221_speak_tooltip,
        'speak_action': mortuaryF3R4GraphicsMenuLogic.s1221_speak_action
    }]


label mortuary_f3r4_graphics_menu:
    call screen mortuary_f3r4_graphics_menu_screen


screen mortuary_f3r4_graphics_menu_screen():
    use abstract_location_menu_screen(
        'bg mortuary_f3r4',
        mortuary_f3r4_walking,
        mortuary_f3r4_talking
    )
