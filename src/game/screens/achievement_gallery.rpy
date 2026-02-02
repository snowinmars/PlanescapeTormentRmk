init python:
    achievement_gallery_screen_choice = ''


screen achievement_gallery():
    on 'show' action SetVariable('achievement_gallery_screen_choice', '')

    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_beastbg'


        label __('achievement_gallery_statistics').format(earned=Achievement.num_earned(), total=Achievement.num_total()):
            area (960, 60, 627, 60)
            text_align (0.5, 0.5)
            text_size 20
            text_color color_yellow


        viewport:
            area (425, 125, 375, 625)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                spacing 10

                $ achievements = Achievement.all_achievements
                if not persistent.add_custom_achievements:
                    $ achievements = filter(lambda x: not x.is_custom, achievements)

                for a in sorted(achievements, key=lambda x: (not x.has(), __(x.name))):
                    button:
                        action SetVariable('achievement_gallery_screen_choice', a.id)

                        text a.name:
                            size 18
                            hover_color color_white
                            if a.id == achievement_gallery_screen_choice:
                                color color_white
                            elif a.has():
                                color color_yellow
                            else:
                                color change_hex(color_yellow, saturation_percent=50, value_percent=50)


        $ selected = None
        if achievement_gallery_screen_choice:
            $ selected = list(filter(lambda x: x.id == achievement_gallery_screen_choice, Achievement.all_achievements))[0]
            use _selected_achievement(selected)


        button:
            area (365, 890, 193, 78)
            if selected:
                action selected.Toggle()
            else:
                action NullAction()
            background 'gui_button'
            hover_background Transform('gui_button', matrixcolor=hover_matrix)
            insensitive_background Transform('gui_button', matrixcolor=insensitive_matrix)
            sensitive (selected is not None)

            text _('achievement_gallery_toggle_selected'): # Переключить
                style 'achievement_screen_style_button_text'
                align (0.5, 0.5)


        button:
            area (650, 890, 193, 78)
            action Achievement.Reset()
            background 'gui_button'
            hover_background Transform('gui_button', matrixcolor=hover_matrix)

            text _('achievement_gallery_reset_all'): # Сбросить все
                style 'achievement_screen_style_button_text'
                align (0.5, 0.5)


        button:
            area (1432, 835, 143, 143)
            action Return()
            background 'gui_settings_button_idle'
            hover_background Transform('gui_settings_button_idle', matrixcolor=hover_matrix)

            text _('achievement_gallery_back'): # Назад
                style 'achievement_screen_style_button_text'
                align (0.5, 0.5)


screen _selected_achievement(a):
    frame:
        area (960, 65, 627, 620)
        background None

        fixed:
            pos (0, 55)
            add a.idle_img:
                size (270, 270)

        vbox:
            pos (275, 60)
            xsize 340
            spacing 10

            text a.name:
                style 'achievement_screen_style_achievement_header'

            text a.timestamp:
                style 'achievement_screen_style_achievement_text'

            if a.is_custom:
                text _('achievement_gallery_is_custom'):
                    style 'achievement_screen_style_achievement_text'
            else:
                text _('achievement_gallery_is_not_custom'):
                    style 'achievement_screen_style_achievement_text'

        text a.description:
            ypos 340
            style 'achievement_screen_style_achievement_description'


style achievement_screen_style_button_text:
    size 20
    color color_white
style achievement_screen_style_achievement_header:
    align (0.5, 0.5)
    size 24
    color color_yellow
style achievement_screen_style_achievement_text:
    align (0.5, 0.5)
    size 18
    color color_yellow
style achievement_screen_style_achievement_description:
    align (0.0, 0.0)
    size 18
    xfill True
    color color_yellow
