init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.JournalLogic import (JournalLogic)
    journalLogic = JournalLogic(runtime.global_state_manager)

    screen_journal_cached_button_background = Transform('gui_button', fit='cover')
    screen_journal_cached_button_hover_background = Transform('gui_button', fit='cover', matrixcolor=hover_matrix)


screen screen_journal():
    for k in keymap_journal_screen:
        key k action Hide('screen_journal')
    key 'K_ESCAPE' action Hide('screen_journal')

    use screen_narrat()

    modal True

    default screen_journal_choosed_tab      = ''
    default screen_journal_choosed_quest_id = ''
    default screen_journal_started_quests   = journalLogic.get_started_quests()
    default screen_journal_finished_quests  = journalLogic.get_finished_quests()
    default screen_journal_notes            = journalLogic.get_notes()

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_journal'

        hbox:
            area (690, 115, 590, 60)
            spacing 0

            button:
                style 'screen_journal_style_button'
                action SetScreenVariable('screen_journal_choosed_tab', 'quests')
                text _('screen_journal_quests_button'): # Задания
                    style 'screen_journal_style_button_text'
                    if screen_journal_choosed_tab == 'quests':
                        color color_white

            button:
                style 'screen_journal_style_button'
                action SetScreenVariable('screen_journal_choosed_tab', 'journal')
                text _('screen_journal_journal_button'): # Журнал
                    style 'screen_journal_style_button_text'
                    if screen_journal_choosed_tab == 'journal':
                        color color_white

            button:
                style 'screen_journal_style_button'
                action SetScreenVariable('screen_journal_choosed_tab', 'bestiary')
                sensitive False
                text _('screen_journal_bestiary_button'): # Существа
                    style 'screen_journal_style_button_text'
                    if screen_journal_choosed_tab == 'bestiary':
                        color color_white


    # <quest_screen>
    if screen_journal_choosed_tab == 'quests':
        viewport:
            area(200, 200, 385, 540)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                spacing 5
                xfill True

                for started_quest in screen_journal_started_quests: # TODO [snow]: should I sort?
                    button:
                        xsize 385
                        action SetScreenVariable('screen_journal_choosed_quest_id', started_quest.quest_id)
                        text journalLogic.get_quest_line(started_quest.quest_id):
                            style 'screen_journal_style_button_text'
                            align (0.0, 0.0)
                            if screen_journal_choosed_quest_id == started_quest.quest_id:
                                color color_white

                for finished_quest in screen_journal_finished_quests: # TODO [snow]: should I sort?
                    button:
                        xsize 385
                        action SetScreenVariable('screen_journal_choosed_quest_id', finished_quest.quest_id)
                        text journalLogic.get_quest_line(finished_quest.quest_id):
                            style 'screen_journal_style_button_finished_text'
                            align (0.0, 0.0)
                            strikethrough True
                            if screen_journal_choosed_quest_id == finished_quest.quest_id:
                                color color_white

        viewport:
            area(715, 200, 535, 465)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            if screen_journal_choosed_quest_id:
                text journalLogic.get_quest_state_line(screen_journal_choosed_quest_id):
                    style 'screen_journal_style_text'
                    xalign 0.0
    # </quest_screen>


    # <journal_screen>
    if screen_journal_choosed_tab == 'journal':
        viewport:
            area(200, 200, 385, 540)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                spacing 5
                xfill True

                for note in screen_journal_notes:
                    text note.content:
                        style 'screen_journal_style_text'
                    text '-------':
                        size 12
                        color color_white
                        xfill True
    # </journal_screen>


    # <bestiary_screen>
    if screen_journal_choosed_tab == 'bestiary':
        frame:
            background '#0000ff99'
            xpos 0
            ypos 0
            xsize 100
            ysize 100
    # </bestiary_screen>


    button:
        area (400, 825, 193, 78)
        action Hide('screen_journal')
        background cached_button_background
        hover_background cached_button_hover_background

        text _('screen_journal_return'): # Вернуться
            style 'screen_journal_style_button_text'
            align (0.5, 0.5)


style screen_journal_style_button:
    xysize (150, 60)
    background screen_journal_cached_button_background
    hover_background screen_journal_cached_button_hover_background
style screen_journal_style_button_text:
    size 20
    color color_yellow
    hover_color color_white
    align (0.5, 0.5)
style screen_journal_style_button_finished_text:
    size 20
    color color_default
    hover_color color_white
    align (0.5, 0.5)
style screen_journal_style_text:
    size 20
    color color_yellow
    align (0.0, 0.0)