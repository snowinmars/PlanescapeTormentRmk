init python:
    import logging
    devlog = logging.getLogger('log')


screen abstract_location_menu_screen(background, walking, talking):
    default tt = Tooltip('')
    zorder 100
    add background

    if tt.value:
        text tt.value:
            xalign 0.5
            ypos 50

    for walking_button in walking:
        if not walking_button['when']():
            continue

        $ tooltip = walking_button['tooltip']()

        imagebutton:
            idle walking_button['idle_img']
            hover Transform(walking_button['hover_img'], matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
            xpos walking_button['xpos']
            ypos walking_button['ypos']
            action walking_button['action']
            hovered tt.Action(tooltip)
            unhovered tt.Action('')

    for talking_button in talking:
        if not talking_button['when']():
            continue

        imagebutton:
            idle talking_button['idle_img']
            hover Transform(talking_button['hover_img'], matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
            xpos talking_button['xpos']
            ypos talking_button['ypos']

        if 'kill_action' in talking_button and 'kill_tooltip' in talking_button:
            $ tooltip = talking_button['kill_tooltip']()

            imagebutton:
                idle 'images/icons/kill_idle.png'
                hover Transform('images/icons/kill_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                xpos talking_button['xpos'] + 40
                ypos talking_button['ypos']
                action Jump(talking_button['kill_action']())
                hovered tt.Action(tooltip)
                unhovered tt.Action('')

        if 'speak_action' in talking_button and 'speak_tooltip' in talking_button:
            $ tooltip = talking_button['speak_tooltip']()

            imagebutton:
                idle 'images/icons/speak_idle.png'
                hover Transform('images/icons/speak_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                xpos talking_button['xpos'] + 40
                ypos talking_button['ypos'] + 30
                action Jump(talking_button['speak_action']())
                hovered tt.Action(tooltip)
                unhovered tt.Action('')