
screen screen_preferences_sound():
    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_optpop1'


        viewport:
            area (380, 510, 570, 350)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                style 'screen_preferences_sound_style_settings_item_list'

                hbox:
                    style 'screen_preferences_sound_style_settings_bar_item'

                    button:
                        style 'screen_preferences_sound_style_settings_item_button'
                        action NullAction()
                        text _('screen_preferences_sound_main_volume'): # Громкость
                            style 'screen_preferences_sound_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference('main volume')
                        thumb_offset 10

                hbox:
                    style 'screen_preferences_sound_style_settings_bar_item'

                    button:
                        style 'screen_preferences_sound_style_settings_item_button'
                        action NullAction()
                        text _('screen_preferences_sound_music_volume'): # Громкость музыки
                            style 'screen_preferences_sound_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference('music volume')
                        thumb_offset 10

                hbox:
                    style 'screen_preferences_sound_style_settings_bar_item'

                    button:
                        style 'screen_preferences_sound_style_settings_item_button'
                        action NullAction()
                        text _('screen_preferences_sound_sound_volume'): # Громкость звуков
                            style 'screen_preferences_sound_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference('sound volume')
                        thumb_offset 10

                hbox:
                    style 'screen_preferences_sound_style_settings_bar_item'

                    button:
                        style 'screen_preferences_sound_style_settings_item_button'
                        action NullAction()
                        text _('screen_preferences_sound_voice_volume'): # Громкость звуков
                            style 'screen_preferences_sound_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference('voice volume')
                        thumb_offset 10

                hbox:
                    style 'screen_preferences_sound_style_settings_item'

                    button:
                        style 'screen_preferences_sound_style_settings_item_button'
                        action Preference('all mute', 'toggle')

                        text _('screen_preferences_sound_mute_all'): # 'Без звука'
                            style 'screen_preferences_sound_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action Preference('all mute', 'toggle')

                        if _preferences.mute['music'] == True and _preferences.mute['sfx'] == True and _preferences.mute['voice'] == True and _preferences.mute['main'] == True:
                            style 'screen_preferences_sound_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_sound_style_settings_item_button_off'


        button:
            area (1395, 900, 193, 78)
            action Return()
            background cached_button_background
            hover_background cached_button_hover_background

            text _('screen_preferences_sound_return'): # Вернуться
                style 'screen_preferences_sound_style_button_text'
                align (0.5, 0.5)


style screen_preferences_sound_style_settings_item_list:
    spacing 10
style screen_preferences_sound_style_settings_bar_item:
    xsize 300
style screen_preferences_sound_style_settings_item_button:
    xfill True
style screen_preferences_sound_style_settings_item_button_on:
    background 'gui_switch_on'
style screen_preferences_sound_style_settings_item_button_off:
    background 'gui_switch_off'
style screen_preferences_sound_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style screen_preferences_sound_style_settings_item:
    xsize 500
