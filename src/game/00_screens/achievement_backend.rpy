# https://feniksdev.itch.io/achievements-for-renpy

################################################################################
##
## Achievements for Ren'Py by Feniks (feniksdev.itch.io / feniksdev.com) v1.5
##
################################################################################
## This file contains code for an achievement system in Ren'Py. It is designed
## as a wrapper to the built-in achievement system, so it hooks into the
## Steam backend as well if you set up your achievement IDs the same as in
## the Steam backend.
##
## If you use this code in your projects, credit me as Feniks @ feniksdev.com
##
## If you'd like to see how to use this tool, check the other file,
## achievements.rpy!
##
## Leave a comment on the tool page on itch.io or an issue on the GitHub
## if you run into any issues.
################################################################################
init -500 python in custom_achievements:
    from game.achievements.Achievement import (Achievement, LinkedAchievement) # Extract to py code to inject into managers


## Note: DO NOT change these configuration values in this block! See
## `achievements.rpy` for how to change them. This is just for setup so they
## exist in the game, and then you can modify them with `define` in a different
## file.
init -999 python in myconfig:
    _constant = True
    ## This is a configuration value which determines whether the in-game
    ## achievement popup should appear when Steam is detected. Since Steam
    ## already has its own built-in popup, you may want to set this to False
    ## if you don't want to show the in-game popup alongside it.
    ## The in-game popup will still work on non-Steam builds, such as builds
    ## released DRM-free on itch.io.
    INGAME_POPUP_WITH_STEAM = True
    ## The length of time the in-game popup spends hiding itself (see
    ## transform achievement_popout in achievements.rpy).
    ACHIEVEMENT_HIDE_TIME = 1.0
    ## True if the game should show in-game achievement popups when an
    ## achievement is earned. You can set this to False if you just want an
    ## achievement gallery screen and don't want any popups.
    SHOW_ACHIEVEMENT_POPUPS = True
    ## A callback, or list of callbacks, which are called when an achievement
    ## is granted. It is called with one argument, the achievement which
    ## was granted. It is only called if the achievement has not previously
    ## been earned.
    ACHIEVEMENT_CALLBACK = None
    ## A sound to play when the achievement is granted
    ACHIEVEMENT_SOUND = None
    ACHIEVEMENT_CHANNEL = "audio"
    ## The text that's shown when an achievement's name or description
    ## is hidden.
    HIDDEN_ACHIEVEMENT_NAME = _("???{#hidden_achievement_name}")
    HIDDEN_ACHIEVEMENT_DESCRIPTION = _("???{#hidden_achievement_description}")

## Track the time each achievement was earned at
default persistent.achievement_timestamp = dict()
## A dictionary of "progress sets" for achievements, which can be used to track
## achievement progress for an individual achievement.
default persistent.achievement_sets = dict()
## Tracks the number of onscreen achievements, for offsetting when
## multiple achievements are earned at once
default custom_achievements.onscreen_achievements = dict()
## Required for older Ren'Py versions so the vpgrid doesn't complain about
## uneven numbers of achievements, but True by default in later Ren'Py versions.
define config.allow_underfull_grids = True

init -499 python:
    from store.custom_achievements import Achievement, LinkedAchievement

# This, coupled with the timer on the popup screen, ensures that the achievement
# is properly hidden before another achievement can be shown in that "slot".
# If this was done as part of the timer in the previous screen, then it would
# consider that slot empty during the 1 second the achievement is hiding itself.
# That's why this timer is 1 second long.
screen finish_animating_achievement(num):
    timer myconfig.ACHIEVEMENT_HIDE_TIME:
        action [SetDict(custom_achievements.onscreen_achievements, num, None), Hide()]

