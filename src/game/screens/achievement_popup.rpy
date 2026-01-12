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
        xsize 450
        ysize 100
        ## The transform that makes it pop out
        at achievement_popout()
        ## Offsets the achievement down if there are multiple
        yoffset achievement_yoffset

        hbox:

            add a.unlocked_image:
                xpos 15
                ypos 15
                ## Make sure the image is within a certain size. Useful because
                ## often popups are smaller than the full gallery image.
                ## In this case it will not exceed 95 pixels tall but will retain
                ## its dimensions.
                fit "contain"
                ysize 60

            vbox:
                xpos 20
                ypos 10

                text a.name:
                    size 18
                    color "#dbc401"
                text a.description:
                    size 16
                    color "#eeeeee"

    ## Hide the screen after 5 seconds. You can change the time but shouldn't
    ## change the action.
    timer 5.0 action [Hide("achievement_popup"),
            Show('finish_animating_achievement', num=num, _tag=tag+"1")]
