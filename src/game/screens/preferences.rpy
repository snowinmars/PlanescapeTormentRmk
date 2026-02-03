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


screen screen_preferences():
    tag menu

    frame:
        background 'gui_optbg'
        xfill True
        yfill True

        button:
            xpos 890
            ypos 50
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_game')
            text _('screen_preferences_game_settings'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 1175
            ypos 160
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            sensitive main_menu
            action ShowMenu('screen_preferences_save')
            text _('screen_preferences_save'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 1295
            ypos 450
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_load')
            text _('screen_preferences_load'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 1175
            ypos 730
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action Return()
            text _('screen_preferences_back'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 890
            ypos 835
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_language')
            text _('screen_preferences_language_settings'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 610
            ypos 725
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_videos')
            text _('screen_preferences_videos'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 490
            ypos 450
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_sound')
            text _('screen_preferences_sound_settings'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 610
            ypos 160
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_graphics')
            text _('screen_preferences_graphics_settings'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 10
            ypos 925
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action Function(full_restart_with_save)
            text _('screen_preferences_main_menu'):
                size 20
                color color_white
                align (0.5, 0.5)

        button:
            xpos 1760
            ypos 925
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_achievement_gallery')
            text _('screen_preferences_achievement_gallery'):
                size 20
                color color_white
                align (0.5, 0.5)


    if enabled_dev:
        button:
            xpos 10
            ypos 10
            xsize 143
            ysize 143
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background
            action ShowMenu('screen_preferences_dev')
            text 'dev':
                size 20
                color color_white
                align (0.5, 0.5)
