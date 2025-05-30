transform pulse_effect:
    linear 0.5 alpha 0.5
    linear 0.55 alpha 1.0
    linear 5 alpha 1.0
    linear 0.5 alpha 1.0
    linear 0.5 alpha 0.5
    repeat

screen image_based_menu(options, background, tooltip_style={}):
    default tt = Tooltip("")
    add background

    for opt in filter(lambda opt: hasattr(opt, 'idle_image') and opt.idle_image is not None, options):
        # Interactive options
        imagebutton:
            idle opt.idle_image
            hover opt.hover_image or Transform(opt.idle_image, matrixcolor=BrightnessMatrix(0.2))
            at pulse_effect
            xpos opt.xpos
            ypos opt.ypos
            action [
                SetVariable("current_dialog_key", opt.label_id),
                Jump("dialog_dispatcher")
            ]
            hovered tt.Action(opt.tooltip or opt.title)
            unhovered tt.Action("")

    vbox:
        align (0.5, 0.5)
        spacing 10
        for opt in filter(lambda opt: not hasattr(opt, 'idle_image') or opt.idle_image is None, options):
            # Fallback text menu for debugging
                textbutton opt.title action [
                        SetVariable("current_dialog_key", opt.label_id),
                        Jump("dialog_dispatcher")
                    ]

    if tt.value:
        text tt.value:
            xalign 0.5
            ypos 50
            # **tooltip_style
