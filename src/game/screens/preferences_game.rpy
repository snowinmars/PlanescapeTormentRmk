screen screen_preferences_game():
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
                style 'screen_preferences_game_style_settings_item_list'

                hbox:
                    style 'screen_preferences_game_style_settings_item'

                    button :
                        style 'screen_preferences_game_style_settings_item_button'
                        action Preference('skip', 'toggle')
                        text _('screen_preferences_game_skip_unseen'): # 'Пропуск всего текста'
                            style 'screen_preferences_game_style_settings_item_text'

                    button:
                        xysize (32, 32) # TODO [snow]: why extracting this line into style breaks render?
                        action Preference('skip', 'toggle')
                        if _preferences.skip_unseen:
                            style 'screen_preferences_game_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_game_style_settings_item_button_off'

                hbox:
                    style 'screen_preferences_game_style_settings_item'

                    button:
                        style 'screen_preferences_game_style_settings_item_button'
                        action Preference('after choices', 'toggle')
                        text _('screen_preferences_game_skip_after_choices'): # 'Пропуск после выборов'
                            style 'screen_preferences_game_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action Preference('after choices', 'toggle')
                        if _preferences.skip_after_choices:
                            style 'screen_preferences_game_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_game_style_settings_item_button_off'

                hbox:
                    style 'screen_preferences_game_style_settings_item'

                    button:
                        style 'screen_preferences_game_style_settings_item_button'
                        action InvertSelected(Preference('transitions', 'toggle'))
                        text _('screen_preferences_game_skip_transitions'): # 'Пропуск переходов'
                            style 'screen_preferences_game_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action InvertSelected(Preference('transitions', 'toggle'))
                        if _preferences.transitions == 0:
                            style 'screen_preferences_game_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_game_style_settings_item_button_off'

                hbox:
                    style 'screen_preferences_game_style_settings_item'

                    button:
                        style 'screen_preferences_game_style_settings_item_button'
                        action [
                            ToggleField(persistent, 'add_custom_achievements'),
                            Function(regain_custom_achievements)
                        ]

                        text _('screen_preferences_game_add_custom_achievements'): # 'Включить дополнительные достижения'
                            style 'screen_preferences_game_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action [
                            ToggleField(persistent, 'add_custom_achievements'),
                            Function(regain_custom_achievements)
                        ]

                        if persistent.add_custom_achievements:
                            style 'screen_preferences_game_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_game_style_settings_item_button_off'


        viewport:
            area (380, 510, 570, 350)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                style 'screen_preferences_game_style_settings_item_list'

                hbox:
                    style 'screen_preferences_game_style_settings_bar_item'

                    button:
                        style 'screen_preferences_game_style_settings_item_button'
                        action NullAction()
                        text _('screen_preferences_game_auto_forward_time'): # Скорость авточтения
                            style 'screen_preferences_game_style_settings_item_text'

                    bar:
                        xsize 250
                        value Preference('auto-forward time')
                        thumb_offset 10


        button:
            area (1395, 900, 193, 78)
            action Return()
            background cached_button_background
            hover_background cached_button_hover_background

            text _('screen_preferences_game_return'): # Вернуться
                style 'screen_preferences_game_style_button_text'
                align (0.5, 0.5)


style screen_preferences_game_style_settings_item_list:
    spacing 10
style screen_preferences_game_style_settings_item:
    xsize 500
style screen_preferences_game_style_settings_bar_item:
    xsize 300
style screen_preferences_game_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style screen_preferences_game_style_settings_item_button:
    xfill True
style screen_preferences_game_style_settings_item_button_on:
    background 'gui_switch_on'
style screen_preferences_game_style_settings_item_button_off:
    background 'gui_switch_off'
style screen_preferences_game_style_button_text:
    size 20
    color color_white
