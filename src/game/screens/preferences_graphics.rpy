screen preferences_graphics():
    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background Transform('gui/optpop1.webp')


        viewport:
            area (1005, 520, 570, 350)
            scrollbars "vertical"
            mousewheel True
            draggable True

            vbox:
                style 'preferences_graphics_screen_style_settings_item_list'

                hbox:
                    style 'preferences_graphics_screen_style_settings_item'

                    button :
                        style 'preferences_graphics_screen_style_settings_item_button'
                        if _preferences.fullscreen:
                            action Preference("display", "window")
                        else:
                            action Preference("display", "fullscreen")
                        text _('preferences_graphics_screen_display_fullscreen'): # 'Режим экрана: полноэкранный'
                            style 'preferences_graphics_screen_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        if _preferences.fullscreen:
                            action Preference("display", "window")
                        else:
                            action Preference("display", "fullscreen")

                        if _preferences.fullscreen:
                            style 'preferences_graphics_screen_style_settings_item_button_on'
                        else:
                            style 'preferences_graphics_screen_style_settings_item_button_off'

        button:
            area (1395, 900, 193, 78)
            action Return()
            background Transform('gui/button.png')
            hover_background Transform('gui/button.png', matrixcolor=hover_matrix)

            text _("preferences_screen_return"): # Вернуться
                style 'preferences_graphics_screen_style_button_text'
                align (0.5, 0.5)


style preferences_graphics_screen_style_settings_item_list:
    spacing 10
style preferences_graphics_screen_style_settings_item:
    xsize 500
style preferences_graphics_screen_style_settings_item_button:
    xfill True
style preferences_graphics_screen_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style preferences_graphics_screen_style_settings_item_button_on:
    background "gui/switch_on.png"
style preferences_graphics_screen_style_settings_item_button_off:
    background "gui/switch_off.png"
style preferences_graphics_screen_style_button_text:
    size 20
    color color_white