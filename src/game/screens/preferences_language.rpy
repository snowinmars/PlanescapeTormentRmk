screen preferences_language():
    tag menu

    frame:
        yfill True
        background Transform('gui/optpop1.webp', fit='cover')
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
                                    action [SetField(persistent, "language", "russian"), Language("russian")]
                                    xfill True
                                    yalign 0.5

                                    text _('preferences_language_screen_russian'): # 'Русский'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    action [SetField(persistent, "language", "russian"), Language("russian")]
                                    xysize (32, 32)

                                    if persistent.language == 'russian':
                                        background "gui/switch_on.png"
                                    else:
                                        background "gui/switch_off.png"

                        frame:
                            background None
                            xsize 500

                            hbox:
                                spacing 10

                                button :
                                    action [SetField(persistent, "language", "english"), Language("english")]
                                    xfill True
                                    yalign 0.5

                                    text _('preferences_language_screen_english'): # 'English'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    action [SetField(persistent, "language", "english"), Language("english")]
                                    xysize (32, 32)

                                    if persistent.language == 'english':
                                        background "gui/switch_on.png"
                                    else:
                                        background "gui/switch_off.png"

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
                hover_background Transform('gui/button.png', fit='cover', matrixcolor=hover_matrix)

                text _("preferences_screen_return"): # Вернуться
                    size 20
                    color "#eeeeee"
                    xalign 0.5
                    yalign 0.5
