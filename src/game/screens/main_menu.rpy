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
        background Transform('gui/startbg.webp')
        xfill True
        yfill True

        frame:
            xpos 0
            ypos 0
            xsize 128
            background None

            vbox:
                spacing 10

                button :
                    action [SetField(persistent, "language", "russian"), Language("russian")]

                    text _('preferences_language_screen_russian'): # 'Русский'
                        size 18
                        color '#dbc401'
                        hover_color '#eeeeee'

                button :
                    action [SetField(persistent, "language", "english"), Language("english")]

                    text _('preferences_language_screen_english'): # 'English'
                        size 18
                        color '#dbc401'
                        hover_color '#eeeeee'

        button:
            xpos 802
            ypos 330
            background Transform('gui/main_menu_newlife.webp')
            hover_background Transform('gui/main_menu_newlife.webp', matrixcolor=hover_matrix)
            action ShowMenu('character_creation')
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_newlife'), # "Новая жизнь"
                    [(60, 50), (155, 50), (250, 50)],
                    font='exocet.ttf',
                    color='#bd7a10'
                )

        button:
            xpos 715
            ypos 525
            background Transform('gui/main_menu_load.webp')
            hover_background Transform('gui/main_menu_load.webp', matrixcolor=hover_matrix)
            action ShowMenu("preferences_load")
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_load'), # "Выбрать жизнь"
                    [(30, 60), (40, 190), (139, 243)],
                    font='exocet.ttf',
                    color='#bd7a10'
                )

        button:
            xpos 1015
            ypos 525
            background Transform('gui/main_menu_continue.webp')
            hover_background Transform('gui/main_menu_continue.webp', matrixcolor=hover_matrix)
            action Continue()
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_continue'), # "Возродиться"
                    [(57, 237), (145, 185), (157, 77)],
                    font='exocet.ttf',
                    color='#bd7a10'
                )

        button:
            xpos 1130
            ypos 710
            background Transform('gui/main_menu_settings.webp')
            hover_background Transform('gui/main_menu_settings.webp', matrixcolor=hover_matrix)
            action ShowMenu("preferences")
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_settings'), # "Восприятие"
                    [(67, 205), (150, 150), (190, 75)],
                    font='exocet.ttf',
                    color='#bd7a10'
                )

        button:
            xpos 550
            ypos 710
            background Transform('gui/main_menu_exit.webp')
            hover_background Transform('gui/main_menu_exit.webp', matrixcolor=hover_matrix)
            action Quit(confirm=not main_menu)
            focus_mask True

            frame:
                background CurvedText(
                    __('main_menu_exit'), # "Бездна"
                    [(65, 95), (90, 140), (145, 185)],
                    font='exocet.ttf',
                    color='#bd7a10'
                )

        label f'v{config.version}/{renpy.version_string}/sha {build.info["sha8"]}':
            xalign 1.0
            yalign 1.0
            xsize 400
            text_size 16
            text_color "#dbc401"
            text_align (0.5, 0.5)
