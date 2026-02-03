screen screen_achievement_gallery():
    tag menu

    default screen_achievement_gallery_selected_achievement = None
    default screen_achievement_gallery_earned = Achievement.num_earned()
    default screen_achievement_gallery_total = Achievement.num_total()
    default screen_achievement_gallery_statistics_text = ''
    default screen_achievement_gallery_statistics_text_cached_id = None
    if 1000 * screen_achievement_gallery_total + screen_achievement_gallery_earned != screen_achievement_gallery_statistics_text_cached_id:
        $ screen_achievement_gallery_statistics_text_cached_id = 1000 * screen_achievement_gallery_total + screen_achievement_gallery_earned
        $ screen_achievement_gallery_statistics_text = __('screen_achievement_gallery_statistics').format(earned=screen_achievement_gallery_earned, total=screen_achievement_gallery_total)

    default screen_achievement_gallery_achievements = []
    default screen_achievement_gallery_achievements_cache_id = None
    if persistent.add_custom_achievements != screen_achievement_gallery_achievements_cache_id:
        $ screen_achievement_gallery_achievements_cache_id = persistent.add_custom_achievements
        $ screen_achievement_gallery_achievements = Achievement.all_achievements
        if not persistent.add_custom_achievements:
            $ screen_achievement_gallery_achievements = filter(lambda x: not x.is_custom, screen_achievement_gallery_achievements)
        $ screen_achievement_gallery_achievements = list(sorted(screen_achievement_gallery_achievements, key=lambda x: (not x.has(), __(x.name))))


    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_beastbg'

        label screen_achievement_gallery_statistics_text:
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

                for achievement in screen_achievement_gallery_achievements:
                    button:
                        action SetScreenVariable('screen_achievement_gallery_selected_achievement', achievement)

                        text achievement.name:
                            size 18
                            hover_color color_white
                            if screen_achievement_gallery_selected_achievement and screen_achievement_gallery_selected_achievement.id == achievement.id:
                                color color_white
                            elif achievement.has():
                                color color_yellow
                            else:
                                color change_hex(color_yellow, saturation_percent=50, value_percent=50)


        # <selected_achievement>
        if screen_achievement_gallery_selected_achievement:
            frame:
                area (960, 65, 627, 620)
                background None

                fixed:
                    pos (0, 55)
                    add screen_achievement_gallery_selected_achievement.idle_img:
                        size (270, 270)

                vbox:
                    pos (275, 60)
                    xsize 340
                    spacing 10

                    text screen_achievement_gallery_selected_achievement.name:
                        style 'screen_achievement_gallery_style_header'

                    text screen_achievement_gallery_selected_achievement.timestamp:
                        style 'screen_achievement_gallery_style_text'

                    if screen_achievement_gallery_selected_achievement.is_custom:
                        text _('screen_achievement_gallery_is_custom'):
                            style 'screen_achievement_gallery_style_text'
                    else:
                        text _('screen_achievement_gallery_is_not_custom'):
                            style 'screen_achievement_gallery_style_text'

                text screen_achievement_gallery_selected_achievement.description:
                    ypos 340
                    style 'screen_achievement_gallery_style_description'
        # </selected_achievement>


        button:
            area (365, 890, 193, 78)
            if screen_achievement_gallery_selected_achievement:
                action [
                    screen_achievement_gallery_selected_achievement.Toggle(),
                    SetScreenVariable('screen_achievement_gallery_achievements_cache_id', None)
                ]
            else:
                action NullAction()
            background cached_button_background
            hover_background cached_button_hover_background
            insensitive_background cached_button_insensitive_background
            sensitive (screen_achievement_gallery_selected_achievement is not None)

            text _('screen_achievement_gallery_toggle_selected'): # Переключить
                style 'achievement_screen_style_button_text'
                align (0.5, 0.5)


        button:
            area (650, 890, 193, 78)
            action [
                Achievement.Reset(),
                SetScreenVariable('achievements_cache_id', None)
            ]
            background cached_button_background
            hover_background cached_button_hover_background

            text _('screen_achievement_gallery_reset_all'): # Сбросить все
                style 'screen_achievement_gallery_style_button_text'
                align (0.5, 0.5)


        button:
            area (1432, 835, 143, 143)
            action Return()
            background cached_settings_button_background
            hover_background cached_settings_button_hover_background

            text _('screen_achievement_gallery_back'): # Назад
                style 'screen_achievement_gallery_style_button_text'
                align (0.5, 0.5)


style screen_achievement_gallery_style_button_text:
    size 20
    color color_white
style screen_achievement_gallery_style_header:
    align (0.5, 0.5)
    size 24
    color color_yellow
style screen_achievement_gallery_style_text:
    align (0.5, 0.5)
    size 18
    color color_yellow
style screen_achievement_gallery_style_description:
    align (0.0, 0.0)
    size 18
    xfill True
    color color_yellow
