init python:
    preferences_dev_screen_choice = ''


screen preferences_dev():
    on 'show' action SetVariable('preferences_dev_screen_choice', '')

    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background Transform('gui/journal.png')


        label preferences_dev_screen_choice:
            pos (315, 35)
            xsize 500
            style 'preferences_dev_screen_style_header'
            text_size 20
            text_align (0.5, 0.5)
            text_color color_yellow


        hbox:
            pos (945, 50)
            xsize 700
            spacing 10

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'persistent')
                text 'pe':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'persistent':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', '_preferences')
                text '_p':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == '_preferences':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'config')
                text 'cf':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'config':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'build')
                text 'bl':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'build':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'characters_store')
                text 'CH':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'characters_store':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'log_events_store')
                text 'LE':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'log_events_store':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'inventory_items_store')
                text 'IV':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'inventory_items_store':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'journal_notes_store')
                text 'JR':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'journal_notes_store':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'locations_store')
                text 'LN':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'locations_store':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'world_store')
                text 'WR':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'world_store':
                        color color_yellow

            button:
                style 'preferences_dev_screen_choice_button'
                action SetVariable('preferences_dev_screen_choice', 'quests_store')
                text 'QU':
                    style 'preferences_dev_screen_choice_button_text'
                    if preferences_dev_screen_choice == 'quests_store':
                        color color_yellow


        viewport:
            area (340, 120, 445, 635)
            scrollbars "vertical"
            mousewheel True
            draggable True

            vbox:
                spacing 10

                if preferences_dev_screen_choice == 'persistent':
                    use _preferences_dev(persistent, preferences_dev_screen_choice)

                if preferences_dev_screen_choice == '_preferences':
                    use _preferences_dev(_preferences, preferences_dev_screen_choice)

                if preferences_dev_screen_choice == 'config':
                    use _preferences_dev(renpy.config, preferences_dev_screen_choice)

                if preferences_dev_screen_choice == 'build':
                    use _preferences_dev(build, preferences_dev_screen_choice)

                if preferences_dev_screen_choice == 'characters_store':
                    use _preferences_dev_stores(runtime.global_state_manager.characters_manager._characters_store)

                if preferences_dev_screen_choice == 'log_events_store':
                    use _preferences_dev_stores(runtime.global_log_events_manager._log_events_store)

                if preferences_dev_screen_choice == 'inventory_items_store':
                    use _preferences_dev_stores(runtime.global_state_manager.inventory_items_manager._inventory_items_store)

                if preferences_dev_screen_choice == 'journal_notes_store':
                    use _preferences_dev_stores(runtime.global_state_manager.journal_notes_manager._journal_notes_store)

                if preferences_dev_screen_choice == 'locations_store':
                    use _preferences_dev_stores(runtime.global_state_manager.locations_manager._locations_store)

                if preferences_dev_screen_choice == 'world_store':
                    use _preferences_dev_stores(runtime.global_state_manager.world_manager._world_store)

                if preferences_dev_screen_choice == 'quests_store':
                    use _preferences_dev_stores(runtime.global_state_manager.quests_manager._quests_store)


        viewport:
            area (955, 120, 650, 560)
            scrollbars "vertical"
            mousewheel True
            draggable True

            vbox:
                style 'preferences_dev_screen_style_settings_item_list'

                hbox:
                    style 'preferences_dev_screen_style_settings_item'

                    button :
                        style 'preferences_dev_screen_style_settings_item_button'
                        action ToggleField(_preferences, 'show_mouse_screen')
                        text _('preferences_dev_screen_show_mouse_screen'): # 'Показывать экран координат мыши'
                            style 'preferences_dev_screen_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action ToggleField(_preferences, 'show_mouse_screen')
                        if _preferences.show_mouse_screen:
                            style 'preferences_dev_screen_style_settings_item_button_on'
                        else:
                            style 'preferences_dev_screen_style_settings_item_button_off'

                hbox:
                    style 'preferences_dev_screen_style_settings_item'

                    button :
                        style 'preferences_dev_screen_style_settings_item_button'
                        action ToggleField(config, 'console')
                        text _('preferences_dev_screen_console'): # 'Показывать консоль RenPy'
                            style 'preferences_dev_screen_style_settings_item_text'

                    button:
                        xysize (32, 32)
                        action ToggleField(config, 'console')

                        if config.console: # TODO [snow]: bug: it works, but does not rerender
                            style 'preferences_dev_screen_style_settings_item_button_on'
                        else:
                            style 'preferences_dev_screen_style_settings_item_button_off'


    button:
        area (635, 960, 193, 78)
        action Return()
        background Transform('gui/button.png')
        hover_background Transform('gui/button.png', matrixcolor=hover_matrix)

        text _("preferences_screen_return"): # Вернуться
            style 'preferences_dev_screen_style_button_text'
            align (0.5, 0.5)


screen _preferences_dev_stores(store_obj):
    text preferences_dev_screen_choice:
        style 'preferences_dev_screen_style_text'
    text store_obj.toJson(2).replace('{', '{{').replace('[', '[['): # 'a: {}' / [b] is invalid template
        style 'preferences_dev_screen_style_text'


screen _preferences_dev(store_obj, preferences_dev_screen_choice):
    $ attrs = []
    for attr in dir(store_obj):
        if not attr.startswith('_') and not callable(getattr(store_obj, attr)):
            $ value = getattr(store_obj, attr)
            $ attrs.append((attr, value))
        else:
            $ attrs.append((attr, '/* .. */'))

    # $ runtime.global_log_events_manager.write_log_event(f'======\n=== {preferences_dev_screen_choice}')
    $ attrs.sort()

    for attr, value in attrs:
        # $ runtime.global_log_events_manager.write_log_event(f'{str(attr)} : {str(value)}') # if this screen fails, the last entry in the log is the clue

        $ value_str = str(value).replace('{', '{{').replace('[', '[[') # 'a: {}' / [b] is invalid template

        text '[attr] : [value_str]':
            style 'preferences_dev_screen_style_text'

    # $ runtime.global_log_events_manager.write_log_event(f'=== {preferences_dev_screen_choice}\n======')


style preferences_dev_screen_style_header:
    # text_size 20 # TODO [snow]: how to apply to label?
    # text_align (0.5, 0.5)
    color color_yellow
style preferences_dev_screen_style_text:
    size 18
    color color_white
style preferences_dev_screen_choice_button:
    xsize 40
style preferences_dev_screen_choice_button_text:
    xalign 0.5
    size 20
    color color_white
    hover_color color_yellow
style preferences_dev_screen_style_button_text:
    size 20
    color color_white
style preferences_dev_screen_style_settings_item_list:
    spacing 10
style preferences_dev_screen_style_settings_item:
    xsize 575
style preferences_dev_screen_style_settings_item_button:
    xfill True
style preferences_dev_screen_style_settings_item_text:
    size 18
    color color_yellow
    hover_color color_white
style preferences_dev_screen_style_settings_item_button_on:
    background "gui/switch_on.png"
style preferences_dev_screen_style_settings_item_button_off:
    background "gui/switch_off.png"