﻿transform pulse_effect:
    linear 0.5 alpha 0.5
    linear 0.55 alpha 1.0
    linear 5 alpha 1.0
    linear 0.5 alpha 1.0
    linear 0.5 alpha 0.5
    repeat

screen image_based_menu(options, static, background, tooltip_style={}):
    default tt = Tooltip("")
    add background
    zorder 100

    for opt in options:
        imagebutton:
            idle opt.idle_image
            hover opt.hover_image or Transform(opt.idle_image, matrixcolor=BrightnessMatrix(0.2))
            at pulse_effect
            xpos opt.xpos
            ypos opt.ypos
            action [
                Jump(opt.get_label_id())
            ]
            hovered tt.Action(opt.get_tooltip() or opt.get_title())
            unhovered tt.Action("")

    for opt in static:
        add opt.image:
            xpos opt.xpos
            ypos opt.ypos

    if tt.value:
        text tt.value:
            xalign 0.5
            ypos 50
            # **tooltip_style
