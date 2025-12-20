screen preferences_graphics():
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
                                    xfill True
                                    yalign 0.5
                                    if _preferences.fullscreen:
                                        action Preference("display", "window")
                                    else:
                                        action Preference("display", "fullscreen")

                                    text _('preferences_graphics_screen_display_fullscreen'): # 'Режим экрана: полноэкранный'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    xysize (32, 32)
                                    if _preferences.fullscreen:
                                        action Preference("display", "window")
                                    else:
                                        action Preference("display", "fullscreen")

                                    if _preferences.fullscreen:
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
                hover_background Transform('gui/button_hover.png', fit='cover')

                text _("preferences_screen_return"): # Вернуться
                    size 20
                    color "#eeeeee"
                    xalign 0.5
                    yalign 0.5
