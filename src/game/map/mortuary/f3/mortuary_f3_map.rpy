init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f3.items import (
        FromMortuaryF3R1ToMortuaryF2R1,
        FromMortuaryF3R1uToMortuaryF3Rc,
        FromMortuaryF3R1dToMortuaryF3Rc,
        MortuaryF3R1Shadow,

        FromMortuaryF3R2lToMortuaryF3Rc,
        FromMortuaryF3R2rToMortuaryF3Rc,
        MortuaryF3R2Shadow,
        InMortuaryF3R2PickTaskList,

        FromMortuaryF3R3ToMortuaryF2R7,
        FromMortuaryF3R3uToMortuaryF3Rc,
        FromMortuaryF3R3dToMortuaryF3Rc,
        MortuaryF3R3Shadow,

        FromMortuaryF3R4lToMortuaryF3Rc,
        FromMortuaryF3R4rToMortuaryF3Rc,
        MortuaryF3R4Shadow,
        InMortuaryF3R4PickPrybar,
        InMortuaryF3R4PickDustmanRequest,
        InMortuaryF3R4Zm79,
        InMortuaryF3R4Zf679,
        InMortuaryF3R4S1221,

        FromMortuaryF3RcToMortuaryF3R1u,
        FromMortuaryF3RcToMortuaryF3R1d,
        FromMortuaryF3RcToMortuaryF3R3u,
        FromMortuaryF3RcToMortuaryF3R3d,
        FromMortuaryF3RcToMortuaryF3R2l,
        FromMortuaryF3RcToMortuaryF3R2r,
        FromMortuaryF3RcToMortuaryF3R4l,
        FromMortuaryF3RcToMortuaryF3R4r,
        MortuaryF3RcShadow,
        InMortuaryF3RcPickGarbage,
        InMortuaryF3RcPickNeedle,
        InMortuaryF3RcPickMortuaryKey,
        InMortuaryF3RcDust,
        InMortuaryF3RcDustfem,
        InMortuaryF3RcS42,
        InMortuaryF3RcS748,
        InMortuaryF3RcS863,
        InMortuaryF3RcS996,
        InMortuaryF3RcZm310,
        InMortuaryF3RcZm475,
        InMortuaryF3RcZm613,
        InMortuaryF3RcZf832,
        InMortuaryF3RcZm1146,
        InMortuaryF3RcZf1148
    )


default _mortuary_f3_map_xadj = MyAdjustment(value=0)
default _mortuary_f3_map_yadj = MyAdjustment(value=0)
default _mortuary_f3_map_zadj = MyAdjustment(value=1)


label mortuary_f3_map:
    call screen mortuary_f3_map()


screen mortuary_f3_map():
    $ state_manager = runtime.global_state_manager
    use _mortuary_f3_map(
        'bg/mortuary/f3/root.png',
        [
            FromMortuaryF3R1ToMortuaryF2R1(state_manager, 751, 1552),
            FromMortuaryF3R1uToMortuaryF3Rc(state_manager, 441, 1193),
            FromMortuaryF3R1dToMortuaryF3Rc(state_manager, 538, 1865),

            FromMortuaryF3R2lToMortuaryF3Rc(state_manager, 1250, 484),
            FromMortuaryF3R2rToMortuaryF3Rc(state_manager, 2183, 437),
            InMortuaryF3R2PickTaskList(state_manager, 1380, 326),

            FromMortuaryF3R3ToMortuaryF2R7(state_manager, 2914, 1405),
            FromMortuaryF3R3uToMortuaryF3Rc(state_manager, 3127, 985),
            FromMortuaryF3R3dToMortuaryF3Rc(state_manager, 3200, 1631),

            FromMortuaryF3R4lToMortuaryF3Rc(state_manager, 1490, 2332),
            FromMortuaryF3R4rToMortuaryF3Rc(state_manager, 2420, 2280),
            InMortuaryF3R4PickPrybar(state_manager, 2031, 2158),
            InMortuaryF3R4PickDustmanRequest(state_manager, 1901, 2131),

            FromMortuaryF3RcToMortuaryF3R1u(state_manager, 441, 1193),
            FromMortuaryF3RcToMortuaryF3R1d(state_manager, 538, 1865),
            FromMortuaryF3RcToMortuaryF3R3u(state_manager, 3127, 985),
            FromMortuaryF3RcToMortuaryF3R3d(state_manager, 3200, 1631),
            FromMortuaryF3RcToMortuaryF3R2l(state_manager, 1250, 484),
            FromMortuaryF3RcToMortuaryF3R2r(state_manager, 2183, 437),
            FromMortuaryF3RcToMortuaryF3R4l(state_manager, 1490, 2332),
            FromMortuaryF3RcToMortuaryF3R4r(state_manager, 2420, 2280),
            InMortuaryF3RcPickGarbage(state_manager, 1394, 749),
            InMortuaryF3RcPickNeedle(state_manager, 2144, 665),
            InMortuaryF3RcPickMortuaryKey(state_manager, 847, 1756),
        ],
        [
            *get_party(state_manager, mortuaryF3LootLogic.get_where_party_stands(state_manager)),

            InMortuaryF3R4Zm79(state_manager, 1660, 2260),
            InMortuaryF3R4Zf679(state_manager, 1620, 2300),
            InMortuaryF3R4S1221(state_manager, 1600, 2360),

            InMortuaryF3RcDust(state_manager, 2575, 1700),
            InMortuaryF3RcDustfem(state_manager, 925, 1825),
            InMortuaryF3RcS42(state_manager, 1700, 1100),
            InMortuaryF3RcS748(state_manager, 2900, 950),
            InMortuaryF3RcS863(state_manager, 750, 750),
            InMortuaryF3RcS996(state_manager, 2800, 900),
            InMortuaryF3RcZm310(state_manager, 2450, 1700),
            InMortuaryF3RcZm475(state_manager, 2000, 960),
            InMortuaryF3RcZm613(state_manager, 1300, 1700),
            InMortuaryF3RcZf832(state_manager, 2800, 1800),
            InMortuaryF3RcZm1146(state_manager, 750, 950),
            InMortuaryF3RcZf1148(state_manager, 1400, 1000),
        ],
        [
            MortuaryF3R1Shadow(state_manager, 465, 1422),
            MortuaryF3R2Shadow(state_manager, 1705, 400),
            MortuaryF3R3Shadow(state_manager, 3220, 1253),
            MortuaryF3R4Shadow(state_manager, 1960, 2280),
            MortuaryF3RcShadow(state_manager, 1809, 1250),
        ],
        audio.mortuary
    )


screen _mortuary_f3_map(background, static_actions, dynamic_actions, shadows, bg_music):
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
            xadjustment _mortuary_f3_map_xadj
            yadjustment _mortuary_f3_map_yadj
            zadjustment _mortuary_f3_map_zadj

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

            # default vp = renpy.get_widget(screen="mortuary_f3_map", id="zoom_vp")
            # $ img_x, img_y = vp.get_cursor_coordinates() # TODO [snow]: why there is the difference between this and that?
            $ vp_x, vp_y = renpy.get_mouse_pos()
            $ scaled_x = vp_x + _mortuary_f3_map_xadj.value
            $ scaled_y = vp_y + _mortuary_f3_map_yadj.value
            $ zoom = (1 + _mortuary_f3_map_zadj.value)
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