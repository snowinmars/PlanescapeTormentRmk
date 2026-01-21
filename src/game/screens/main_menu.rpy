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
        background Transform('gui/startbg.png', fit='cover')
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
            xsize 315 # 631
            ysize 107 # 215
            background Transform('gui/main_menu_newlife.png', fit='cover')
            hover_background Transform('gui/main_menu_newlife.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu('character_creation')

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
            xsize 186 # 373
            ysize 297 # 594
            background Transform('gui/main_menu_load.png', fit='cover')
            hover_background Transform('gui/main_menu_load.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_load")

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
            xsize 186 # 373
            ysize 297 # 594
            background Transform('gui/main_menu_continue.png', fit='cover')
            hover_background Transform('gui/main_menu_continue.png', fit='cover', matrixcolor=hover_matrix)
            action Continue()

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
            xsize 230 # 460
            ysize 256 # 502
            background Transform('gui/main_menu_settings.png', fit='cover')
            hover_background Transform('gui/main_menu_settings.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences")

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
            xsize 254 # 508
            ysize 256 # 513
            background Transform('gui/main_menu_exit.png', fit='cover')
            hover_background Transform('gui/main_menu_exit.png', fit='cover', matrixcolor=hover_matrix)
            action Quit(confirm=not main_menu)

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
