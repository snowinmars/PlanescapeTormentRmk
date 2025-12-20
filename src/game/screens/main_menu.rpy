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

        imagebutton:
            xpos 802
            ypos 330
            xsize 315 # 631
            ysize 107 # 215
            idle Transform('gui/newlife_idle.png', fit='cover')
            hover Transform('gui/newlife_hover.png', fit='cover')
            action Start()

        imagebutton:
            xpos 715
            ypos 525
            xsize 186 # 373
            ysize 297 # 594
            idle Transform('gui/load_idle.png', fit='cover')
            hover Transform('gui/load_hover.png', fit='cover')
            action ShowMenu("preferences_load")

        imagebutton:
            xpos 1015
            ypos 525
            xsize 186 # 373
            ysize 297 # 594
            idle Transform('gui/load_last_idle.png', fit='cover')
            hover Transform('gui/load_last_hover.png', fit='cover')
            action Continue()

        imagebutton:
            xpos 1130
            ypos 710
            xsize 230 # 460
            ysize 256 # 502
            idle Transform('gui/settings_idle.png', fit='cover')
            hover Transform('gui/settings_hover.png', fit='cover')
            action ShowMenu("preferences")

        imagebutton:
            xpos 550
            ypos 710
            xsize 254 # 508
            ysize 256 # 513
            idle Transform('gui/exit_idle.png', fit='cover')
            hover Transform('gui/exit_hover.png', fit='cover')
            action Quit(confirm=not main_menu)