init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f1.items import (
        FromMortuaryF1R1ToMortuaryF2R1,
        FromMortuaryF1R1ToMortuaryF1R2,
        FromMortuaryF1R1ToMortuaryF1R4,
        FromMortuaryF1R1ToMortuaryF1Rc,
        FromMortuaryF1R1ToGameEnd,
        MortuaryF1R1Shadow,
        InMortuaryF1R1Soego,

        FromMortuaryF1R2ToMortuaryF1Rc,
        FromMortuaryF1R2ToMortuaryF1R3,
        FromMortuaryF1R2ToMortuaryF1R1,
        MortuaryF1R2Shadow,
        InMortuaryF1R2Deionarra,

        FromMortuaryF1R3ToMortuaryF1R2,
        FromMortuaryF1R3ToMortuaryF1R4,
        FromMortuaryF1R3ToMortuaryF1Rc,
        MortuaryF1R3Shadow,
        InMortuaryF1R3Zf114,
        InMortuaryF1R3Zm1041,
        InMortuaryF1R3Xach,

        FromMortuaryF1R4ToMortuaryF1R3,
        FromMortuaryF1R4ToMortuaryF1R1,
        FromMortuaryF1R4ToMortuaryF1Rc,
        FromMortuaryF1R4ToMortuaryF2R7,
        MortuaryF1R4Shadow,
        InMortuaryF1R4Zm732,

        FromMortuaryF1RcToMortuaryF1R1,
        FromMortuaryF1RcToMortuaryF1R2,
        FromMortuaryF1RcToMortuaryF1R3,
        FromMortuaryF1RcToMortuaryF1R4,
        MortuaryF1RcShadow,
        InMortuaryF1RcGiantsk
    )


default _mortuary_f1_map_xadj = MyAdjustment(value=0)
default _mortuary_f1_map_yadj = MyAdjustment(value=0)
default _mortuary_f1_map_zadj = MyAdjustment(value=1)


label mortuary_f1_map:
    call screen mortuary_f1_map()


screen mortuary_f1_map():
    $ state_manager = runtime.global_state_manager
    use _mortuary_f1_map(
        'bg/mortuary/f1/root.png',
        [
            FromMortuaryF1R1ToMortuaryF2R1(state_manager, 1185, 2015),
            FromMortuaryF1R1ToMortuaryF1R2(state_manager, 585, 1717),
            FromMortuaryF1R1ToMortuaryF1R4(state_manager, 2421, 2752),
            FromMortuaryF1R1ToMortuaryF1Rc(state_manager, 1659, 2146),
            FromMortuaryF1R1ToGameEnd(state_manager, 952, 2761),

            FromMortuaryF1R2ToMortuaryF1Rc(state_manager, 1626, 1193),
            FromMortuaryF1R2ToMortuaryF1R3(state_manager, 2080, 385),
            FromMortuaryF1R2ToMortuaryF1R1(state_manager, 585, 1717),

            FromMortuaryF1R3ToMortuaryF1R2(state_manager, 2080, 385),
            FromMortuaryF1R3ToMortuaryF1R4(state_manager, 3947, 1610),
            FromMortuaryF1R3ToMortuaryF1Rc(state_manager, 2950, 1044),

            FromMortuaryF1R4ToMortuaryF1R3(state_manager, 3947, 1610),
            FromMortuaryF1R4ToMortuaryF1R1(state_manager, 2421, 2752),
            FromMortuaryF1R4ToMortuaryF1Rc(state_manager, 2874, 1934),
            FromMortuaryF1R4ToMortuaryF2R7(state_manager, 3494, 1865),

            FromMortuaryF1RcToMortuaryF1R1(state_manager, 1659, 2146),
            FromMortuaryF1RcToMortuaryF1R2(state_manager, 1626, 1193),
            FromMortuaryF1RcToMortuaryF1R3(state_manager, 2950, 1044),
            FromMortuaryF1RcToMortuaryF1R4(state_manager, 2874, 1934)
        ],
        [
            *get_party(state_manager, mortuaryF1LootLogic.get_where_party_stands(state_manager)),

            InMortuaryF1R1Soego(state_manager, 1300, 2600),

            InMortuaryF1R2Deionarra(state_manager, 1050, 1000),

            InMortuaryF1R3Zf114(state_manager, 2400, 400),
            InMortuaryF1R3Zm1041(state_manager, 3200, 900),
            InMortuaryF1R3Xach(state_manager, 3850, 1100),

            InMortuaryF1R4Zm732(state_manager, 3400, 2300),

            InMortuaryF1RcGiantsk(state_manager, 2200, 1250)
        ],
        [
            MortuaryF1R1Shadow(state_manager, 2225, 1775),
            MortuaryF1R2Shadow(state_manager, 2230, 1790),
            MortuaryF1R3Shadow(state_manager, 2230, 1790),
            MortuaryF1R4Shadow(state_manager, 2230, 1790),
            MortuaryF1RcShadow(state_manager, 2230, 1790),
        ],
        audio.mortuary
    )


screen _mortuary_f1_map(background, static_actions, dynamic_actions, shadows, bg_music):
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
            xadjustment _mortuary_f1_map_xadj
            yadjustment _mortuary_f1_map_yadj
            zadjustment _mortuary_f1_map_zadj

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
            $ scaled_x = vp_x + _mortuary_f1_map_xadj.value
            $ scaled_y = vp_y + _mortuary_f1_map_yadj.value
            $ zoom = (1 + _mortuary_f1_map_zadj.value)
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