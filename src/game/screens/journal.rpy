screen journal_screen(get_notes):
    $ notes = get_notes()

    on 'show' action Show('narrat')
    on 'hide' action Hide('narrat')

    key "j" action Hide("journal_screen")
    key "mouseup_3" action Hide("journal_screen")

    modal False

    # Цветной фон для области журнала
    frame:
        xalign 0
        yalign 0
        xsize 1325
        ysize 1025
        background Transform('bg/journal.png', fit='cover')
        # background "#ff000099"

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
                    background "#8b77ca"
                    hover_background "#8b77ca"
                    action NullAction()
                    text _("Задания{#journal_screen_quests_button}"):
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
                    text _("Дневник{#journal_screen_journal_button}"):
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
                    text _("Существа{#journal_screen_bestiary_button}"):
                        size 20
                        color "#dddddd"
                        hover_color "#dddddd"
                        xalign 0.5

                button:
                    xpos 1240
                    ypos 50
                    xsize 25
                    background "#5036d4"
                    hover_background "#734df5"
                    action Hide("journal_screen")
                    text "X":
                        size 20
                        color "#dddddd"
                        hover_color "#eeeeee"
                        xalign 0.5

        # Прокручиваемая область с заметками (занимает всё оставшееся пространство)
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
