init 10 python:
    def tooltip_displayable(tt_value):
        last_state         = None
        cached_displayable = None
        def update(st, at):
            nonlocal last_state, cached_displayable
            current_state = (tt_value != '')
            if current_state != last_state:
                last_state = current_state
                cached_displayable = Frame('gui_tooltip', alpha=1.0 if current_state else 0.0)
            return cached_displayable, 0.1
        return DynamicDisplayable(update)


    ###


    def mouse_coords_displayable(xadj, yadj, zadj):
        last_values = None
        text        = ''
        def update(st, at):
            nonlocal last_values, text
            vp_x, vp_y     = renpy.get_mouse_pos()
            zoom           = 1 + zadj.value
            img_x          = (vp_x + xadj.value) / zoom
            img_y          = (vp_y + yadj.value) / zoom
            current_values = (round(img_x), round(img_y), round(zoom, 2))
            if current_values != last_values:
                last_values = current_values
                text = Text(
                    f'{current_values[0]}, {current_values[1]} x{current_values[2]}',
                    style='screen_location_map_style_mouse_text'
                )
            return text, 0.1  # Обновляем раз в 100 мс
        return DynamicDisplayable(update)


    ###


    class CachedActionButton:
        def __init__(self, button):
            self.button          = button
            self._cached_pos     = None
            self._cached_when    = None
            self._cached_texture = None
            self._cached_tooltip = None
            self._cached_jump    = None
            self._dirty          = True
        def update_cache(self):
            if self._dirty:
                self._cached_pos     = self.button.pos()
                self._cached_when    = self.button.when()
                self._cached_texture = self.button.texture()
                self._cached_tooltip = self.button.tooltip()
                self._cached_jump    = self.button.jump()
                self._dirty          = False
        def pos(self):
            self.update_cache()
            return self._cached_pos
        def when(self):
            self.update_cache()
            return self._cached_when
        def texture(self):
            self.update_cache()
            return self._cached_texture
        def tooltip(self):
            self.update_cache()
            return self._cached_tooltip
        def jump(self):
            self.update_cache()
            return self._cached_jump
    class CachedShadowButton:
        def __init__(self, button):
            self.button                 = button
            self._cached_when_unvisited = None
            self._cached_when_visited   = None
            self._cached_pos            = None
            self._cached_texture        = None
            self._dirty                 = True
        def update_cache(self):
            if self._dirty:
                self._cached_when_unvisited = self.button.when_unvisited()
                self._cached_when_visited   = self.button.when_visited()
                self._cached_pos            = self.button.pos()
                self._cached_texture        = self.button.texture()
                self._dirty                 = False
        def when_unvisited(self):
            self.update_cache()
            return self._cached_when_unvisited
        def when_visited(self):
            self.update_cache()
            return self._cached_when_visited
        def pos(self):
            self.update_cache()
            return self._cached_pos
        def texture(self):
            self.update_cache()
            return self._cached_texture


default screen_location_map_xadj = MyAdjustment(value=700)
default screen_location_map_yadj = MyAdjustment(value=2000)
default screen_location_map_zadj = MyAdjustment(value=0)


screen screen_location_map(
    background,
    static_actions,  # only one possible action: door (go through), chest (loot)
    dynamic_actions, # sevaral possible actions: npc (talk, steal, kill)
    get_party,           # npc
    shadows          # images to hide rooms other, than player currently is
):
    default screen_location_map_tt                     = Tooltip('')
    default screen_location_map_bg_size                = renpy.render(renpy.displayable(background), 0, 0, 0, 0).get_size()
    default screen_location_map_cached_static_actions  = [CachedActionButton(b) for b in static_actions]
    default screen_location_map_cached_dynamic_actions = [CachedActionButton(b) for b in dynamic_actions]
    default screen_location_map_cached_party           = [CachedActionButton(b) for b in get_party()]
    default screen_location_map_cached_shadows         = [CachedShadowButton(b) for b in shadows]

    frame:
        background None
        xysize (config.screen_width, config.screen_height)
        padding (0, 0)
        align (0.5, 0.5)

        zoom_viewport:
            xysize (config.screen_width, config.screen_height)
            draggable True
            mousewheel 'zoom'
            start_zoom 1 + screen_location_map_zadj.value
            zoom_min 1
            zoom_max 3
            zoom_amount 0.1
            xadjustment screen_location_map_xadj
            yadjustment screen_location_map_yadj
            zadjustment screen_location_map_zadj

            frame:
                xysize (int(screen_location_map_bg_size[0]), int(screen_location_map_bg_size[1]))
                anchor (0.5, 0.5)
                add background:
                    align (0.5, 0.5)


                for static_action_button in screen_location_map_cached_static_actions:
                    if not static_action_button.when():
                        continue

                    $ _idle, _hover = get_cached_menu_item(static_action_button.texture())
                    imagebutton:
                        pos (static_action_button.pos()['x'], static_action_button.pos()['y'])
                        anchor (0.5, 0.5)
                        idle _idle
                        hover _hover
                        action ExecuteNavigationDirective(static_action_button.jump())
                        hovered screen_location_map_tt.Action(static_action_button.tooltip())
                        unhovered screen_location_map_tt.Action('')


                for dynamic_action_button in screen_location_map_cached_dynamic_actions:
                    if not dynamic_action_button.when():
                        continue

                    imagebutton:
                        pos (dynamic_action_button.pos()['x'], dynamic_action_button.pos()['y'])
                        anchor (0.5, 0.5)
                        idle dynamic_action_button.texture()

                    $ _idle, _hover = get_cached_menu_item('images_icons_speak_idle')
                    imagebutton:
                        pos (dynamic_action_button.pos()['x'] + 40, dynamic_action_button.pos()['y'] - 20)
                        anchor (0.5, 0.5)
                        idle _idle
                        hover _hover
                        action ExecuteNavigationDirective(dynamic_action_button.jump())
                        hovered screen_location_map_tt.Action(dynamic_action_button.tooltip())
                        unhovered screen_location_map_tt.Action('')


                for party_button in screen_location_map_cached_party:
                    if not party_button.when():
                        continue

                    imagebutton:
                        pos (party_button.pos()['x'], party_button.pos()['y'])
                        anchor (0.5, 0.5)
                        idle party_button.texture()

                    $ _idle, _hover = get_cached_menu_item('images_icons_speak_idle')
                    imagebutton:
                        pos (party_button.pos()['x'] + 40, party_button.pos()['y'] - 20)
                        anchor (0.5, 0.5)
                        idle _idle
                        hover _hover
                        action ExecuteNavigationDirective(party_button.jump())
                        hovered screen_location_map_tt.Action(party_button.tooltip())
                        unhovered screen_location_map_tt.Action('')


                for shadow in screen_location_map_cached_shadows:
                    if shadow.when_unvisited() or shadow.when_visited():
                        $ _idle, _hover = get_cached_shadow(shadow.texture())
                        imagebutton:
                            pos (shadow.pos()['x'], shadow.pos()['y'])
                            anchor (0.5, 0.5)
                            if shadow.when_unvisited():
                                idle _idle
                            if shadow.when_visited():
                                idle _hover
                                # idle Transform(shadow.texture(), matrixcolor=colorized_opacity) # for development usage


    frame:
        xysize (600, 50)
        align (0.5, 0.0)
        if screen_location_map_tt.value:
            background 'gui_tooltip'
        else:
            background None

        if screen_location_map_tt.value:
            text _(screen_location_map_tt.value):
                style 'screen_location_map_style_tooltip'
                align (0.5, 0.5)


    if _preferences.show_mouse_screen:
        add mouse_coords_displayable(screen_location_map_xadj, screen_location_map_yadj, screen_location_map_zadj):
            align (0.0, 1.0)


style screen_location_map_style_tooltip:
    size 18
    color color_yellow
style screen_location_map_style_mouse_text:
    size 16
    color color_yellow
    font font_notosans
