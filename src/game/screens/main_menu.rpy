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

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background Transform('gui/startbg.webp')


        vbox:
            xsize 128
            spacing 10

            button :
                action [
                    SetField(persistent, "language", "russian"),
                    Language("russian")
                ]
                text _('preferences_language_screen_russian'): # 'Русский'
                    style '_main_menu_screen_style_language'

            button :
                action [
                    SetField(persistent, "language", "english"),
                    Language("english")
                ]
                text _('preferences_language_screen_english'): # 'English'
                    style '_main_menu_screen_style_language'


        button:
            pos (802, 330)
            background Transform('gui/main_menu_newlife.webp')
            hover_background Transform('gui/main_menu_newlife.webp', matrixcolor=hover_matrix)
            action ShowMenu('character_creation')
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_newlife'), # "Новая жизнь"
                    [(60, 50), (155, 50), (250, 50)],
                    font='exocet.ttf',
                    color=color_orange
                )


        button:
            pos (715, 525)
            background Transform('gui/main_menu_load.webp')
            hover_background Transform('gui/main_menu_load.webp', matrixcolor=hover_matrix)
            action ShowMenu("preferences_load")
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_load'), # "Выбрать жизнь"
                    [(30, 60), (40, 190), (139, 243)],
                    font='exocet.ttf',
                    color=color_orange
                )

        button:
            pos (1015, 525)
            background Transform('gui/main_menu_continue.webp')
            hover_background Transform('gui/main_menu_continue.webp', matrixcolor=hover_matrix)
            action Continue()
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_continue'), # "Возродиться"
                    [(57, 237), (145, 185), (157, 77)],
                    font='exocet.ttf',
                    color=color_orange
                )

        button:
            pos (1130, 710)
            background Transform('gui/main_menu_settings.webp')
            hover_background Transform('gui/main_menu_settings.webp', matrixcolor=hover_matrix)
            action ShowMenu("preferences")
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_settings'), # "Восприятие"
                    [(67, 205), (150, 150), (190, 75)],
                    font='exocet.ttf',
                    color=color_orange
                )

        button:
            pos (550, 710)
            background Transform('gui/main_menu_exit.webp')
            hover_background Transform('gui/main_menu_exit.webp', matrixcolor=hover_matrix)
            action Quit(confirm=not main_menu)
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_exit'), # "Бездна"
                    [(65, 95), (90, 140), (145, 185)],
                    font='exocet.ttf',
                    color=color_orange
                )


        label 'v[config.version]/[renpy.version_string]/sha [build.info["sha8"]]':
            align (1.0, 1.0)
            xsize 400
            text_align (1.0, 0.5)
            text_style '_main_menu_screen_style_language'


style _main_menu_screen_style_language:
    size 18
    color color_yellow
    hover_color color_white
