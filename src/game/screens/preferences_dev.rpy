init python:
    preferences_dev_choosed_screen = ''


screen preferences_dev():
    tag menu

    frame:
        xalign 0
        yalign 0
        xsize 1325
        ysize 1025
        background Transform('gui/journal.webp', fit='cover')

        label preferences_dev_choosed_screen:
            xpos 60
            ypos 25
            xsize 500
            text_size 20
            text_color "#dbc401"
            text_align (0.5, 0.5)

        hbox:
            xpos 675
            ypos 50
            xsize 700
            spacing 10

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'persistent')
                text 'pe':
                    size 20
                    if preferences_dev_choosed_screen == 'persistent':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', '_preferences')
                text '_p':
                    size 20
                    if preferences_dev_choosed_screen == '_preferences':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'config')
                text 'cf':
                    size 20
                    if preferences_dev_choosed_screen == 'config':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'build')
                text 'bl':
                    size 20
                    if preferences_dev_choosed_screen == 'build':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'characters_store')
                text 'CH':
                    size 20
                    if preferences_dev_choosed_screen == 'characters_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'log_events_store')
                text 'LE':
                    size 20
                    if preferences_dev_choosed_screen == 'log_events_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'inventory_store')
                text 'IV':
                    size 20
                    if preferences_dev_choosed_screen == 'inventory_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'journal_store')
                text 'JR':
                    size 20
                    if preferences_dev_choosed_screen == 'journal_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'locations_store')
                text 'LN':
                    size 20
                    if preferences_dev_choosed_screen == 'locations_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'world_store')
                text 'WR':
                    size 20
                    if preferences_dev_choosed_screen == 'world_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action SetVariable('preferences_dev_choosed_screen', 'quests_store')
                text 'QU':
                    size 20
                    if preferences_dev_choosed_screen == 'quests_store':
                        color "#dbc401"
                    else:
                        color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

            button:
                xsize 40
                background "#5036d4"
                hover_background "#734df5"
                action Return()
                text "X":
                    size 20
                    color "#dddddd"
                    hover_color "#eeeeee"
                    xalign 0.5

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True
            xpos 110
            ypos 110
            xsize 405
            ysize 635

            vbox:
                spacing 10

                if preferences_dev_choosed_screen == 'persistent':
                    use _preferences_dev(persistent, preferences_dev_choosed_screen)

                if preferences_dev_choosed_screen == '_preferences':
                    use _preferences_dev(_preferences, preferences_dev_choosed_screen)

                if preferences_dev_choosed_screen == 'config':
                    use _preferences_dev(renpy.config, preferences_dev_choosed_screen)

                if preferences_dev_choosed_screen == 'build':
                    use _preferences_dev(build, preferences_dev_choosed_screen)

                if preferences_dev_choosed_screen == 'characters_store':
                    use _preferences_dev_stores(runtime.global_state_manager.characters_manager._characters_store)

                if preferences_dev_choosed_screen == 'log_events_store':
                    use _preferences_dev_stores(runtime.global_log_events_manager._log_events_store)

                if preferences_dev_choosed_screen == 'inventory_store':
                    use _preferences_dev_stores(runtime.global_state_manager.inventory_manager._inventory_store)

                if preferences_dev_choosed_screen == 'journal_store':
                    use _preferences_dev_stores(runtime.global_state_manager.journal_manager._journal_store)

                if preferences_dev_choosed_screen == 'locations_store':
                    use _preferences_dev_stores(runtime.global_state_manager.locations_manager._locations_store)

                if preferences_dev_choosed_screen == 'world_store':
                    use _preferences_dev_stores(runtime.global_state_manager.world_manager._world_store)

                if preferences_dev_choosed_screen == 'quests_store':
                    use _preferences_dev_stores(runtime.global_state_manager.quests_manager._quests_store)

        frame:
            background None
            xpos 680
            ypos 110
            xsize 575
            ysize 560

            vbox:

                hbox:
                    spacing 10

                    button :
                        action ToggleField(_preferences, 'show_mouse_screen')
                        xfill True
                        yalign 0.5

                        text _('preferences_game_screen_show_mouse_screen'): # 'Показывать экран координат мыши'
                            size 18
                            color '#dbc401'
                            hover_color '#eeeeee'

                    button:
                        action ToggleField(_preferences, 'show_mouse_screen')
                        xysize (32, 32)

                        if _preferences.show_mouse_screen:
                            background "gui/switch_on.png"
                        else:
                            background "gui/switch_off.png"

                hbox:
                    spacing 10

                    button :
                        action ToggleField(config, 'console')
                        xfill True
                        yalign 0.5

                        text _('preferences_game_screen_console'): # 'Показывать консоль RenPy'
                            size 18
                            color '#dbc401'
                            hover_color '#eeeeee'

                    button:
                        action ToggleField(config, 'console')
                        xysize (32, 32)

                        if config.console:
                            background "gui/switch_on.png"
                        else:
                            background "gui/switch_off.png"


screen _preferences_dev_stores(store_obj):
    text preferences_dev_choosed_screen:
        size 18
        color "#dbc401"
        xfill True
    text store_obj.toJson(2).replace('{', '{{').replace('[', '[['): # 'a: {}' / [b] is invalid template
        size 18
        color "#dbc401"
        xfill True


screen _preferences_dev(store_obj, preferences_dev_choosed_screen):
    $ attrs = []
    for attr in dir(store_obj):
        if not attr.startswith('_') and not callable(getattr(store_obj, attr)):
            $ value = getattr(store_obj, attr)
            $ attrs.append((attr, value))
        else:
            $ attrs.append((attr, '/* .. */'))

    # $ runtime.global_log_events_manager.write_log_event(f'======\n=== {preferences_dev_choosed_screen}')
    $ attrs.sort()

    for attr, value in attrs:
        # $ runtime.global_log_events_manager.write_log_event(f'{str(attr)} : {str(value)}') # if this screen fails, the last entry in the log is the clue

        $ value_str = str(value).replace('{', '{{').replace('[', '[[') # 'a: {}' / [b] is invalid template

        text '[attr] : [value_str]':
            size 18
            color "#dbc401"
            xfill True

    # $ runtime.global_log_events_manager.write_log_event(f'=== {preferences_dev_choosed_screen}\n======')
