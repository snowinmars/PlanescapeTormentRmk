init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.JournalLogic import (JournalLogic)
    journalLogic = JournalLogic(runtime.global_state_manager)


screen journal_screen():
    on 'show' action Function(journalLogic.reset)

    for k in keymap_journal_screen:
        key k action Hide('journal_screen')
    key 'K_ESCAPE' action Hide('journal_screen')

    use narrat()

    modal True

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_journal'

        hbox:
            area (690, 115, 590, 60)
            spacing 0

            button:
                style '_journal_screen_style_button'
                action Function(journalLogic.set_show_quest)
                text _('journal_screen_quests_button'): # Задания
                    style '_journal_screen_style_button_text'
                    if journalLogic.get_show_quest():
                        color color_white

            button:
                style '_journal_screen_style_button'
                action Function(journalLogic.set_show_journal)
                text _('journal_screen_journal_button'): # Журнал
                    style '_journal_screen_style_button_text'
                    if journalLogic.get_show_journal():
                        color color_white

            button:
                style '_journal_screen_style_button'
                action Function(journalLogic.set_show_bestiary)
                sensitive False
                text _('journal_screen_bestiary_button'): # Существа
                    style '_journal_screen_style_button_text'
                    if journalLogic.get_show_bestiary():
                        color color_white


    if journalLogic.get_show_quest():
        use _quests_screen()
    if journalLogic.get_show_journal():
        use _journal_screen()
    if journalLogic.get_show_bestiary():
        use _bestiary_screen()


    button:
        area (400, 825, 193, 78)
        action Hide('journal_screen')
        background 'gui_button'
        hover_background Transform('gui_button', matrixcolor=hover_matrix)

        text _('preferences_screen_return'): # Вернуться
            style 'preferences_dev_screen_style_button_text'
            align (0.5, 0.5)


screen _quests_screen():
    default started_quests = journalLogic.get_started_quests()
    default finished_quests = journalLogic.get_finished_quests()

    on 'show' action SetScreenVariable('started_quests', journalLogic.get_started_quests())
    on 'show' action SetScreenVariable('finished_quests', journalLogic.get_finished_quests())

    viewport:
        area(200, 200, 385, 540)
        scrollbars 'vertical'
        mousewheel True
        draggable True

        vbox:
            spacing 5
            xfill True

            for started_quest in started_quests: # TODO [snow]: should I sort?
                button:
                    xsize 385
                    action Function(journalLogic.choice_quest_id, started_quest.quest_id)
                    text journalLogic.get_quest_line(started_quest.quest_id):
                        style '_journal_screen_style_button_text'
                        align (0.0, 0.0)
                        if journalLogic.is_choosed_quest_id(started_quest.quest_id):
                            color color_white

    viewport:
        area(715, 200, 535, 465)
        scrollbars 'vertical'
        mousewheel True
        draggable True

        if journalLogic.choosed_quest_id:
            text journalLogic.get_quest_state_line():
                style '_journal_screen_style_text'
                xalign 0.0


screen _journal_screen():
    default notes = journalLogic.get_notes()

    on 'show' action SetVariable('notes', journalLogic.get_notes())

    viewport:
        area(200, 200, 385, 540)
        scrollbars 'vertical'
        mousewheel True
        draggable True

        vbox:
            spacing 5
            xfill True

            for note in notes:
                text note.content:
                    style '_journal_screen_style_text'
                if len(notes) > 1:
                    text '-------':
                        size 12
                        color color_white
                        xfill True


screen _bestiary_screen():
    default beasts = journalLogic.get_beasts()

    on 'show' action SetVariable('beasts', journalLogic.get_beasts())

    frame:
        background '#0000ff99'
        xpos 0
        ypos 0
        xsize 100
        ysize 100


style _journal_screen_style_button:
    xysize (150, 60)
    background Transform('gui_button', fit='cover')
    hover_background Transform('gui_button', fit='cover', matrixcolor=hover_matrix)
style _journal_screen_style_button_text:
    size 20
    color color_yellow
    hover_color color_white
    align (0.5, 0.5)
style _journal_screen_style_text:
    size 20
    color color_yellow
    align (0.0, 0.0)
