screen journal_screen(get_notes):
    $ notes = get_notes()

    use narrat()

    key "j" action Hide("journal_screen")
    key "mouseup_3" action Hide("journal_screen")

    modal False

    frame:
        xalign 0
        yalign 0
        xsize 1325
        ysize 1025
        background Transform('gui/journal.png', fit='cover')

        vbox:
            spacing 0
            xfill True
            yfill True

            fixed:
                xfill True
                ysize 50

                button:
                    xpos 715
                    ypos 50
                    xsize 150
                    ysize 15
                    background Transform('gui/button.png', fit='cover')
                    hover_background Transform('gui/button_hover.png', fit='cover')
                    action NullAction()
                    text _("journal_screen_quests_button"):
                        size 20
                        color "#dddddd"
                        hover_color "#dddddd"
                        xalign 0.5

                button:
                    xpos 890
                    ypos 50
                    xsize 150
                    background "#5036d4"
                    hover_background "#734df5"
                    action NullAction()
                    text _("journal_screen_journal_button"):
                        size 20
                        color "#dddddd"
                        hover_color "#eeeeee"
                        xalign 0.5

                button:
                    xpos 1065
                    ypos 50
                    xsize 150
                    background "#8b77ca"
                    hover_background "#8b77ca"
                    action NullAction()
                    text _("journal_screen_bestiary_button"):
                        size 20
                        color "#dddddd"
                        hover_color "#dddddd"
                        xalign 0.5

                button:
                    xpos 1240
                    ypos 45
                    xsize 50
                    ysize 50
                    background Transform('gui/close.png', fit='cover')
                    hover_background Transform('gui/close_hover.png', fit='cover')
                    action Hide("journal_screen")

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True
            xpos 110
            ypos 110
            xsize 405
            ysize 635

            vbox:
                spacing 10

                if notes:
                    for note in notes:
                        text note.content:
                            size 18
                            color "#FFFFFF"
                            xfill True
                        text '===':
                            size 12
