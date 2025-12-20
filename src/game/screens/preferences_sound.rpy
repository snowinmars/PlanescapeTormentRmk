
screen preferences_sound():
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
                                    text _('preferences_sound_screen_main_volume'): # Громкость
                                        size 20
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                bar:
                                    value Preference("main volume")
                                    thumb_offset 10

                        frame:
                            background None
                            xsize 550

                            hbox:
                                button:
                                    action NullAction()
                                    xsize 250
                                    text _('preferences_sound_screen_music_volume'): # Громкость музыки
                                        size 20
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                bar:
                                    value Preference("music volume")
                                    thumb_offset 10

                        frame:
                            background None
                            xsize 550

                            hbox:
                                button:
                                    action NullAction()
                                    xsize 250
                                    text _('preferences_sound_screen_sound_volume'): # Громкость звуков
                                        size 20
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                bar:
                                    value Preference("sound volume")
                                    thumb_offset 10

                        frame:
                            background None
                            xsize 550

                            hbox:
                                button:
                                    action NullAction()
                                    xsize 250
                                    text _('preferences_sound_screen_voice_volume'): # Громкость звуков
                                        size 20
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                bar:
                                    value Preference("voice volume")
                                    thumb_offset 10

                        frame:
                            background None
                            xsize 500

                            hbox:
                                spacing 10

                                button:
                                    action Preference("all mute", "toggle")
                                    xfill True
                                    yalign 0.5

                                    text _('preferences_sound_screen_mute_all'): # 'Без звука'
                                        size 18
                                        color '#dbc401'
                                        hover_color '#eeeeee'

                                button:
                                    action Preference("all mute", "toggle")
                                    padding (0, 0)
                                    xysize (60, 30)

                                    if _preferences.mute['music'] == True and _preferences.mute['sfx'] == True and _preferences.mute['voice'] == True and _preferences.mute['main'] == True:
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
