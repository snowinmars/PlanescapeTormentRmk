default _location_map_xadj = MyAdjustment(value=700)
default _location_map_yadj = MyAdjustment(value=2000)
default _location_map_zadj = MyAdjustment(value=0)


screen location_map(
    background,
    static_actions,  # only one possible action: door (go through), chest (loot)
    dynamic_actions, # sevaral possible actions: npc (talk, kill)
    shadows          # images to hide rooms other, than player currently is
):
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
            id 'zoom_vp'
            mousewheel 'zoom'
            start_zoom 1 + _location_map_zadj.value
            zoom_min 1
            zoom_max 3
            zoom_amount 0.1
            zoom_speed 0.05
            xadjustment _location_map_xadj
            yadjustment _location_map_yadj
            zadjustment _location_map_zadj

            frame:
                xysize (int(bg_size[0]), int(bg_size[1]))
                anchor (0.5, 0.5)
                add background:
                    align (0.5, 0.5)


                for static_action_button in static_actions:
                    if not static_action_button.when():
                        continue

                    imagebutton:
                        pos (static_action_button.pos()['x'], static_action_button.pos()['y'])
                        anchor (0.5, 0.5)
                        idle static_action_button.texture()
                        hover Transform(static_action_button.texture(), matrixcolor=hover_matrix)
                        action ExecuteNavigationDirective(static_action_button.jump())
                        hovered tt.Action(static_action_button.tooltip())
                        unhovered tt.Action('')

                for dynamic_action_button in dynamic_actions:
                    if not dynamic_action_button.when():
                        continue

                    imagebutton:
                        pos (dynamic_action_button.pos()['x'], dynamic_action_button.pos()['y'])
                        anchor (0.5, 0.5)
                        idle dynamic_action_button.texture()

                    imagebutton:
                        pos (dynamic_action_button.pos()['x'] + 40, dynamic_action_button.pos()['y'] - 20)
                        anchor (0.5, 0.5)
                        idle 'images_icons_speak_idle'
                        hover Transform('images_icons_speak_idle', matrixcolor=hover_matrix)
                        action ExecuteNavigationDirective(dynamic_action_button.jump())
                        hovered tt.Action(dynamic_action_button.tooltip())
                        unhovered tt.Action('')

                for shadow in shadows:
                    if shadow.when_unvisited() or shadow.when_visited():
                        imagebutton:
                            pos (shadow.pos()['x'], shadow.pos()['y'])
                            anchor (0.5, 0.5)
                            if shadow.when_unvisited():
                                idle Transform(shadow.texture(), matrixcolor=no_opacity)
                            if shadow.when_visited():
                                idle Transform(shadow.texture(), matrixcolor=small_opacity)
                                # idle Transform(shadow.texture(), matrixcolor=colorized_opacity) # for development usage


    frame:
        xysize (600, 50)
        align (0.5, 0.0)

        if tt.value:
            background 'gui_tooltip' at ease_in_background
        else:
            background 'gui_tooltip' at ease_out_background

        text _(tt.value):
            style '_location_map_screen_style_tooltip'
            align (0.5, 0.5)


    if _preferences.show_mouse_screen:
        frame:
            align (0.0, 1.0)

            # default vp = renpy.get_widget(screen='location_map', id='zoom_vp')
            # $ img_x, img_y = vp.get_cursor_coordinates() # TODO [snow]: why there is the difference between this and that?
            $ vp_x, vp_y = renpy.get_mouse_pos()
            $ scaled_x = vp_x + _location_map_xadj.value
            $ scaled_y = vp_y + _location_map_yadj.value
            $ zoom = (1 + _location_map_zadj.value)
            $ img_x = scaled_x / zoom
            $ img_y = scaled_y / zoom

            label '[round(img_x)] , [round(img_y)] x[round(zoom, 2)]':
                text_style '_location_map_screen_style_mouse_text'
                # action CopyToClipboard('[offset_x], [offset_y]')


transform ease_in_background:
    alpha 0.0
    easein 0.1 alpha 1.0
transform ease_out_background:
    alpha 1.0
    easeout 0.1 alpha 0.0


style _location_map_screen_style_tooltip:
    size 18
    color color_yellow
style _location_map_screen_style_mouse_text:
    size 16
    color color_yellow
    font font_notosans
