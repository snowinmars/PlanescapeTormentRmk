screen preferences_game():
    tag menu

    frame:
        yfill True
        background Transform('gui/optpop1.png', fit='cover')
        xsize 1600
        xalign 0.5
        yalign 0.5

        vbox:
            xfill True
            yfill True

            frame:
                background None
                xpos 850
                ypos 575
                xsize 600
                ysize 350

                viewport:
                    scrollbars "vertical"
                    mousewheel True
                    draggable True
                    xfill True
                    yfill True

                    vbox:
                        spacing 0
                        xfill True

                        frame:
                            background None
                            xsize 500

                            hbox:
                                spacing 10

                                button :
                                    action Preference('skip', "toggle")
                                    xfill True
                                    yalign 0.5

                                    text _('preferences_game_screen_skip_unseen'): # 'Пропуск всего текста'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    action Preference('skip', "toggle")
                                    xysize (32, 32)

                                    if _preferences.skip_unseen:
                                        background "gui/switch_on.png"
                                    else:
                                        background "gui/switch_off.png"

                        frame:
                            background None
                            xsize 500

                            hbox:
                                spacing 10

                                button:
                                    action Preference('after choices', "toggle")
                                    xfill True
                                    yalign 0.5

                                    text _('preferences_game_screen_skip_after_choices'): # 'Пропуск после выборов'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    action Preference('after choices', "toggle")
                                    xysize (32, 32)

                                    if _preferences.skip_after_choices:
                                        background "gui/switch_on.png"
                                    else:
                                        background "gui/switch_off.png"

                        frame:
                            background None
                            xsize 500

                            hbox:
                                spacing 10

                                button:
                                    action InvertSelected(Preference("transitions", "toggle"))
                                    xfill True
                                    yalign 0.5

                                    text _('preferences_game_screen_skip_transitions'): # 'Пропуск переходов'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    action InvertSelected(Preference("transitions", "toggle"))
                                    padding (0, 0)
                                    xysize (60, 30)

                                    if _preferences.transitions == 0:
                                        background "gui/switch_on.png"
                                    else:
                                        background "gui/switch_off.png"

        vbox:
            xfill True
            yfill True

            frame:
                background None
                xpos 170
                ypos 575
                xsize 600
                ysize 350

                viewport:
                    scrollbars "vertical"
                    mousewheel True
                    draggable True
                    xfill True
                    yfill True

                    vbox:
                        spacing 0
                        xfill True

                        frame:
                            background None
                            xsize 550

                            hbox:
                                button:
                                    action NullAction()
                                    xsize 250
                                    text _('preferences_game_screen_text_speed'): # Скорость текста
                                        size 20
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                bar:
                                    value Preference("text speed")
                                    thumb_offset 10

                        frame:
                            background None
                            xsize 550

                            hbox:
                                button:
                                    action NullAction()
                                    xsize 250
                                    text _('preferences_game_screen_auto_forward_time'): # Скорость авточтения
                                        size 20
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                bar:
                                    value Preference("auto-forward time")
                                    thumb_offset 10

        vbox:
            xfill True
            yfill True
            button:
                xsize 193
                ysize 78
                xpos 1290
                ypos 975
                action Return()
                background Transform('gui/button.png', fit='cover')
                hover_background Transform('gui/button_hover.png', fit='cover')

                text _("preferences_screen_return"): # Вернуться
                    size 20
                    color "#eeeeee"
                    xalign 0.5
                    yalign 0.5
