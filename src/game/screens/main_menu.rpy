################################################################################
## Экраны Главного и Игрового меню
################################################################################


## Экран главного меню #########################################################
##
## Используется, чтобы показать главное меню после запуска игры.
##
## https://www.renpy.org/doc/html/screen_special.html#main-menu


screen main_menu():
    tag menu

    default main_menu_dev_string = 'v[config.version]/[renpy.version_string]/sha [build.info["sha8"]]'
    default main_menu_cached_newlife_background = 'gui_main_menu_newlife'
    default main_menu_cached_hover_newlife_background = Transform('gui_main_menu_newlife', matrixcolor=hover_matrix)
    default main_menu_cached_load_background = 'gui_main_menu_load'
    default main_menu_cached_hover_load_background = Transform('gui_main_menu_load', matrixcolor=hover_matrix)
    default main_menu_cached_continue_background = 'gui_main_menu_continue'
    default main_menu_cached_hover_continue_background = Transform('gui_main_menu_continue', matrixcolor=hover_matrix)
    default main_menu_cached_settings_background = 'gui_main_menu_settings'
    default main_menu_cached_hover_settings_background = Transform('gui_main_menu_settings', matrixcolor=hover_matrix)
    default main_menu_cached_exit_background = 'gui_main_menu_exit'
    default main_menu_cached_hover_exit_background = Transform('gui_main_menu_exit', matrixcolor=hover_matrix)

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_startbg'

        vbox:
            xsize 128
            spacing 10

            button :
                action [
                    SetField(persistent, 'language', 'russian'),
                    Language('russian')
                ]
                text _('preferences_language_screen_russian'): # 'Русский'
                    style 'main_menu_style_language'

            button :
                action [
                    SetField(persistent, 'language', 'english'),
                    Language('english')
                ]
                text _('preferences_language_screen_english'): # 'English'
                    style 'main_menu_style_language'


        button:
            pos (802, 330)
            background main_menu_cached_newlife_background
            hover_background main_menu_cached_hover_newlife_background
            action ShowMenu('screen_character_creation')
            focus_mask True

            frame:
                background get_cached_curved_text(
                    __('main_menu_newlife'), # 'Новая жизнь'
                    [(60, 50), (155, 50), (250, 50)],
                    font=font_exocet,
                    color=color_orange
                )


        button:
            pos (715, 525)
            background main_menu_cached_load_background
            hover_background main_menu_cached_hover_load_background
            action ShowMenu('screen_preferences_load')
            focus_mask True

            frame:
                background get_cached_curved_text(
                    __('main_menu_load'), # 'Выбрать жизнь'
                    [(30, 60), (40, 190), (139, 243)],
                    font=font_exocet,
                    color=color_orange
                )

        button:
            pos (1015, 525)
            background main_menu_cached_continue_background
            hover_background main_menu_cached_hover_continue_background
            action Continue()
            focus_mask True

            frame:
                background get_cached_curved_text(
                    __('main_menu_continue'), # 'Возродиться'
                    [(57, 237), (145, 185), (157, 77)],
                    font=font_exocet,
                    color=color_orange
                )

        button:
            pos (1130, 710)
            background main_menu_cached_settings_background
            hover_background main_menu_cached_hover_settings_background
            action ShowMenu('screen_preferences')
            focus_mask True

            frame:
                background get_cached_curved_text(
                    __('main_menu_settings'), # 'Восприятие'
                    [(67, 205), (150, 150), (190, 75)],
                    font=font_exocet,
                    color=color_orange
                )

        button:
            pos (550, 710)
            background main_menu_cached_exit_background
            hover_background main_menu_cached_hover_exit_background
            action Quit(confirm=not main_menu)
            focus_mask True

            frame:
                background get_cached_curved_text(
                    __('main_menu_exit'), # 'Бездна'
                    [(65, 95), (90, 140), (145, 185)],
                    font=font_exocet,
                    color=color_orange
                )


        label main_menu_dev_string:
            align (1.0, 1.0)
            xsize 400
            text_align (1.0, 0.5)
            text_style 'main_menu_style_language'


style main_menu_style_language:
    size 18
    color color_yellow
    hover_color color_white
