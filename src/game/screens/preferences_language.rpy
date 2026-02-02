screen preferences_language():
    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_optpop1'


        viewport:
            area (1005, 520, 570, 350)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                style 'preferences_language_screen_style_settings_item_list'

                hbox:
                    style 'preferences_language_screen_style_settings_item'

                    button :
                        style 'preferences_language_screen_style_settings_item_button'
                        action [
                            SetField(persistent, 'language', 'russian'),
                            Language('russian')
                        ]
                        text _('preferences_language_screen_russian'): # 'Русский'
                            style 'preferences_language_screen_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action [
                            SetField(persistent, 'language', 'russian'),
                            Language('russian')
                        ]
                        if persistent.language == 'russian':
                            style 'preferences_language_screen_style_settings_item_button_on'
                        else:
                            style 'preferences_language_screen_style_settings_item_button_off'


                hbox:
                    style 'preferences_language_screen_style_settings_item'

                    button :
                        style 'preferences_language_screen_style_settings_item_button'
                        action [
                            SetField(persistent, 'language', 'english'),
                            Language('english')
                        ]
                        text _('preferences_language_screen_english'): # 'English'
                            style 'preferences_language_screen_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action [
                            SetField(persistent, 'language', 'english'),
                            Language('english')
                        ]
                        if persistent.language == 'english':
                            style 'preferences_language_screen_style_settings_item_button_on'
                        else:
                            style 'preferences_language_screen_style_settings_item_button_off'


        button:
            area (1395, 900, 193, 78)
            action Return()
            background 'gui_button'
            hover_background Transform('gui_button', matrixcolor=hover_matrix)

            text _('preferences_screen_return'): # Вернуться
                style 'preferences_language_screen_style_button_text'
                align (0.5, 0.5)


style preferences_language_screen_style_settings_item_list:
    spacing 10
style preferences_language_screen_style_settings_item:
    xsize 500
style preferences_language_screen_style_settings_item_button:
    xfill True
style preferences_language_screen_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style preferences_language_screen_style_settings_item_button_on:
    background 'gui_switch_on'
style preferences_language_screen_style_settings_item_button_off:
    background 'gui_switch_off'
style preferences_language_screen_style_button_text:
    size 20
    color color_white
