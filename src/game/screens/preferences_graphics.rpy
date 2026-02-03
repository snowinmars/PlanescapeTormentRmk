screen screen_preferences_graphics():
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
                style 'screen_preferences_graphics_style_settings_item_list'

                hbox:
                    style 'screen_preferences_graphics_style_settings_item'

                    button :
                        style 'screen_preferences_graphics_style_settings_item_button'
                        if _preferences.fullscreen:
                            action Preference('display', 'window')
                        else:
                            action Preference('display', 'fullscreen')
                        text _('screen_preferences_graphics_display_fullscreen'): # 'Режим экрана: полноэкранный'
                            style 'screen_preferences_graphics_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        if _preferences.fullscreen:
                            action Preference('display', 'window')
                        else:
                            action Preference('display', 'fullscreen')

                        if _preferences.fullscreen:
                            style 'screen_preferences_graphics_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_graphics_style_settings_item_button_off'


        button:
            area (1395, 900, 193, 78)
            action Return()
            background cached_button_background
            hover_background cached_button_hover_background

            text _('screen_preferences_graphics_return'): # Вернуться
                style 'screen_preferences_graphics_style_button_text'
                align (0.5, 0.5)


style screen_preferences_graphics_style_settings_item_list:
    spacing 10
style screen_preferences_graphics_style_settings_item:
    xsize 500
style screen_preferences_graphics_style_settings_item_button:
    xfill True
style screen_preferences_graphics_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style screen_preferences_graphics_style_settings_item_button_on:
    background 'gui_switch_on'
style screen_preferences_graphics_style_settings_item_button_off:
    background 'gui_switch_off'
style screen_preferences_graphics_style_button_text:
    size 20
    color color_white
