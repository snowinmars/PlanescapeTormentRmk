# https://feniksdev.itch.io/zoom-viewport-for-renpy

################################################################################
##
## Zoom Viewport for Ren'Py by Feniks (feniksdev.itch.io / feniksdev.com)
## v1.0
##
################################################################################
## This file contains code for a zoomable viewport in Ren'Py. There is both
## a CDD to handle the rendering of the viewport, and a screen language keyword
## so it can be easily declared in-game. There's also a special screen action
## for zooming in/out of the viewport.
##
## If you use this code in your projects, credit me as Feniks @ feniksdev.com
##
## If you'd like to see how to use this tool, check the other file,
## zoom_vp_examples.rpy! This is just the backend; you don't need to
## understand everything in this file.
##
## Leave a comment on the tool page on itch.io if you run into any issues.
################################################################################
## CONFIG VALUES
################################################################################
## You may change these to suit your project.
init python in myconfig:
    _constant = True

    ## A period of time in which to ignore zoom events that occur immediately
    ## after a zoom. Mostly useful for touch gestures.
    ZOOM_GRACE_PERIOD = 0.1
    ## A buffer to deal with the inaccuracy of floats when comparing zoom
    ## levels near the maximum and minimum thresholds.
    ZOOM_COMPARISON_BUFFER = 0.002

################################################################################
## Code to archive these files for a distributed game. Do not remove.
init python:
    build.classify("**01_zoom_viewport.rpy", None)
    build.classify("**01_zoom_viewport.rpyc", "archive")
################################################################################
## PYTHON
################################################################################
## This is the backend for the ZoomViewport, a Displayable that allows for
## zooming via the mousewheel and pinch-zooming on touch screens. Later, there
## is also a class for a screen action which handles zooming in/out on button
## press called VPZoom.
python early:
    import pygame

    class ZoomViewport(renpy.display.viewport.Viewport):
        """
        A class which acts as a viewport that can be zoomed into and
        scrolled around.

        Attributes:
        -----------
        child : Displayable
            The child to display in the viewport.
        start_zoom : float
            The initial zoom level of the viewport.
        zoom_min : float
            The minimum zoom level this viewport will allow. If None, this
            will be set such that the entirety of the child is visible.
        zoom_max : float
            The maximum zoom level this viewport will allow.
        zoom_amount : float
            The amount to zoom in or out by when using the mouse wheel.
        zoom_callback : callable
            A function to call when the zoom level changes. This function
            should take three arguments, the old zoom level, the new zoom
            level and the ZoomViewport.
        zoom_speed : float
            The speed at which adjustments reset positions, such as when
            switching gallery images or zooming in.
        zoom_curve : callable
            A function to adjust the amount that is zoomed based on the
            percentage the viewport is currently zoomed in. Useful for zooming
            in smaller increments when zoomed out but by larger increments
            when zoomed in.
        zoom_align : tuple
            The alignment of the zoom. This is a tuple of two floats, the first
            for the x-axis and the second for the y-axis. It can also be None
            for no alignment at all. If provided, this is used to adjust the
            position of the viewport child when fully zoomed out such that one
            dimension is smaller than the viewport dimension. The most common
            value is (0.5, 0.5), which centers the child in the viewport.
        position_callback : callable
            A function to call when the position of the viewport changes. This
            function should take three arguments, the x and y offsets of the
            viewport and the ZoomViewport itself.

        known_size : bool
            Whether the size of the viewport is known (recorded after it's
            rendered for the first time).
        transform : Transform
            The child, with the appropriate zoom level applied.
        zoom : float
            The current zoom level of the viewport.
        old_zoom : float
            Used to remember the last zoom level for the callback.
        zadjustment : MyAdjustment
            An Adjustment to handle animating the zoom smoothly.
        drift_target : float
            The target zoom level to drift to.
        zoom_anchor : tuple
            The anchor on the child to zoom around. Used to zoom to the cursor
            or the position between the player's fingers.
        touch_screen_mode : bool
            Whether to allow multi-touch gestures. Automatically true for
            touch screens like phones and tablets and False otherwise. Used to
            avoid conflict between mouse and touch events (as will occur if
            you're using a touch screen laptop without touch events on).
        fingers : list
            Information on the fingers currently touching the screen.
        finger_lookup : dict
            A lookup table to find the finger object from the finger id.
        drag_finger : Finger
            The finger that is currently dragging the viewport.
        x_scale : float
            For multi-touch events, the event method gets the wrong
            coordinates so we have to correct for the event-provided
            coordinates which are relative to the screen.
        y_scale : float
            See above.
        in_multi_gesture : set
            The fingers currently in a multi-touch gesture.
        last_zoom_st : float
            Tracks the time the last zoom occurred. Used with ZOOM_GRACE_PERIOD
            to ignore events that occur immediately after a zoom.
        """

        def __init__(self, child=None, start_zoom=1.0, zoom_min=None,
                zoom_max=2.0, zoom_amount=0.25, zoom_callback=None,
                zoom_speed=0.4, zoom_curve=None, zoom_align=None,
                position_callback=None, **kwargs):
            """
            Initialize the ZoomViewport.

            Parameters:
            -----------
            child : Displayable
                The child to display in the viewport.
            start_zoom : float
                The initial zoom level of the viewport.
            zoom_min : float
                The minimum zoom level this viewport will allow. If None, this
                will be set such that the entirety of the child is visible.
            zoom_max : float
                The maximum zoom level this viewport will allow.
            zoom_amount : float
                The amount to zoom in or out by when using the mouse wheel.
            zoom_callback : callable
                A function to call when the zoom level changes. This function
                should take three arguments, the old zoom level, the new zoom
                level and the ZoomViewport.
            zoom_speed : float
                The speed at which adjustments reset positions, such as when
                switching gallery images or zooming in.
            zoom_curve : callable
                A function to adjust the amount that is zoomed based on the
                percentage the viewport is currently zoomed in. Useful for
                zooming in smaller increments when zoomed out but by larger
                increments when zoomed in.
            zoom_align : tuple
                The alignment of the zoom. This is a tuple of two floats, the
                first for the x-axis and the second for the y-axis. It can also
                be None for no alignment at all. If provided, this is used to
                adjust the position of the viewport child when fully zoomed out
                such that one dimension is smaller than the viewport dimension.
                The most common value is (0.5, 0.5), which centers the child in
                the viewport.
            position_callback : callable
                A function to call when the position of the viewport changes.
                This function should take three arguments, the x and y offsets
                of the viewport and the ZoomViewport itself.
            """
            ## Temporary values until the viewport is rendered.
            self.known_size = False
            self.transform = None

            self.zoom_max = zoom_max
            self.zoom_min = zoom_min
            self.zoom = start_zoom
            self.zoom_amount = abs(zoom_amount)
            self.zoom_callback = zoom_callback
            self.old_zoom = self.zoom
            # self.zadjustment = MyAdjustment(1, 0)

            self.zoom_speed = zoom_speed
            self.zoom_curve = zoom_curve
            self.zoom_align = zoom_align
            self.position_callback = position_callback

            ## Where to zoom to if a button is zooming in/out
            self.drift_target = None
            ## Where the zoom is centered around
            self.zoom_anchor = (0.5, 0.5)
            kwargs["child"] = child
            ## Restart the interaction to update the UI if the range changes
            ## due to zooming.
            kwargs["xadjustment"] = kwargs.pop("xadjustment", MyAdjustment(1, 0))
            try:
                if kwargs["xadjustment"].restart_interaction_at_range is None:
                    kwargs["xadjustment"].restart_interaction_at_range = True
            except:
                pass
            kwargs["yadjustment"] = kwargs.pop("yadjustment", MyAdjustment(1, 0))
            try:
                if kwargs["yadjustment"].restart_interaction_at_range is None:
                    kwargs["yadjustment"].restart_interaction_at_range = True
            except:
                pass
            kwargs["zadjustment"] = kwargs.pop("zadjustment", MyAdjustment(1, 0))
            self.zadjustment = kwargs["zadjustment"]
            try:
                if kwargs["zadjustment"].restart_interaction_at_range is None:
                    kwargs["zadjustment"].restart_interaction_at_range = True
            except:
                pass

            if self.position_callback is not None:
                self.old_xadjustment_changed = kwargs['xadjustment'].changed
                self.old_yadjustment_changed = kwargs['yadjustment'].changed
                self.old_zadjustment_changed = kwargs['zadjustment'].changed
                kwargs['xadjustment'].changed = self.changed_xadjustment
                kwargs['yadjustment'].changed = self.changed_yadjustment
                kwargs['zadjustment'].changed = self.changed_zadjustment

            super(ZoomViewport, self).__init__(**kwargs)
            ## Whether to allow multi-touch gestures.
            self.touch_screen_mode = renpy.variant("touch")
            ## Information on the fingers currently touching the screen
            self.fingers = [ ]
            self.finger_lookup = dict()
            self.drag_finger = None
            ## For multi-touch events; the event method gets the wrong
            ## coordinates so we have to correct for the event-provided
            ## coordinates which are relative to the screen.
            self.x_scale = None
            self.y_scale = None
            self.in_multi_gesture = set()
            self.last_zoom_st = None

        def changed_xadjustment(self, new_value):
            """
            A method called when the xadjustment changes. Used to call the
            position_callback.
            """
            if self.old_xadjustment_changed:
                self.old_xadjustment_changed(new_value)
            self.position_callback(self.xadjustment.value, self.yadjustment.value, self.zadjustment.value, self)

        def changed_yadjustment(self, new_value):
            """
            A method called when the yadjustment changes. Used to call the
            position_callback.
            """
            if self.old_yadjustment_changed:
                self.old_yadjustment_changed(new_value)
            self.position_callback(self.xadjustment.value, self.yadjustment.value, self.zadjustment.value, self)

        def changed_zadjustment(self, new_value):
            """
            A method called when the zadjustment changes. Used to call the
            position_callback.
            """
            if self.old_zadjustment_changed:
                self.old_zadjustment_changed(new_value)
            self.position_callback(self.xadjustment.value, self.yadjustment.value, self.zadjustment.value, self)

        def per_interact(self):
            """
            A method called once per interaction. Used to register the
            MyAdjustment to the viewport.
            """
            self.zadjustment.register(self)
            super(ZoomViewport, self).per_interact()

        def set_size(self, cw, ch):
            """
            Set the size of the viewport and update the zadjustment range and
            value.
            """
            self.known_size = True
            self.child_width = self.child_width or cw
            self.child_height = self.child_height or ch
            ## The minimum zoom has the whole child in view if it's None.
            if self.zoom_min is None:
                self.zoom_min = min(self.width / float(cw), self.height / float(ch))
                self.zoom = min(max(self.zoom, self.zoom_min), self.zoom_max)
            self.zadjustment.range = self.zoom_max-self.zoom_min
            self.zadjustment.value = self.zoom-self.zoom_min
            self.zadjustment.update()
            renpy.restart_interaction()

        def clamp_zoom(self, new_zoom=None):
            """
            Clamp the zoom to the minimum and maximum values.
            """
            if new_zoom is not None:
                new_zoom = max(new_zoom, self.zoom_min)
                new_zoom = min(new_zoom, self.zoom_max)
                return new_zoom
            self.zoom = max(self.zoom, self.zoom_min)
            self.zoom = min(self.zoom, self.zoom_max)
            if self.zadjustment.restart_interaction_at_limit:
                if self.old_zoom != self.zoom and (
                        ((self.zoom + myconfig.ZOOM_COMPARISON_BUFFER) >= self.zoom_max
                            and self.old_zoom < self.zoom)
                        or ((self.zoom - myconfig.ZOOM_COMPARISON_BUFFER) <= self.zoom_min
                            and self.old_zoom > self.zoom)):
                    ## Hit a limit
                    renpy.restart_interaction()
                elif self.old_zoom != self.zoom and (
                        ((self.old_zoom + myconfig.ZOOM_COMPARISON_BUFFER) >= self.zoom_max
                            and self.zoom < self.old_zoom)
                        or ((self.old_zoom - myconfig.ZOOM_COMPARISON_BUFFER) <= self.zoom_min
                            and self.zoom > self.old_zoom)):
                    ## Moving away from a limit
                    renpy.restart_interaction()
            if self.zoom_callback is not None:
                ret = renpy.run(self.zoom_callback, self.old_zoom, self.zoom, self)
                if ret is not None:
                    renpy.end_interaction(ret)
            self.old_zoom = self.zoom

        def redraw_adjustments(self, st):
            """
            Redraw the adjustments.
            """
            if not self.known_size:
                return
            start_zoom = self.zadjustment.value+self.zoom_min
            redraw = self.zadjustment.periodic(st)
            if redraw is not None:
                self.zoom = self.zadjustment.value + self.zoom_min
                self.last_zoom_st = st
                self.clamp_zoom()
                zoom_xadj, zoom_yadj = self.adjust_pos_for_zoom(start_zoom, self.zoom)
                new_xvalue = self.xadjustment.value + zoom_xadj
                new_yvalue = self.yadjustment.value + zoom_yadj
                if new_xvalue > self.xadjustment.range:
                    self.xadjustment.range = new_xvalue
                    self.xadjustment.update()
                if new_yvalue > self.yadjustment.range:
                    self.yadjustment.range = new_yvalue
                    self.yadjustment.update()
                self.xadjustment.change(new_xvalue)
                self.yadjustment.change(new_yvalue)
                renpy.redraw(self, redraw)

        def adjust_pos_for_zoom(self, start_zoom, end_zoom):
            """
            Adjust the position of the image such that it appears to be
            zooming in from the anchor point.
            Returns an (x, y) tuple for the offset.
            """

            if start_zoom == end_zoom:
                # No change
                return (0, 0)

            xpos, ypos = self.offsets[0]
            xanchor, yanchor = self.zoom_anchor
            if isinstance(xanchor, float):
                xanchor = int(xanchor * self.width)
            if isinstance(yanchor, float):
                yanchor = int(yanchor * self.height)
            xanchor -= xpos
            yanchor -= ypos

            ## What's the distance from the anchor point to the top left corner?
            ## e.g. 125, 125 at 125%, we want (100, 100) at 100%
            original_xanchor = xanchor / start_zoom
            original_yanchor = yanchor / start_zoom

            ## What's the distance from anchor point on the zoomed in image
            ## to the top left corner?
            ## e.g. 150, 150 at 150%
            end_xanchor = original_xanchor * end_zoom
            end_yanchor = original_yanchor * end_zoom

            ## Adjust the position to put that back at the
            ## original anchor location
            xpos_adj = end_xanchor - xanchor
            ypos_adj = end_yanchor - yanchor

            return (xpos_adj, ypos_adj)

        def render(self, width, height, st, at):
            """
            Render the viewport.
            """
            self.width = width
            self.height = height

            if self.drift_target is not None:
                self.zadjustment.drift_to_target(self.drift_target,
                    self.zoom_speed/6.0, st)
                self.drift_target = None

            ## Ensure the adjustments are up-to-date
            self.redraw_adjustments(st)

            if not self.known_size or self.transform is None:
                child_width = self.child_width or width
                child_height = self.child_height or height
                surf = renpy.display.render.render(self.child, child_width, child_height, st, at)
                cw, ch = surf.get_size()
                self.set_size(cw, ch)

            self.transform = Transform(self.child,
                zoom=self.zadjustment.value+self.zoom_min)

            surf = renpy.display.render.render(self.transform,
                width, height, st, at)
            cw, ch = surf.get_size()

            cxo, cyo, width, height = self.update_offsets(cw, ch, st)

            ## If one of the dimensions is not fully filling the viewport,
            ## we can align it.
            if self.zoom_align is not None:
                if cw < width:
                    cxo = int((width - cw) * self.zoom_align[0])
                if ch < height:
                    cyo = int((height - ch) * self.zoom_align[1])

            self.offsets = [ (cxo, cyo) ]

            rv = renpy.display.render.Render(width, height)
            rv.blit(surf, (cxo, cyo))

            rv = rv.subsurface((0, 0, width, height), focus=True)

            ## 8.2
            if above_version((8, 2, 0)):
                if self.arrowkeys:
                    rv.add_focus(self, None, 0, 0, width, height)
                elif self.draggable:
                    rv.add_focus(self, None, False, False, False, False)
            ## <=8.1
            else:
                if self.draggable or self.arrowkeys:
                    rv.add_focus(self, None, 0, 0, width, height)

            return rv

        def update_anchor(self):
            """
            Set the anchor as the middle between the two currently touching
            fingers. Used only on touch devices, generally for zooming to a
            point.
            """

            if len(self.fingers) < 2:
                return

            finger1 = self.finger_lookup[self.fingers[-1]]
            finger2 = self.finger_lookup[self.fingers[-2]]
            self.in_multi_gesture.clear()
            self.in_multi_gesture.add(self.fingers[-1])
            self.in_multi_gesture.add(self.fingers[-2])

            x_midpoint = int((finger1.x+finger2.x)/2.0)
            y_midpoint = int((finger1.y+finger2.y)/2.0)
            self.zoom_anchor = (x_midpoint, y_midpoint)

        def register_finger(self, x, y, st, ev):
            """Register a finger to track."""
            try:
                id = ev.finger_id
            except:
                return

            if self.x_scale is None:
                ## Figure out how the event x relates to this x
                self.x_scale = ev.x*config.screen_width - x
            else:
                x = ev.x*config.screen_width - self.x_scale
            if self.y_scale is None:
                ## Figure out how the event y relates to this y
                self.y_scale = ev.y*config.screen_height - y
            else:
                y = ev.y*config.screen_height - self.y_scale

            x = int(x)
            y = int(y)
            finger = Finger(x, y, st)

            if id in self.fingers:
                self.fingers.remove(id)
            self.fingers.append(id)
            if len(self.fingers) > 5:
                self.fingers.pop(0)
            self.finger_lookup[id] = finger
            return finger

        def find_finger(self, id):
            """
            Find and return the finger with the smallest distance between its
            current position and x, y. Not necessarily 100% accurate for
            tracking multiple fingers on-screen, but generally sufficient for
            touch gestures.
            """
            try:
                id = id.finger_id
            except:
                return
            return self.finger_lookup.get(id, None)

        def update_finger(self, x, y, ev):
            """Find which finger just moved and update it."""
            try:
                id = ev.finger_id
            except:
                return
            finger = self.finger_lookup.get(id, None)
            if finger is None:
                return

            if self.x_scale is None:
                ## Figure out how the event x relates to this x
                self.x_scale = ev.x*config.screen_width - x
            else:
                x = ev.x*config.screen_width - self.x_scale
            if self.y_scale is None:
                ## Figure out how the event y relates to this y
                self.y_scale = ev.y*config.screen_height - y
            else:
                y = ev.y*config.screen_height - self.y_scale
            x = int(x)
            y = int(y)
            finger.x = x
            finger.y = y
            if id not in self.fingers:
                self.fingers.append(id)
            else:
                self.fingers.remove(id)
                self.fingers.append(id)
            return finger

        def remove_finger(self, id):
            """Remove a finger from being tracked."""
            try:
                id = id.finger_id
            except:
                return
            finger = self.find_finger(id)
            if not finger:
                return
            del self.finger_lookup[id]
            if finger in self.fingers:
                self.fingers.remove(finger)
            return finger

        def is_touch(self):
            """
            Return whether this displayable should respond to touch events.
            Useful primarily for subclasses.
            """
            return self.touch_screen_mode

        def IS_MOTION(self, ev):
            """
            Return True if the provided event counts as a motion event for
            either mouse or touch.
            """
            return ev.type in (pygame.MOUSEMOTION, pygame.FINGERMOTION)

        def IS_TOUCH_DOWN(self, ev, either=False):
            """
            Return True if the provided event counts as a touch for the purpose
            of registering a finger. Differs for touch and non-touch devices.
            """
            touch = ev.type == pygame.FINGERDOWN
            not_touch = renpy.map_event(ev, "viewport_drag_start")
            if either:
                return touch or not_touch
            if self.is_touch():
                return touch
            else:
                return not_touch

        def IS_TOUCH_UP(self, ev, either=False):
            """
            Return True if the provided event counts as a touch release for the
            purpose of registering a finger. Differs for touch and non-touch
            devices.
            """
            touch = ev.type == pygame.FINGERUP
            not_touch = renpy.map_event(ev, "viewport_drag_end")
            if either:
                return touch or not_touch
            if self.is_touch():
                return touch
            else:
                return not_touch

        def zoom_in_out(self, amount, x=None, y=None, st=None, drift=False):
            """
            Zoom in or out by the provided amount. If x and y are provided,
            the zoom will be centered around that point. If drift is True,
            the zoom will drift to the new zoom level. If drift is False, the
            zoom will instantly jump to the new zoom level.
            """
            if x is None:
                x = 0.5
            if x < 1.0:
                x = int(x * self.width)
            else:
                x = int(x)

            if y is None:
                y = 0.5
            if y < 1.0:
                y = int(y * self.height)
            else:
                y = int(y)

            if self.zoom_curve is not None:
                amount += self.zoom_curve((self.zoom-self.zoom_min)
                    /(self.zoom_max-self.zoom_min)) * amount

            self.zoom_anchor = (x, y)
            start_zoom = self.zoom
            new_zoom = self.zoom + amount
            if drift:
                new_zoom = self.clamp_zoom(new_zoom)
                if st is None:
                    self.drift_target = new_zoom-self.zoom_min
                    rv = None
                else:
                    drift_speed = self.zoom_speed/6.0
                    if abs(start_zoom-new_zoom) < self.zoom_amount:
                        ## Decrease the time for small zooms
                        diff = abs(start_zoom-new_zoom) / self.zoom_amount
                        drift_speed *= diff
                    rv = self.zadjustment.drift_to_target(new_zoom-self.zoom_min,
                        drift_speed, st)
            else:
                self.zoom = new_zoom
                self.clamp_zoom()
                self.drift_target = None
                zoom_xadj, zoom_yadj = self.adjust_pos_for_zoom(start_zoom, new_zoom)
                new_xvalue = self.xadjustment.value + zoom_xadj
                new_yvalue = self.yadjustment.value + zoom_yadj
                if new_xvalue > self.xadjustment.range:
                    self.xadjustment.range = new_xvalue
                    self.xadjustment.update()
                if new_yvalue > self.yadjustment.range:
                    self.yadjustment.range = new_yvalue
                    self.yadjustment.update()
                self.xadjustment.change(new_xvalue)
                self.yadjustment.change(new_yvalue)
                rv = self.zadjustment.change(new_zoom-self.zoom_min)
            renpy.redraw(self, 0)
            return rv

        def showing_coords(self, x, y):
            """
            Return True if the provided coordinates are currently visible in
            the viewport.
            """
            x *= self.child_width * self.zoom
            y *= self.child_height * self.zoom
            vp_x, vp_y = self.offsets[0]
            vp_x *= -1
            vp_y *= -1
            return (vp_x <= x <= vp_x + self.width
                and vp_y <= y <= vp_y + self.height)

        def get_cursor_coordinates(self):
            if not self.known_size:
                return 0, 0

            mouse_pos = renpy.get_mouse_pos()

            vp_x = mouse_pos[0]
            vp_y = mouse_pos[1]

            scaled_x = vp_x + self.xadjustment.value
            scaled_y = vp_y + self.yadjustment.value

            img_x = scaled_x / self.zoom
            img_y = scaled_y / self.zoom

            return img_x, img_y

        def pct_area_in_view(self, x1, y1, x2, y2):
            """
            Return what percentage of the provided area is in view, as a float
            between 0.0 and 1.0. The area is defined by the top left and bottom
            right corners.
            """
            x1 *= self.child_width * self.zoom
            y1 *= self.child_height * self.zoom
            x2 *= self.child_width * self.zoom
            y2 *= self.child_height * self.zoom
            vp_x, vp_y = self.offsets[0]
            vp_x *= -1
            vp_y *= -1
            ## The area of the viewport
            vp_area = self.width * self.height
            ## The area of the provided rectangle
            rect_area = (x2-x1) * (y2-y1)
            ## The area of the intersection
            inter_area = max(0, min(x2, vp_x+self.width) - max(x1, vp_x)) * max(0, min(y2, vp_y+self.height) - max(y1, vp_y))
            return inter_area / rect_area

        def pct_area_of_viewport(self, x1, y1, x2, y2):
            """
            Return what percentage of the viewport is taken up by the provided
            area, as a float between 0.0 and 1.0. The area is defined by the
            top left and bottom right corners.
            """
            x1 *= self.child_width * self.zoom
            y1 *= self.child_height * self.zoom
            x2 *= self.child_width * self.zoom
            y2 *= self.child_height * self.zoom
            vp_area = self.width * self.height
            rect_area = (x2-x1) * (y2-y1)
            vp_x, vp_y = self.offsets[0]
            vp_x *= -1
            vp_y *= -1
            ## The area of the intersection
            inter_area = max(0, min(x2, vp_x+self.width) - max(x1, vp_x)) * max(0, min(y2, vp_y+self.height) - max(y1, vp_y))
            return inter_area / vp_area

        def event(self, ev, x, y, st):
            ## Check for zooming.
            if ev.type == pygame.KEYDOWN and (ev.key in (pygame.K_PLUS, pygame.K_EQUALS)):
                self.zoom_in_out(self.zoom_amount, x, y, st)
                return
            elif ev.type == pygame.KEYDOWN and ev.key == pygame.K_MINUS:
                self.zoom_in_out(-self.zoom_amount, x, y, st)
                return
            elif config.developer and ev.type == pygame.KEYDOWN and ev.key == pygame.K_p:
                ## A developer tool; copy the coordinates of this spot in
                ## the viewport to the clipboard.
                ## Figure out the coordinates of the top left corner of the viewport
                vp_x, vp_y = self.offsets[0]
                new_x = x - vp_x
                new_y = y - vp_y
                ## This x is the distance from the top left corner of
                ## the zoomed child.
                cw = self.child_width * self.zoom
                ch = self.child_height * self.zoom
                ret = "{:.3f}, {:.3f}".format(new_x/cw, new_y/ch)
                copy_to_clipboard(ret)

            ####################################################################
            ## This code is modified from renpy.display.viewport.Viewport
            ####################################################################

            self.xoffset = None
            self.yoffset = None

            ## Not inside the viewport area
            if not ((0 <= x < self.width) and (0 <= y <= self.height)):
                self.edge_xspeed = 0
                self.edge_yspeed = 0
                self.edge_last_st = None
                inside = False
            else:
                inside = True

            # True if the player can drag the viewport.
            draggable = self.draggable and (self.xadjustment.range or self.yadjustment.range)
            grab = renpy.display.focus.get_grab()

            if draggable:
                if grab is None and self.IS_TOUCH_UP(ev):
                    ## No longer dragging
                    self.drag_position = None
                    finger = self.remove_finger(ev)
                    if finger is self.drag_finger:
                        self.drag_finger = None
            else:
                ## Dragging not possible
                self.drag_position = None
                if self.IS_TOUCH_UP(ev):
                    finger = self.remove_finger(ev)
                    if finger is self.drag_finger:
                        self.drag_finger = None

            if inside and ev.type == pygame.MULTIGESTURE:
                ## 2+ fingers on the screen for a pinch.
                self.xadjustment.end_animation(instantly=True)
                self.yadjustment.end_animation(instantly=True)
                ## Set the anchor as the middle between their two fingers
                self.update_anchor()
                ## Zoom in slower, but out faster. You can play around
                ## with these multipliers if you like.
                if ev.dDist > 0:
                    self.zoom_in_out(ev.dDist*3.0, self.zoom_anchor[0],
                        self.zoom_anchor[1], st, drift=False)
                else:
                    self.zoom_in_out(ev.dDist*3.0*1.5, self.zoom_anchor[0],
                        self.zoom_anchor[1], st, drift=False)
                raise renpy.display.core.IgnoreEvent()


            finger = self.update_finger(x, y, ev)
            is_finger = False
            ignore_drag = False
            if not (self.IS_TOUCH_UP(ev, True)
                    or self.IS_TOUCH_DOWN(ev, True)) and self.is_touch():
                try:
                    is_finger = True
                    if finger in self.in_multi_gesture:
                        ## Do NOT process motion events except to adjust
                        ## the anchor
                        ignore_drag = True
                except AttributeError:
                    ## Not a touch event
                    if not (self.IS_TOUCH_UP(ev, True) or self.IS_TOUCH_DOWN(ev, True)):
                        ## A touch event, but not a finger event
                        ignore_drag = True

            ## Drag is valid, but we have grabbed something else inside the
            ## viewport.
            if (inside and draggable and (self.drag_position is not None)
                    and (grab is not self) and not ignore_drag):

                focused = renpy.display.focus.get_focused()

                ## If we're not focused, or we're focused on something that
                ## isn't draggable, we can start dragging.
                if (focused is None) or (focused is self) or not focused._draggable:

                    if self.IS_MOTION(ev):
                        finger = self.update_finger(x, y, ev)

                        oldx, oldy = self.drag_position

                        ## If we dragged far enough away, we are now the focused
                        ## displayable.
                        if hypot(oldx - x, oldy - y) >= config.viewport_drag_radius:
                            rv = renpy.display.focus.force_focus(self)
                            renpy.display.focus.set_grab(self)
                            self.drag_position = (x, y)
                            self.drag_position_time = st
                            self.drag_speed = (0.0, 0.0)
                            grab = self

                            if rv is not None:
                                return rv

            ## We are the grabbed displayable
            if (renpy.display.focus.get_grab() == self
                    and self.drag_position is not None
                    and not ignore_drag):

                old_xvalue = self.xadjustment.value
                old_yvalue = self.yadjustment.value

                oldx, oldy = self.drag_position # type: ignore
                dx = x - oldx
                dy = y - oldy

                dt = st - self.drag_position_time
                if dt > 0:
                    old_xspeed, old_yspeed = self.drag_speed
                    new_xspeed = -dx / dt / 60.0
                    new_yspeed = -dy / dt / 60.0

                    done = min(1.0, dt / (1.0 / 60.0))

                    new_xspeed = old_xspeed + done * (new_xspeed - old_xspeed)
                    new_yspeed = old_yspeed + done * (new_yspeed - old_yspeed)

                    self.drag_speed = (new_xspeed, new_yspeed)

                ## Letting go of drag
                if self.IS_TOUCH_UP(ev):

                    renpy.display.focus.set_grab(None)

                    xspeed, yspeed = self.drag_speed

                    if (xspeed and config.viewport_inertia_amplitude
                            and not self.xadjustment.force_step):
                        self.xadjustment.inertia(
                            config.viewport_inertia_amplitude * xspeed,
                            config.viewport_inertia_time_constant, st)
                    elif self.xadjustment.force_step == "release":
                        xvalue = self.xadjustment.round_value(old_xvalue,
                            release=True)
                        self.xadjustment.inertia(xvalue - old_xvalue,
                            self.xadjustment.step / (config.screen_width * 2),
                            st)
                    else:
                        xvalue = self.xadjustment.round_value(old_xvalue,
                            release=True)
                        self.xadjustment.change(xvalue)

                    if (yspeed and config.viewport_inertia_amplitude
                            and not self.yadjustment.force_step):
                        self.yadjustment.inertia(
                            config.viewport_inertia_amplitude * yspeed,
                            config.viewport_inertia_time_constant, st)
                    elif self.yadjustment.force_step == "release":
                        yvalue = self.yadjustment.round_value(old_yvalue,
                            release=True)
                        self.yadjustment.inertia(yvalue - old_yvalue,
                            self.yadjustment.step / (config.screen_height * 2),
                            st)
                    else:
                        yvalue = self.yadjustment.round_value(old_yvalue,
                            release=True)
                        self.yadjustment.change(yvalue)
                    self.drag_position = None
                    self.drag_position_time = None
                    self.drag_finger = None

                    raise renpy.display.core.IgnoreEvent()

                finger = self.update_finger(x, y, ev)

                ## Otherwise, continuing to move it
                new_xvalue = self.xadjustment.round_value(old_xvalue - dx,
                    release=False)
                if old_xvalue == new_xvalue:
                    newx = oldx
                else:
                    self.xadjustment.change(new_xvalue)
                    newx = x

                new_yvalue = self.yadjustment.round_value(old_yvalue - dy,
                    release=False)
                if old_yvalue == new_yvalue:
                    newy = oldy
                else:
                    self.yadjustment.change(new_yvalue)
                    newy = y

                self.drag_position = (newx, newy) # W0201
                self.drag_position_time = st

            ## Mousewheel input is valid
            if inside and self.mousewheel:

                if self.mousewheel == "horizontal-change":
                    adjustment = self.xadjustment
                    change = True
                elif self.mousewheel == "change":
                    adjustment = self.yadjustment
                    change = True
                elif self.mousewheel == "horizontal":
                    adjustment = self.xadjustment
                    change = False
                elif self.mousewheel == "zoom":
                    if renpy.map_event(ev, 'viewport_wheelup'):
                        rv = self.zoom_in_out(self.zoom_amount, x, y, st)
                        if rv is not None:
                            return rv
                        else:
                            raise renpy.display.core.IgnoreEvent()
                    elif renpy.map_event(ev, 'viewport_wheeldown'):
                        rv = self.zoom_in_out(-self.zoom_amount, x, y, st)
                        if rv is not None:
                            return rv
                        else:
                            raise renpy.display.core.IgnoreEvent()
                else:
                    adjustment = self.yadjustment
                    change = False

                ## Using the mouse wheel to scroll up
                if (renpy.map_event(ev, 'viewport_wheelup')
                        and self.mousewheel != "zoom"):

                    if change and (adjustment.value == 0):
                        return None

                    rv = adjustment.change(adjustment.value - adjustment.step)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

                ## Using the mouse wheel to scroll down
                if (renpy.map_event(ev, 'viewport_wheeldown')
                        and self.mousewheel != "zoom"):

                    if change and (adjustment.value == adjustment.range):
                        return None

                    rv = adjustment.change(adjustment.value + adjustment.step)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

            ## Arrow key input is valid
            if self.arrowkeys:

                ## Moving to the left
                if renpy.map_event(ev, 'viewport_leftarrow'):

                    if self.xadjustment.value == 0:
                        return None

                    rv = self.xadjustment.change(self.xadjustment.value - self.xadjustment.step)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

                ## Moving to the right
                if renpy.map_event(ev, 'viewport_rightarrow'):

                    if self.xadjustment.value == self.xadjustment.range:
                        return None

                    rv = self.xadjustment.change(self.xadjustment.value + self.xadjustment.step)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

                ## Moving up
                if renpy.map_event(ev, 'viewport_uparrow'):

                    if self.yadjustment.value == 0:
                        return None

                    rv = self.yadjustment.change(self.yadjustment.value - self.yadjustment.step)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

                ## Moving down
                if renpy.map_event(ev, 'viewport_downarrow'):

                    if self.yadjustment.value == self.yadjustment.range:
                        return None

                    rv = self.yadjustment.change(self.yadjustment.value + self.yadjustment.step)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

            ## Page key input is valid
            if self.pagekeys:

                ## Move the viewport up
                if renpy.map_event(ev, 'viewport_pageup'):

                    rv = self.yadjustment.change(self.yadjustment.value - self.yadjustment.page)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

                ## Move the viewport down
                if renpy.map_event(ev, 'viewport_pagedown'):

                    rv = self.yadjustment.change(self.yadjustment.value + self.yadjustment.page)
                    if rv is not None:
                        return rv
                    else:
                        raise renpy.display.core.IgnoreEvent()

            ## Perhaps starting a drag - make sure to end any previous drags
            if inside and draggable and not ignore_drag:

                focused = renpy.display.focus.get_focused()

                if (focused is self) or (focused is None) or (not focused._draggable):
                    if self.IS_TOUCH_DOWN(ev):
                        finger = self.register_finger(x, y, st, ev)

                        self.drag_position = (x, y)
                        self.drag_position_time = st
                        self.drag_speed = (0.0, 0.0)

                        self.xadjustment.end_animation(instantly=True)
                        self.yadjustment.end_animation(instantly=True)
                        self.drag_finger = finger
                    self.update_finger(x, y, ev)

            ## If moving around and edgescroll is on, might need to adjust
            ## the speed for the edge.
            if (inside and self.edge_size and ev.type in [ pygame.MOUSEMOTION,
                    pygame.MOUSEBUTTONDOWN, pygame.MOUSEBUTTONUP,
                    pygame.FINGERMOTION, pygame.FINGERDOWN, pygame.FINGERUP]):

                def speed(n, zero, one):
                    """
                    Given a position `n`, computes the speed. The speed is 0.0
                    when `n` == `zero`, 1.0 when `n` == `one`, and linearly
                    interpolated when between.

                    Returns 0.0 when outside the bounds - in either direction.
                    """

                    n = 1.0 * (n - zero) / (one - zero)

                    if n < 0.0:
                        return 0.0
                    if n > 1.0:
                        return 0.0

                    return n

                xspeed = speed(x, self.width - self.edge_size, self.width)
                xspeed -= speed(x, self.edge_size, 0)
                self.edge_xspeed = self.edge_speed * self.edge_function(xspeed)

                yspeed = speed(y, self.height - self.edge_size, self.height)
                yspeed -= speed(y, self.edge_size, 0)
                self.edge_yspeed = self.edge_speed * self.edge_function(yspeed)

                if xspeed or yspeed:
                    self.check_edge_redraw(st, reset_st=False)
                else:
                    self.edge_last_st = None

            if (self.is_touch() and (self.IS_TOUCH_DOWN(ev)
                        or self.IS_TOUCH_UP(ev))
                    and (self.last_zoom_st is not None
                        and st - self.last_zoom_st <= myconfig.ZOOM_GRACE_PERIOD)
                    ):
                ## Grace period; ignore this event
                raise renpy.IgnoreEvent()

            ## The event coordinates will differ because of the zoom.
            ## We need to adjust them to the child's coordinates.
            rv = renpy.display.layout.Container.event(self, ev,
                int(x / self.zoom), int(y / self.zoom), st)

            if rv is not None:
                return rv

            return None

    renpy.register_sl_displayable("zoom_viewport", ZoomViewport, 'viewport', 1,
        replaces=True, pass_context=True,
    ).add_property("child_size"
    ).add_property("mousewheel"
    ).add_property("arrowkeys"
    ).add_property("pagekeys"
    ).add_property("draggable"
    ).add_property("edgescroll"
    ).add_property("xadjustment"
    ).add_property("yadjustment"
    ).add_property("zadjustment"
    ).add_property("xinitial"
    ).add_property("yinitial"
    ).add_property("xminimum"
    ).add_property("yminimum"
    ).add_property_group("position",
    ).add_property_group("ui",
    ).add_property("zoom_max"
    ).add_property("zoom_min"
    ).add_property("zoom_callback"
    ).add_property("start_zoom"
    ).add_property("zoom_amount"
    ).add_property("zoom_speed"
    ).add_property("zoom_curve"
    ).add_property("zoom_align"
    ).add_property("position_callback"
    )

init python:

    @renpy.pure
    class VPZoom(Scroll):
        """
        Causes a ZoomViewport to zoom in.

        `id`
            The id of a zoom_viewport in the current screen.

        `direction`
            The direction to zoom in. This can be "in" or "out".

        `amount`
            The amount to zoom by. A float. If None, it will use the viewport's
            zoom_amount. May also be "step" or "page" to zoom by the viewport's
            step or page size.

        `drift`
            If True, the zoom will drift to the new zoom value. If False,
            it will instantly zoom there.
        """

        def __init__(self, id, direction="in", amount=None, drift=False):
            self.id = id
            self.direction = direction
            self.amount = amount
            self.drift = drift

        def get_sensitive(self):

            vp = renpy.get_widget(None, self.id)

            if vp is None:
                return False

            if not vp.known_size:
                return True

            vp.zadjustment.restart_interaction_at_limit = True

            if self.direction == "in":
                return vp.zadjustment.value + myconfig.ZOOM_COMPARISON_BUFFER < vp.zadjustment.range
            else:
                return vp.zadjustment.value > myconfig.ZOOM_COMPARISON_BUFFER

        def __call__(self):

            vp = renpy.get_widget(None, self.id)
            adjustment = vp.zadjustment
            delta = 1 if self.direction == "in" else -1

            if vp is None:
                raise Exception("There is no displayable with the id {}.".format(self.id))

            if self.amount == "step":
                amount = delta * adjustment.step
            elif self.amount == "page":
                amount = delta * adjustment.page
            elif self.amount is None:
                amount = vp.zoom_amount * delta
            else:
                if above_version((8, 2, 0)):
                    amount = absolute.compute_raw(delta*self.amount, adjustment.range)
                else:
                    if (isinstance(self.amount, float)
                            and not isinstance(self.amount, absolute)):
                        amount = delta * self.amount * adjustment.range
                    else:
                        amount = delta * self.amount
            vp.zoom_in_out(amount, drift=self.drift)
