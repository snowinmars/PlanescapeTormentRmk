################################################################################
## Экраны Главного и Игрового меню
################################################################################


## Экран настроек ##############################################################
##
## Экран настроек позволяет игроку настраивать игру под себя.
##
## https://www.renpy.org/doc/html/screen_special.html#preferences

init python:
    def full_restart_with_save():
        renpy.full_restart(save=True)

screen preferences():
    tag menu

    frame:
        background Transform('gui/optbg.webp', fit='cover')
        xfill True
        yfill True

        button:
            xpos 890
            ypos 50
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_game")
            text _("preferences_screen_game_settings"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 1175
            ypos 160
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_save")
            text _("preferences_screen_save"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 1295
            ypos 450
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_load")
            text _("preferences_screen_load"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 1175
            ypos 730
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action Return()
            text _("preferences_screen_back"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 890
            ypos 835
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_language")
            text _("preferences_screen_language_settings"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 610
            ypos 725
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_videos")
            text _("preferences_screen_videos"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 490
            ypos 450
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_sound")
            text _("preferences_screen_sound_settings"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 610
            ypos 160
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_graphics")
            text _("preferences_screen_graphics_settings"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 10
            ypos 925
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action Function(full_restart_with_save)
            text _("preferences_screen_main_menu"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)

        button:
            xpos 1760
            ypos 925
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu('achievement_gallery')
            text _("preferences_screen_achievements"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)


    if enabled_dev:
        button:
            xpos 10
            ypos 10
            xsize 143 # 143
            ysize 143 # 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action ShowMenu("preferences_dev")
            text 'dev':
                size 20
                color "#eeeeee"
                align (0.5, 0.5)
