## A screen which shows a popup for an achievement the first time
## it is obtained. You may modify this however you like.
## The relevant information is:
## a.name = the human-readable name of the achievement
## a.description = the description
## a.unlocked_image = the image of the achievement, now that it's unlocked
## a.timestamp = the time the achievement was unlocked at
screen achievement_popup(a, tag, num):
    zorder 190

    ## Allows multiple achievements to be slightly offset from each other.
    ## This number should be at least as tall as one achievement.
    default achievement_yoffset = num*100

    frame:
        background 'gui_ablrow'
        xysize (512, 128)
        at achievement_popout() # The transform that makes it pop out
        yoffset achievement_yoffset # Offsets the achievement down if there are multiple

        hbox:
            add a.unlocked_image:
                pos (2, 2)
                size (113, 113)
                fit 'contain'

            vbox:
                pos (15, 5)

                text a.name:
                    size 18
                    color color_yellow
                text a.description:
                    size 16
                    color color_white


    timer 5.0 action [ # Hide the screen after 5 seconds. You can change the time but shouldn't change the action.
        Hide('achievement_popup'),
        Show('finish_animating_achievement', num=num, _tag=tag+'1')
    ]


transform achievement_popout():
    ## The `on show` event occurs when the screen is first shown.
    on show:
        ## Align it off-screen at the left. Note that no y information is
        ## given, as that is handled on the popup screen.
        xpos 0.0 xanchor 1.0
        ## Ease it on-screen
        easein_back 1.0 xpos 0.0 xanchor 0.0
    ## The `on hide, replaced` event occurs when the screen is hidden.
    on hide, replaced:
        ## Ease it off-screen again.
        ## This uses the hide time above so it supports displaying multiple
        ## achievements at once.
        easeout_back myconfig.ACHIEVEMENT_HIDE_TIME xpos 0.0 xanchor 1.0
