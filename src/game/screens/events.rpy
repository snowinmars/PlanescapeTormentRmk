init python:
    from game.engine.runtime import (runtime)


screen log_events_manager_display(pos=(0, 0.22), width=0.2, height=0.2, categories=None):
    zorder 101
    style_prefix "log_events_manager"

    # Calculate positions
    $ xpos, ypos = pos
    $ viewport_width = int(config.screen_width * width)
    $ viewport_height = int(config.screen_height * height)

    frame:
        pos (xpos, ypos)
        anchor (0.0, 1.0)  # Anchor to bottom-left
        xsize viewport_width

        vbox:
            # Header with title and clear button
            use log_events_manager_header

            # Main content viewport
            viewport:
                id "log_event_viewport"
                mousewheel True
                draggable True
                scrollbars "vertical"
                ysize viewport_height

                vbox:
                    for log_event in reversed(runtime.global_log_events_manager.get_log_events()):
                        if categories is None or category in categories:
                            hbox:
                                # text timestamp style "log_events_manager_timestamp"
                                # text category style "log_events_manager_category"
                                text log_event.text style "log_events_manager_text"

screen log_events_manager_header():
    hbox:
        spacing 10
        # text _("LOG EVENT") style "log_events_manager_title"
        # textbutton _("Clear"):
        #     action runtime.global_log_events_manager.clear
        #     sensitive len(runtime.global_log_events_manager.log_events) > 0

style log_events_manager_frame:
    background "#000c"
    padding (15, 15)
    xalign 0.0
    yalign 1.0

style log_events_manager_title:
    size 18
    color "#FFA"
    bold True

style log_events_manager_timestamp:
    size 14
    color "#AAA"
    min_width 70

style log_events_manager_category:
    size 14
    color "#8CF"
    min_width 80

style log_events_manager_text:
    size 16
    color "#EEE"
    layout "subtitle"