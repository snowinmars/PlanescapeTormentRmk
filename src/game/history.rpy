import renpy

style history_frame:
    background Frame("gui/frame.png", 25, 25)
    padding (30, 30)

style history_entry:
    padding (20, 15)
    background "#ffffff15"
    margin (0, 0, 0, 10)

style history_who:
    font gui.name_font
    size gui.name_text_size
    color gui.accent_color

style history_what:
    font gui.text_font
    size gui.history_text_size
    layout "subtitle"

style history_close:
    xalign 1.0

style history_empty:
    xalign 0.5
    yalign 0.5
    color "#888"

screen custom_history():
    tag menu
    zorder 200
    modal True

    # Capture escape key and mouse clicks outside frame
    key "game_menu" action Return()
    key "mouseup_3" action Return()
    key "K_ESCAPE" action Return()

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
                label _("Dialogue History")
                textbutton _("Close") action Return() style "history_close"

            viewport:
                id "history_viewport"
                mousewheel True
                draggable True
                scrollbars "vertical"
                yinitial 1.0  # Start at bottom (most recent)
                yfill True

                vbox:
                    if not renpy.store.global_history_manager.get_history():
                        text _("No dialogue history yet") style "history_empty"

                    for entry in renpy.store.global_history_manager.get_lines():
                        window:
                            style "history_entry"
                            has vbox:
                                spacing 5

                            text entry["who"]:
                                style "history_who"
                                substitute False

                            text entry["what"]:
                                style "history_what"
                                substitute False
