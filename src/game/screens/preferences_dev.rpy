init python:
    preferences_dev_choosed_screen = ''

screen preferences_dev():
    tag menu

    frame:
        xalign 0
        yalign 0
        xsize 1325
        ysize 1025
        background Transform('gui/journal.png', fit='cover')

        vbox:
            spacing 0
            xfill True
            yfill True

            fixed:
                xfill True
                ysize 50

                button:
                    xpos 715
                    ypos 50
                    xsize 150
                    background "#5036d4"
                    hover_background "#734df5"
                    action SetVariable('preferences_dev_choosed_screen', 'persistent')
                    text 'persistent':
                        size 20
                        if preferences_dev_choosed_screen == 'persistent':
                            color "#dbc401"
                        else:
                            color "#dddddd"
                        hover_color "#eeeeee"
                        xalign 0.5

                button:
                    xpos 890
                    ypos 50
                    xsize 150
                    background "#5036d4"
                    hover_background "#734df5"
                    action SetVariable('preferences_dev_choosed_screen', '_preferences')
                    text '_preferences':
                        size 20
                        if preferences_dev_choosed_screen == '_preferences':
                            color "#dbc401"
                        else:
                            color "#dddddd"
                        hover_color "#eeeeee"
                        xalign 0.5

                button:
                    xpos 1065
                    ypos 50
                    xsize 150
                    background "#5036d4"
                    hover_background "#734df5"
                    action SetVariable('preferences_dev_choosed_screen', 'config')
                    text 'config':
                        size 20
                        if preferences_dev_choosed_screen == 'config':
                            color "#dbc401"
                        else:
                            color "#dddddd"
                        hover_color "#eeeeee"
                        xalign 0.5

                button:
                    xpos 1240
                    ypos 50
                    xsize 25
                    background "#5036d4"
                    hover_background "#734df5"
                    action Return()
                    text "X":
                        size 20
                        color "#dddddd"
                        hover_color "#eeeeee"
                        xalign 0.5

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True
            xpos 110
            ypos 110
            xsize 405
            ysize 635

            vbox:
                spacing 10

                if preferences_dev_choosed_screen == 'persistent':
                    use _preferences_dev(persistent, preferences_dev_choosed_screen)

                if preferences_dev_choosed_screen == '_preferences':
                    use _preferences_dev(_preferences, preferences_dev_choosed_screen)

                if preferences_dev_choosed_screen == 'config':
                    use _preferences_dev(config, preferences_dev_choosed_screen)


screen _preferences_dev(preferences, preferences_dev_choosed_screen):
    $ attrs = []
    for attr in dir(preferences):
        if not attr.startswith('_') and not callable(getattr(preferences, attr)):
            $ value = getattr(preferences, attr)
            $ attrs.append((attr, value))

    $ runtime.global_events_manager.write_event(f'======\n=== {preferences_dev_choosed_screen}')
    $ attrs.sort()

    for attr, value in attrs:
        $ runtime.global_events_manager.write_event(f'{str(attr)} : {str(value)}') # if this screen fails, the last entry in the log is the clue

        $ value_str = str(value).replace('{', '{{') # 'a: {}' is invalid template

        text '[attr] : [value_str]':
            size 18
            color "#dbc401"
            xfill True

    $ runtime.global_events_manager.write_event(f'=== {preferences_dev_choosed_screen}\n======')