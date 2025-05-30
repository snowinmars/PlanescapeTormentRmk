transform pulse_effect:
    linear 0.5 alpha 0.7
    linear 0.5 alpha 1.0
    repeat

screen image_menu():
    imagebutton:
        idle "interactive_item.png"
        hover Transform("interactive_item.png", matrixcolor=BrightnessMatrix(0.2))
        at pulse_effect
        xpos 100 ypos 100
        action Return("interact")


screen image_menu():
    default tt = Tooltip("")

    imagemap:
        ground "menu_background.png"
        hover "menu_background_hover.png"

        hotspot (100, 100, 200, 50) action Return("option1") hovered tt.Action("Choose Option 1")
        hotspot (100, 200, 200, 50) action Return("option2") hovered tt.Action("Choose Option 2")

    # Show tooltip text
    if tt.value:
        text tt.value:
            xalign 0.5 ypos 50
            style "tooltip_text"


# renpy.call_screen("image_based_menu", options=options)
screen image_based_menu(options, background=None, tooltip_style={}):
    default tt = Tooltip("")

    # Background image if provided
    if background:
        add background

    # Interactive options
    for opt in options:
        imagebutton:
            idle opt.idle_image
            hover opt.hover_image or Transform(opt.idle_image, matrixcolor=BrightnessMatrix(0.2))
            xpos opt.xpos
            ypos opt.ypos
            action Jump(opt.label_id)  # SetVariable("current_dialog_key", item.label_id),
            hovered tt.Action(opt.tooltip or opt.title)
            unhovered tt.Action("")

    # Tooltip display
    if tt.value:
        text tt.value:
            xalign 0.5
            ypos 50
            **tooltip_style

    # Fallback text menu for debugging
    if not any(opt.idle_image for opt in options):
        vbox:
            align (0.5, 0.5)
            for opt in options:
                textbutton opt.title action Jump(opt.label_id)
