init python:
    achievement_gallery_selected_id = 'meet_morte'


screen achievement_gallery():
    tag menu
    on 'show' action SetVariable('achievement_gallery_selected_id', '')

    frame:
        background Transform('gui/beastbg.png', fit='cover')
        xfill True
        yfill True

        label __("achievement_gallery_statistics").format(earned=Achievement.num_earned(), total=Achievement.num_total()):
            xpos 960
            ypos 60
            xsize 627
            ysize 60
            text_align (0.5, 0.5)
            text_size 20
            text_color "#dbc401"

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True
            xpos 425
            ypos 125
            xsize 375
            ysize 625

            vbox:
                spacing 10

                $ achievements = Achievement.all_achievements
                if not persistent.add_custom_achievements:
                    $ achievements = filter(lambda x: not x.is_custom, achievements)

                for a in sorted(achievements, key=lambda x: (not x.has(), __(x.name))):
                    button:
                        action SetVariable('achievement_gallery_selected_id', a.id)

                        text a.name:
                            size 18
                            if a.id == achievement_gallery_selected_id:
                                color "#eeeeee"
                            elif a.has():
                                color "#dbc401"
                                hover_color "#eeeeee"
                            else:
                                color "#584c22"
                                hover_color "#4a3a29"

        if achievement_gallery_selected_id:
            $ selected = list(filter(lambda x: x.id == achievement_gallery_selected_id, Achievement.all_achievements))[0]
            use _selected_achievement(selected)

        button:
            xsize 193
            ysize 78
            xpos 350
            ypos 890
            if selected:
                action selected.Toggle()
            else:
                action NullAction()
            background Transform('gui/button.png', fit='cover')
            hover_background Transform('gui/button.png', fit='cover', matrixcolor=hover_matrix)

            text _("achievement_gallery_toggle_selected"): # Переключить эту
                size 20
                color "#eeeeee"
                xalign 0.5
                yalign 0.5

        button:
            xsize 193
            ysize 78
            xpos 690
            ypos 890
            action Achievement.Reset()
            background Transform('gui/button.png', fit='cover')
            hover_background Transform('gui/button.png', fit='cover', matrixcolor=hover_matrix)

            text _("achievement_gallery_reset_all"): # Сбросить все
                size 20
                color "#eeeeee"
                xalign 0.5
                yalign 0.5

        button:
            xpos 1432
            ypos 835
            xsize 143
            ysize 143
            background Transform('gui/settings_button_idle.png', fit='cover')
            hover_background Transform('gui/settings_button_idle.png', fit='cover', matrixcolor=hover_matrix)
            action Return()
            text _("achievement_gallery_back"):
                size 20
                color "#eeeeee"
                align (0.5, 0.5)


screen _selected_achievement(a):
    frame:
        background None
        xpos 960
        ypos 65
        xsize 627
        ysize 620

        fixed:
            xpos 0
            ypos 55
            add a.idle_img:
                xsize 270
                ysize 270

        vbox:
            xpos 275
            ypos 60
            xsize 340
            spacing 10

            label a.name:
                xfill True
                text_align (0.5, 0.5)
                text_size 24
                text_color "#dbc401"

            label a.timestamp:
                xfill True
                text_align (0.5, 0.5)
                text_size 18
                text_color "#dbc401"

            if a.is_custom:
                label _('achievement_gallery_is_custom'):
                    xfill True
                    text_align (0.5, 0.5)
                    text_size 18
                    text_color "#dbc401"
            else:
                label _('achievement_gallery_is_not_custom'):
                    xfill True
                    text_align (0.5, 0.5)
                    text_size 18
                    text_color "#dbc401"

        label a.description:
            ypos 340
            xfill True
            text_size 18
            text_color "#dbc401"
