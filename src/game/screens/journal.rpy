init python:
    journal_screen_choosed_screen = ''
    journal_screen_choosed_quest_id = ''

    def _quests_screen_get_quest_line(quest_id):
        return __(f'quest_line_{quest_id}{{#quest_line_{quest_id}}}')

screen journal_screen(get_started_quests, get_finished_quests, get_notes ): # get_beasts
    $ gsm = runtime.global_state_manager

    use narrat()

    for k in keymap_journal_screen:
        key k action Hide("inventory_screen")
    key "mouseup_3" action Hide("inventory_screen")

    modal False

    frame:
        xalign 0
        yalign 0
        xsize 1225
        ysize 975
        background Transform('gui/journal.webp', fit='cover')

        hbox:
            xpos 640
            ypos 30
            xsize 610
            ysize 60
            spacing 0

            button:
                xsize 150
                ysize 50
                background Transform('gui/button.png', fit='cover')
                hover_background Transform('gui/button.png', fit='cover', matrixcolor=BrightnessMatrix(0.2))
                action SetVariable('journal_screen_choosed_screen', 'quests')
                text _("journal_screen_quests_button"):
                    size 20
                    if journal_screen_choosed_screen == 'quests':
                        color "#dddddd"
                    else:
                        color "#dbc401"
                    hover_color "#dddddd"
                    align (0.5, 0.5)

            button:
                xsize 150
                ysize 50
                background Transform('gui/button.png', fit='cover')
                hover_background Transform('gui/button.png', fit='cover', matrixcolor=BrightnessMatrix(0.2))
                action SetVariable('journal_screen_choosed_screen', 'journal')
                text _('journal_screen_journal_button'):
                    size 20
                    if journal_screen_choosed_screen == 'journal':
                        color "#dddddd"
                    else:
                        color "#dbc401"
                    hover_color "#dddddd"
                    align (0.5, 0.5)

            button:
                xsize 150
                ysize 50
                background Transform('gui/button.png', fit='cover')
                hover_background Transform('gui/button.png', fit='cover', matrixcolor=BrightnessMatrix(0.2))
                action SetVariable('journal_screen_choosed_screen', 'bestiary')
                text _("journal_screen_bestiary_button"):
                    size 20
                    if journal_screen_choosed_screen == 'bestiary':
                        color "#dddddd"
                    else:
                        color "#dbc401"
                    hover_color "#dddddd"
                    align (0.5, 0.5)

            button:
                xsize 50
                ysize 50
                background Transform('gui/close.png', fit='cover')
                hover_background Transform('gui/close.png', fit='cover', matrixcolor=BrightnessMatrix(0.2))
                action Hide("journal_screen")


    if journal_screen_choosed_screen == 'quests':
        $ started_quests = get_started_quests()
        $ finished_quests = get_finished_quests()
        use _quests_screen(started_quests, finished_quests)
    if journal_screen_choosed_screen == 'journal':
        $ notes = get_notes()
        use _journal_screen(notes)
    if journal_screen_choosed_screen == 'bestiary':
        # $ beasts = get_beasts()
        use _bestiary_screen([])


screen _quests_screen(started_quests, finished_quests):
    viewport:
        scrollbars "vertical"
        mousewheel True
        draggable True
        xpos 90
        ypos 110
        xsize 405
        ysize 635

        vbox:
            spacing 5
            xfill True

            for started_quest in started_quests: # TODO [snow]: sort?
                button:
                    xsize 400
                    action SetVariable('journal_screen_choosed_quest_id', started_quest.quest_id)
                    text _quests_screen_get_quest_line(started_quest.quest_id):
                        size 20
                        if journal_screen_choosed_quest_id == started_quest.quest_id:
                            color "#dddddd"
                        else:
                            color "#dbc401"
                        hover_color "#eeeeee"
                        xalign 0.0

    viewport:
        scrollbars "vertical"
        mousewheel True
        draggable True
        xpos 650
        ypos 110
        xsize 600
        ysize 525

        if journal_screen_choosed_quest_id:
            text _quests_screen_get_quest_line(gsm.quests_manager.get_quest(journal_screen_choosed_quest_id).active_state_id):
                size 20
                color "#dbc401"
                xalign 0.0


screen _journal_screen(notes):
    viewport:
        scrollbars "vertical"
        mousewheel True
        draggable True
        xpos 90
        ypos 110
        xsize 405
        ysize 635

        vbox:
            spacing 5
            xfill True

            for note in notes:
                text note.content:
                    size 18
                    color "#dbc401"
                    xfill True
                text '-------':
                    size 12
                    color "#FFFFFF"
                    xfill True


screen _bestiary_screen(beasts):
    frame:
        background "#0000ff99"
        xpos 0
        ypos 0
        xsize 100
        ysize 100
