# https://feniksdev.itch.io/zoom-viewport-for-renpy

################################################################################
##
## Zoom Viewport for Ren'Py by Feniks (feniksdev.itch.io / feniksdev.com)
## v1.0
##
################################################################################
## This file contains code for some backend components of the Zoom Viewport,
## like imports for touch events and classes to handle adjustments and
## tracking multi-touch fingers. This file is required for the Zoom Viewport
## to work properly.
##
## If you use this code in your projects, credit me as Feniks @ feniksdev.com
##
## If you'd like to see how to use this tool, check the other file,
## zoom_vp_examples.rpy! This is just the backend; you don't need to
## understand everything in this file.
##
## Leave a comment on the tool page on itch.io if you run into any issues.
################################################################################
################################################################################
## Code to archive these files for a distributed game. Do not remove.
init python:
    build.classify("**multitouch_common.rpy", None)
    build.classify("**multitouch_common.rpyc", "archive")
################################################################################
init -2 python:
    import pygame # For events
    from math import hypot, exp # For inertia and distance calculations

    ## This adds support for touch events to Ren'Py.
    ## See also:
    # https://www.pygame.org/docs/ref/event.html
    # https://github.com/renpy/pygame_sdl2/blob/master/src/pygame_sdl2/event.pyx#L259
    config.pygame_events.extend([
        pygame.FINGERMOTION, # Moving the finger around
        pygame.FINGERDOWN, # Touching the finger to the screen
        pygame.FINGERUP, # Lifting the finger from the screen
        pygame.MULTIGESTURE, # More than one finger on the screen
    ])


    class Finger():
        """
        A class to track information on a single finger for multi-touch events.
        Used to identify which finger is lifted or moved to react accordingly.

        Attributes:
        -----------
        x : int
            The current x position of the finger.
        y : int
            The current y position of the finger.
        touchdown_x : int
            The initial x position where the touch began.
        touchdown_y : int
            The initial y position where the touch began.
        touchdown_st : float
            The time when this finger first touched down.
        last_three_speeds : list((int, int))
            A list of tuples which contain the last three speeds of this
            finger as it was dragged around the screen.
        """
        def __init__(self, x, y, st):
            """Initialize a Finger object."""
            self.x = x
            self.y = y
            self.touchdown_x = x
            self.touchdown_y = y
            self.touchdown_st = st
            self.last_three_speeds = [ ]

        def dist(self, x, y):
            """
            Return the distance from this finger to the given coordinates.
            Generally used to identify if this was the finger corresponding
            to a given event.
            """

            dx = self.x - x
            dy = self.y - y

            ## This is the Pythagorean theorem a^2 + b^2 = c^2
            ## We're just solving for c, the distance between the two points,
            ## so it's raised to the power of 1/2 (aka square root).
            return (dx**2 + dy**2)**0.5

        def add_speed(self, speed):
            """Record a speed for this finger while dragging."""
            self.last_three_speeds.append(speed)
            if len(self.last_three_speeds) > 3:
                self.last_three_speeds.pop(0)

        @property
        def last_speed(self):
            """
            Return the average of the last three speeds of this finger.
            This is to reduce instances of inertia suddenly halting due to
            delayed events.
            """
            if self.last_three_speeds:
                ## Return the average of all three
                all_xspeeds = [x[0] for x in self.last_three_speeds]
                all_yspeeds = [x[1] for x in self.last_three_speeds]
                final_x = sum(all_xspeeds) / float(len(self.last_three_speeds))
                final_y = sum(all_yspeeds) / float(len(self.last_three_speeds))
                return (final_x, final_y)
            return (0.0, 0.0)

        @property
        def finger_info(self):
            """Print info on a finger in an easily-presentable format."""
            return "Finger: ({}, {})".format(self.x, self.y)


    class MyAdjustment(renpy.display.behavior.Adjustment):
        """
        A subclass of the Adjustment class in Ren'Py which adds inertia.
        Post 8.0.3, everything but the drift_to_target method can be simply
        inherited by this class, but here inertial features have been ported
        over (and fixed) from the 8.1 prerelease. It also ports the properties
        restart_interaction_at_limit and restart_interaction_at_range from 8.3.

        Regardless of version, it's fine to leave this class as-is.
        """
        # The amplitude of the inertia.
        animation_amplitude = None # type: float|None

        # The target value of the inertia.
        animation_target = None # type: float|None

        # The time the inertia started
        animation_start = None # type: float|None

        # The time constant of the inertia.
        animation_delay = None # type: float|None

        # The warper applied to the animation.
        animation_warper = None # type (float) -> float|None

        # This causes the interaction to restart when the adjustment hits a limit
        # it hadn't reach before. It's intended for use by the Scroll action, which
        # will set this to true for adjustments it may change.
        restart_interaction_at_limit = False

        # This causes the interaction to restart when the range changes.
        restart_interaction_at_range = None

        def drift_to_target(self, target, time_constant, st):
            """
            A method to simplify animating the adjustment from its current
            value to the target value over a provided period of time.
            """
            self.inertia(target-self._value, time_constant, st)

        ########################################################################
        ## These can all be removed if you're using Ren'Py 8.3 or newer.
        ## (There's no harm in keeping it here either, at the moment).
        def change(self, value, end_animation=True):

            ## Can only inherit this method wholesale from newer Ren'Py
            if ((renpy.version_tuple[0] == 7 and renpy.version_tuple < (7, 6, 0))
                    or (renpy.version_tuple[0] >= 8)
                        and renpy.version_tuple < (8, 1, 0)):
                if end_animation:
                    self.end_animation()
                return super(MyAdjustment, self).change(value)

            return super(MyAdjustment, self).change(value, end_animation)

        def inertia_warper(self, done):
            if done < 0.0:
                done = 0.0
            elif done > 1.0:
                done = 1.0

            return 1.0 - exp(-done * 6)

        def animate(self, amplitude, delay, warper):
            if not amplitude or not self._range:
                self.end_animation(True)
            else:
                self.animation_amplitude = amplitude
                self.animation_target = self._value + amplitude

                self.animation_delay = delay
                self.animation_start = None
                self.animation_warper = warper
                self.update()

        def inertia(self, amplitude, time_constant, st):
            self.animate(amplitude, time_constant * 6.0, self.inertia_warper)
            self.periodic(st)

        def end_animation(self, instantly=False):
            if self.animation_target is not None or instantly:
                value = self.animation_target

                self.animation_amplitude = None
                self.animation_target = None
                self.animation_start = None
                self.animation_delay = None
                self.animation_warper = None

                if not instantly and value is not None:
                    self.change(value, end_animation=False)

        def set_range(self, v):
            self._range = v
            if self.ranged:
                self.ranged(self)

            if self.restart_interaction_at_range:
                renpy.restart_interaction()

        def periodic(self, st):

            if self.animation_target is None:
                return

            if self.animation_start is None:
                self.animation_start = st

            if st < self.animation_start:
                self.end_animation(instantly=True)
                return 0

            if self.animation_delay == 0:
                done = 1.0
            else:
                done = (st - self.animation_start) / self.animation_delay
                done = self.animation_warper(done)

            value = self.animation_target - self.animation_amplitude * (1.0 - done)

            self.change(value, end_animation=False)

            # Did we hit a wall?
            if value < 0 or value > self._range:
                self.end_animation(instantly=True)
                return 0
            elif st > self.animation_start + self.animation_delay: # type: ignore
                self.end_animation()
                return None
            else:
                return 0
        ########################################################################


    def above_version(ver):
        """
        Return True if the provided version is the same or lower than the
        current version.
        """
        cur = renpy.version(tuple=True)
        if cur[0] == 7 and cur[1] >= 5 and ver[0] > 7:
            ## Convert from 8.1 to 7.6 / 8.0 to 7.5 etc
            cur = (8, cur[1]-5, cur[2])
        elif cur[0] == 7:
            ## 7.4 or earlier
            return cur >= ver
        if ver[0] == 7:
            ## Convert to the 8.0+ format
            ver = (8, ver[1]-5, ver[2])
        return cur >= ver


    from pygame import scrap

    def copy_to_clipboard(txt):
        scrap.put(scrap.SCRAP_TEXT, txt.encode("utf-8"))
        renpy.notify("Copied \"{}\" to clipboard.".format(txt))