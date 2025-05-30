$ import renpy

style history_frame:
    background Frame("gui/frame.png", 25, 25)
    padding (30, 30)

style history_entry:
    padding (20, 15)
    background "#ffffff15"
    margin (0, 0, 0, 10)

style history_who:
    font gui.name_text_font
    size 12
    color gui.accent_color

style history_what:
    font gui.text_font
    size 16
    layout "tex"

style history_close:
    xalign 1.0
    xpos 10

style history_empty:
    xalign 0.5
    yalign 0.5
    color "#888"

screen custom_history():
    tag menu
    zorder 200
    modal True

    # Capture escape key and mouse clicks outside frame
    key "game_menu" action [Hide("custom_history"), Hide("history"), Return(-17)]  # custom_history_response
    key "mouseup_3" action [Hide("custom_history"), Hide("history"), Return(-17)]  # custom_history_response
    key "K_ESCAPE" action [Hide("custom_history"), Hide("history"), Return(-17)]  # custom_history_response

    # Semi-transparent background
    add Solid("#00000099")

    # Main history frame
    frame:
        style_prefix "history"
        xalign 0.5
        yalign 0.5
        xsize 1200
        ysize 700

        vbox:
            hbox:
                label _("История")
                textbutton _("Закрыть"):
                    style "history_close"  # custom_history_response
                    action [Hide("custom_history"), Hide("history"), Return(-17)]

            viewport:
                id "history_viewport"
                mousewheel True
                draggable True
                scrollbars "vertical"
                yinitial 0.0  # Start at top (most recent)
                yfill True

                vbox:
                    if len(renpy.store.global_history_manager.get_lines()) == 0:
                        text _("No dialogue history yet") style "history_empty"

                    for entry in renpy.store.global_history_manager.get_lines():
                        window:
                            style "history_entry"
                            has vbox:
                                spacing 5

                            text f'{entry["who"]}':
                                style "history_who"
                                substitute True
                                # color entry["who"]  # TODO [snow]: How to color here?

                            text entry["what"]:
                                style "history_what"
                                substitute False
