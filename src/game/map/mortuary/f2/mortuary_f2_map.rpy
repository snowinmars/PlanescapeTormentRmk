init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f2.items import (
        InMortuaryF2R1PickScalpel,
        FromMortuaryF2R1ToMortuaryF2R2,
        FromMortuaryF2R1ToMortuaryF2R8,
        FromMortuaryF2R1ToMortuaryF3R1,
        FromMortuaryF2R1ToMortuaryF1R1,
        InMortuaryF2R1Zm569,
        InMortuaryF2R1Zm825,
        InMortuaryF2R1Zm782,
        MortuaryF2R1Shadow,

        FromMortuaryF2R2ToMortuaryF2R1,
        FromMortuaryF2R2ToMortuaryF2R3,
        InMortuaryF2R2Zm965,
        InMortuaryF2R2Zf594,
        InMortuaryF2R2Zf626,
        MortuaryF2R2Shadow,

        FromMortuaryF2R3ToMortuaryF2R2,
        FromMortuaryF2R3ToMortuaryF2R4,
        InMortuaryF2R3Dhall,
        InMortuaryF2R3Zm396,
        InMortuaryF2R3Zm1201,
        InMortuaryF2R3Zf1096,
        InMortuaryF2R3Zf1072,
        MortuaryF2R3Shadow,

        FromMortuaryF2R4ToMortuaryF2R3,
        FromMortuaryF2R4ToMortuaryF2R5,
        InMortuaryF2R4Zm1664,
        MortuaryF2R4Shadow,

        FromMortuaryF2R5ToMortuaryF2R4,
        FromMortuaryF2R5ToMortuaryF2R6,
        InMortuaryF2R5Eivene,
        InMortuaryF2R5Zm257,
        InMortuaryF2R5Zm506,
        InMortuaryF2R5Zm985,
        MortuaryF2R5Shadow,

        FromMortuaryF2R6ToMortuaryF2R5,
        FromMortuaryF2R6ToMortuaryF2R7,
        InMortuaryF2R6Vaxis,
        MortuaryF2R6Shadow,

        FromMortuaryF2R7ToMortuaryF2R6,
        FromMortuaryF2R7ToMortuaryF2R8,
        FromMortuaryF2R7ToMortuaryF3R3,
        FromMortuaryF2R7ToMortuaryF1R4,
        InMortuaryF2R7PickEmbalm,
        InMortuaryF2R7PickCopperEarringClosed,
        MortuaryF2R7Shadow,

        FromMortuaryF2R8ToMortuaryF2R7,
        FromMortuaryF2R8ToMortuaryF2R1,
        InMortuaryF2R8Zf891,
        MortuaryF2R8Shadow
    )


default _mortuary_f2_map_xadj = MyAdjustment(value=0)
default _mortuary_f2_map_yadj = MyAdjustment(value=0)
default _mortuary_f2_map_zadj = MyAdjustment(value=1)


label mortuary_f2_map:
    call screen mortuary_f2_map()


screen mortuary_f2_map():
    $ state_manager = runtime.global_state_manager
    use _mortuary_f2_map(
        'bg/mortuary/f2/root.png',
        [
            InMortuaryF2R1PickScalpel(state_manager, 900, 2280),
            FromMortuaryF2R1ToMortuaryF2R2(state_manager, 633, 2299),
            FromMortuaryF2R1ToMortuaryF2R8(state_manager, 1658, 2842),
            FromMortuaryF2R1ToMortuaryF3R1(state_manager, 1298, 2139),
            FromMortuaryF2R1ToMortuaryF1R1(state_manager, 1138, 2139),

            FromMortuaryF2R2ToMortuaryF2R1(state_manager, 633, 2299),
            FromMortuaryF2R2ToMortuaryF2R3(state_manager, 475, 1338),

            FromMortuaryF2R3ToMortuaryF2R2(state_manager, 475, 1338),
            FromMortuaryF2R3ToMortuaryF2R4(state_manager, 1306, 602),

            FromMortuaryF2R4ToMortuaryF2R3(state_manager, 1306, 602),
            FromMortuaryF2R4ToMortuaryF2R5(state_manager, 2745, 474),

            FromMortuaryF2R5ToMortuaryF2R4(state_manager, 2745, 474),
            FromMortuaryF2R5ToMortuaryF2R6(state_manager, 3738, 1114),

            FromMortuaryF2R6ToMortuaryF2R5(state_manager, 3738, 1114),
            FromMortuaryF2R6ToMortuaryF2R7(state_manager, 3835, 2106),

            FromMortuaryF2R7ToMortuaryF2R6(state_manager, 3835, 2106),
            FromMortuaryF2R7ToMortuaryF2R8(state_manager, 3002, 2746),
            FromMortuaryF2R7ToMortuaryF3R3(state_manager, 3205, 2001),
            FromMortuaryF2R7ToMortuaryF1R4(state_manager, 3323, 2010),
            InMortuaryF2R7PickEmbalm(state_manager, 3189, 2193),
            InMortuaryF2R7PickCopperEarringClosed(state_manager, 3058, 1966),

            FromMortuaryF2R8ToMortuaryF2R7(state_manager, 3002, 2746),
            FromMortuaryF2R8ToMortuaryF2R1(state_manager, 1658, 2842)
        ],
        [
            *get_party(state_manager, mortuaryF2LootLogic.get_where_party_stands(state_manager)),

            InMortuaryF2R1Zm569(state_manager, 950, 2450),
            InMortuaryF2R1Zm782(state_manager, 1275, 2750),
            InMortuaryF2R1Zm825(state_manager, 1200, 2530),

            InMortuaryF2R2Zm965(state_manager, 580, 2000),
            InMortuaryF2R2Zf594(state_manager, 580, 1700),
            InMortuaryF2R2Zf626(state_manager, 839, 1850),

            InMortuaryF2R3Dhall(state_manager, 1350, 1250),
            InMortuaryF2R3Zm396(state_manager, 860, 960),
            InMortuaryF2R3Zm1201(state_manager, 1060, 760),
            InMortuaryF2R3Zf1096(state_manager, 1460, 1060),
            InMortuaryF2R3Zf1072(state_manager, 1600, 1460),

            InMortuaryF2R4Zm1664(state_manager, 2070, 900),

            InMortuaryF2R5Eivene(state_manager, 3125, 750),
            InMortuaryF2R5Zm257(state_manager, 2960, 840),
            InMortuaryF2R5Zm506(state_manager, 3060, 1100),
            InMortuaryF2R5Zm985(state_manager, 2610, 1370),

            InMortuaryF2R6Vaxis(state_manager, 3880, 1700),

            InMortuaryF2R8Zf891(state_manager, 2300, 2600)
        ],
        [
            MortuaryF2R1Shadow(state_manager, 1265, 2390),
            MortuaryF2R2Shadow(state_manager, 865, 1750),
            MortuaryF2R3Shadow(state_manager, 1125, 975),
            MortuaryF2R4Shadow(state_manager, 2050, 700),
            MortuaryF2R5Shadow(state_manager, 3100, 875),
            MortuaryF2R6Shadow(state_manager, 3425, 1550),
            MortuaryF2R7Shadow(state_manager, 3227, 2280),
            MortuaryF2R8Shadow(state_manager, 2320, 2620),
        ],
        audio.mortuary
    )


screen _mortuary_f2_map(background, static_actions, dynamic_actions, shadows, bg_music):
    on "show" action SmartPlayMusic(bg_music)
    on "show" action Hide("narrat")

    default tt = Tooltip('')

    default bg_displayable = renpy.displayable(background)
    default bg_size = renpy.render(bg_displayable, 0, 0, 0, 0).get_size()


    frame:
        background None
        xysize (config.screen_width, config.screen_height)
        padding (0, 0)
        align (0.5, 0.5)

        zoom_viewport:
            xysize (config.screen_width, config.screen_height)
            draggable True
            id "zoom_vp"
            mousewheel "zoom"
            start_zoom 1
            zoom_min 1
            zoom_max 10
            zoom_amount 2
            zoom_speed 0.05
            xadjustment _mortuary_f2_map_xadj
            yadjustment _mortuary_f2_map_yadj
            zadjustment _mortuary_f2_map_zadj

            frame:
                xsize int(bg_size[0])
                ysize int(bg_size[1])
                anchor (0.5, 0.5)
                add background:
                    xalign 0.5
                    yalign 0.5

                for static_action_button in static_actions:
                    if not static_action_button.when():
                        continue

                    imagebutton:
                        idle static_action_button.texture()
                        hover Transform(static_action_button.texture(), matrixcolor=BrightnessMatrix(0.2))
                        xpos static_action_button.pos()['x']
                        ypos static_action_button.pos()['y']
                        action ExecuteNavigationDirective(static_action_button.jump())
                        hovered tt.Action(static_action_button.tooltip())
                        unhovered tt.Action('')
                        anchor (0.5, 0.5)

                for dynamic_action_button in dynamic_actions:
                    if not dynamic_action_button.when():
                        continue

                    imagebutton:
                        idle dynamic_action_button.texture()
                        # hover Transform(dynamic_action_button.texture(), matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                        xpos dynamic_action_button.pos()['x']
                        ypos dynamic_action_button.pos()['y']
                        anchor (0.5, 0.5)

                    imagebutton:
                        idle 'images/icons/speak_idle.png'
                        hover Transform('images/icons/speak_hover.png', matrixcolor=BrightnessMatrix(0.2))
                        xpos dynamic_action_button.pos()['x'] + 40
                        ypos dynamic_action_button.pos()['y'] - 20
                        action ExecuteNavigationDirective(dynamic_action_button.jump())
                        hovered tt.Action(dynamic_action_button.tooltip())
                        unhovered tt.Action('')
                        anchor (0.5, 0.5)

                for shadow in shadows:
                    if shadow.when_unvisited():
                        imagebutton:
                            idle Transform(shadow.texture(), matrixcolor=OpacityMatrix(1))
                            xpos shadow.pos()['x']
                            ypos shadow.pos()['y']
                            anchor (0.5, 0.5)
                    if shadow.when_visited():
                        imagebutton:
                            idle Transform(shadow.texture(), matrixcolor=OpacityMatrix(0.9)) # * ColorizeMatrix("#ff0000", '#00ff00')
                            xpos shadow.pos()['x']
                            ypos shadow.pos()['y']
                            anchor (0.5, 0.5)

    frame:
        xalign 0.5
        yalign 0.0
        xsize 600
        ysize 50

        if tt.value:
            background Transform('gui/tooltip.png', fit='cover') at ease_in_background
        else:
            background Transform('gui/tooltip.png', fit='cover') at ease_out_background

        text _(tt.value):
            size 18
            color '#dbc401'
            xalign 0.5
            yalign 0.5

    if _preferences.show_mouse_screen:
        frame:
            xalign 0.0
            yalign 1.0

            # default vp = renpy.get_widget(screen="mortuary_f2_map", id="zoom_vp")
            # $ img_x, img_y = vp.get_cursor_coordinates() # TODO [snow]: why there is the difference between this and that?
            $ vp_x, vp_y = renpy.get_mouse_pos()
            $ scaled_x = vp_x + _mortuary_f2_map_xadj.value
            $ scaled_y = vp_y + _mortuary_f2_map_yadj.value
            $ zoom = (1 + _mortuary_f2_map_zadj.value)
            $ img_x = scaled_x / zoom
            $ img_y = scaled_y / zoom

            label "{font=NotoSans-Regular.ttf}[round(img_x)] , [round(img_y)] x[round(zoom, 2)]{/font}":
                text_color '#dbc401'
                text_size 16
                # action CopyToClipboard('[offset_x], [offset_y]')


transform ease_in_background:
    alpha 0.0
    easein 0.1 alpha 1.0


transform ease_out_background:
    alpha 1.0
    easeout 0.1 alpha 0.0