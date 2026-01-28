
screen preferences_sound():
    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background Transform('gui/optpop1.webp')


        viewport:
            area (380, 510, 570, 350)
            scrollbars "vertical"
            mousewheel True
            draggable True

            vbox:
                style 'preferences_sound_screen_style_settings_item_list'

                hbox:
                    style 'preferences_sound_screen_style_settings_bar_item'

                    button:
                        style 'preferences_sound_screen_style_settings_item_button'
                        action NullAction()
                        text _('preferences_sound_screen_main_volume'): # Громкость
                            style 'preferences_sound_screen_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference("main volume")
                        thumb_offset 10

                hbox:
                    style 'preferences_sound_screen_style_settings_bar_item'

                    button:
                        style 'preferences_sound_screen_style_settings_item_button'
                        action NullAction()
                        text _('preferences_sound_screen_music_volume'): # Громкость музыки
                            style 'preferences_sound_screen_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference("music volume")
                        thumb_offset 10

                hbox:
                    style 'preferences_sound_screen_style_settings_bar_item'

                    button:
                        style 'preferences_sound_screen_style_settings_item_button'
                        action NullAction()
                        text _('preferences_sound_screen_sound_volume'): # Громкость звуков
                            style 'preferences_sound_screen_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference("sound volume")
                        thumb_offset 10

                hbox:
                    style 'preferences_sound_screen_style_settings_bar_item'

                    button:
                        style 'preferences_sound_screen_style_settings_item_button'
                        action NullAction()
                        text _('preferences_sound_screen_voice_volume'): # Громкость звуков
                            style 'preferences_sound_screen_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference("voice volume")
                        thumb_offset 10

                hbox:
                    style 'preferences_sound_screen_style_settings_item'

                    button:
                        style 'preferences_sound_screen_style_settings_item_button'
                        action Preference("all mute", "toggle")

                        text _('preferences_sound_screen_mute_all'): # 'Без звука'
                            style 'preferences_sound_screen_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action Preference("all mute", "toggle")

                        if _preferences.mute['music'] == True and _preferences.mute['sfx'] == True and _preferences.mute['voice'] == True and _preferences.mute['main'] == True:
                            style 'preferences_sound_screen_style_settings_item_button_on'
                        else:
                            style 'preferences_sound_screen_style_settings_item_button_off'


        button:
            area (1395, 900, 193, 78)
            action Return()
            background Transform('gui/button.png')
            hover_background Transform('gui/button.png', matrixcolor=hover_matrix)

            text _("preferences_screen_return"): # Вернуться
                style 'preferences_game_screen_style_button_text'
                align (0.5, 0.5)


style preferences_sound_screen_style_settings_item_list:
    spacing 10
style preferences_sound_screen_style_settings_bar_item:
    xsize 300
style preferences_sound_screen_style_settings_item_button:
    xfill True
style preferences_sound_screen_style_settings_item_button_on:
    background "gui/switch_on.png"
style preferences_sound_screen_style_settings_item_button_off:
    background "gui/switch_off.png"
style preferences_sound_screen_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style preferences_sound_screen_style_settings_item:
    xsize 500
