default _location_map_xadj = MyAdjustment(value=700)
default _location_map_yadj = MyAdjustment(value=2000)
default _location_map_zadj = MyAdjustment(value=0)


screen location_map(background, static_actions, dynamic_actions, shadows, bg_music):
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
            start_zoom 1 + _location_map_zadj.value
            zoom_min 1
            zoom_max 3
            zoom_amount 0.1
            zoom_speed 0.05
            xadjustment _location_map_xadj
            yadjustment _location_map_yadj
            zadjustment _location_map_zadj

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

            # default vp = renpy.get_widget(screen="location_map", id="zoom_vp")
            # $ img_x, img_y = vp.get_cursor_coordinates() # TODO [snow]: why there is the difference between this and that?
            $ vp_x, vp_y = renpy.get_mouse_pos()
            $ scaled_x = vp_x + _location_map_xadj.value
            $ scaled_y = vp_y + _location_map_yadj.value
            $ zoom = (1 + _location_map_zadj.value)
            $ img_x = scaled_x / zoom
            $ img_y = scaled_y / zoom

            label '[round(img_x)] , [round(img_y)] x[round(zoom, 2)]':
                text_color '#dbc401'
                text_size 16
                text_font 'NotoSans-Regular.ttf'
                # action CopyToClipboard('[offset_x], [offset_y]')


transform ease_in_background:
    alpha 0.0
    easein 0.1 alpha 1.0


transform ease_out_background:
    alpha 1.0
    easeout 0.1 alpha 0.0
