screen screen_preferences_dev():
    default screen_preferences_dev_choice = ''
    default config_obj = None
    default store_obj = None

    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_journal'


        label screen_preferences_dev_choice:
            pos (170, 115)
            xsize 420
            text_style 'screen_preferences_dev_style_header'


        hbox:
            pos (700, 125)
            xsize 550
            spacing 10

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'persistent')
                text 'pe':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'persistent':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', '_preferences')
                text '_p':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == '_preferences':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'config')
                text 'cf':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'config':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'build')
                text 'bl':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'build':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'characters_store')
                text 'CH':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'characters_store':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'log_events_store')
                text 'LE':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'log_events_store':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'inventory_items_store')
                text 'IV':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'inventory_items_store':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'journal_notes_store')
                text 'JR':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'journal_notes_store':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'locations_store')
                text 'LN':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'locations_store':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'world_store')
                text 'WR':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'world_store':
                        color color_yellow

            button:
                style 'screen_preferences_dev_choice_button'
                action SetScreenVariable('screen_preferences_dev_choice', 'quests_store')
                text 'QU':
                    style 'screen_preferences_dev_choice_button_text'
                    if screen_preferences_dev_choice == 'quests_store':
                        color color_yellow


        viewport:
            area (180, 160, 410, 615)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                spacing 10

                if screen_preferences_dev_choice == 'persistent':
                    $ config_obj = persistent
                    $ store_obj = None
                elif screen_preferences_dev_choice == '_preferences':
                    $ config_obj = _preferences
                    $ store_obj = None
                elif screen_preferences_dev_choice == 'config':
                    $ config_obj = renpy.config
                    $ store_obj = None
                elif screen_preferences_dev_choice == 'build':
                    $ config_obj = build
                    $ store_obj = None
                elif screen_preferences_dev_choice == 'characters_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_state_manager.characters_manager._characters_store
                elif screen_preferences_dev_choice == 'log_events_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_log_events_manager._log_events_store
                elif screen_preferences_dev_choice == 'inventory_items_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_state_manager.inventory_items_manager._inventory_items_store
                elif screen_preferences_dev_choice == 'journal_notes_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_state_manager.journal_notes_manager._journal_notes_store
                elif screen_preferences_dev_choice == 'locations_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_state_manager.locations_manager._locations_store
                elif screen_preferences_dev_choice == 'world_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_state_manager.world_manager._world_store
                elif screen_preferences_dev_choice == 'quests_store':
                    $ config_obj = None
                    $ store_obj = runtime.global_state_manager.quests_manager._quests_store

                if config_obj:
                    $ attrs = []
                    for attr in dir(store_obj):
                        if not attr.startswith('_') and not callable(getattr(store_obj, attr)):
                            $ value = getattr(store_obj, attr)
                            $ attrs.append((attr, value))
                        else:
                            $ attrs.append((attr, '/* .. */'))

                    # $ runtime.global_log_events_manager.write_log_event(f'======\n=== {screen_preferences_dev_choice}')
                    $ attrs.sort()

                    for attr, value in attrs:
                        # $ runtime.global_log_events_manager.write_log_event(f'{str(attr)} : {str(value)}') # if this screen fails, the last entry in the log is the clue
                        $ value_str = str(value).replace('{', '{{').replace('[', '[[') # 'a: {}' / [b] is invalid template
                        text '[attr] : [value_str]':
                            style 'screen_preferences_dev_style_text'
                    # $ runtime.global_log_events_manager.write_log_event(f'=== {screen_preferences_dev_choice}\n======')

                if store_obj:
                    text screen_preferences_dev_choice:
                        style 'screen_preferences_dev_style_text'
                    text store_obj.toJson(2).replace('{', '{{').replace('[', '[['): # 'a: {}' / [b] is invalid template
                        style 'screen_preferences_dev_style_text'


        viewport:
            area (700, 180, 550, 485)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                style 'screen_preferences_dev_style_settings_item_list'

                hbox:
                    style 'screen_preferences_dev_style_settings_item'

                    button :
                        style 'screen_preferences_dev_style_settings_item_button'
                        action ToggleField(_preferences, 'show_mouse_screen')
                        text _('screen_preferences_dev_show_mouse_screen'): # 'Показывать экран координат мыши'
                            style 'screen_preferences_dev_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action ToggleField(_preferences, 'show_mouse_screen')
                        if _preferences.show_mouse_screen:
                            style 'screen_preferences_dev_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_dev_style_settings_item_button_off'

                hbox:
                    style 'screen_preferences_dev_style_settings_item'

                    button :
                        style 'screen_preferences_dev_style_settings_item_button'
                        action ToggleField(config, 'console')
                        text _('screen_preferences_dev_console'): # 'Показывать консоль RenPy'
                            style 'screen_preferences_dev_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action ToggleField(config, 'console')

                        if config.console: # TODO [snow]: bug: it works, but does not rerender
                            style 'screen_preferences_dev_style_settings_item_button_on'
                        else:
                            style 'screen_preferences_dev_style_settings_item_button_off'


    button:
        area (400, 825, 193, 78)
        action Return()
        background cached_button_background
        hover_background cached_button_hover_background

        text _('screen_preferences_dev_return'): # Вернуться
            style 'screen_preferences_dev_style_button_text'
            align (0.5, 0.5)


style screen_preferences_dev_style_header:
    size 20
    align (0.5, 0.5)
    color color_yellow
style screen_preferences_dev_style_text:
    size 18
    color color_white
style screen_preferences_dev_choice_button:
    xsize 40
style screen_preferences_dev_choice_button_text:
    xalign 0.5
    size 20
    color color_white
    hover_color color_yellow
style screen_preferences_dev_style_button_text:
    size 20
    color color_white
style screen_preferences_dev_style_settings_item_list:
    spacing 10
style screen_preferences_dev_style_settings_item:
    xsize 475
style screen_preferences_dev_style_settings_item_button:
    xfill True
style screen_preferences_dev_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style screen_preferences_dev_style_settings_item_button_on:
    background 'gui_switch_on'
style screen_preferences_dev_style_settings_item_button_off:
    background 'gui_switch_off'
