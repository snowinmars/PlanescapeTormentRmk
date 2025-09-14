init python:
    from game.engine.runtime import (runtime)


screen events_manager_display(position=(0, 0.22), width=0.2, height=0.2, categories=None):
    zorder 101
    style_prefix "events_manager"

    # Calculate positions
    $ xpos, ypos = position
    $ viewport_width = int(config.screen_width * width)
    $ viewport_height = int(config.screen_height * height)

    frame:
        pos (xpos, ypos)
        anchor (0.0, 1.0)  # Anchor to bottom-left
        xsize viewport_width

        vbox:
            # Header with title and clear button
            use events_manager_header

            # Main content viewport
            viewport:
                id "event_viewport"
                mousewheel True
                draggable True
                scrollbars "vertical"
                ysize viewport_height

                vbox:
                    for event in reversed(runtime.global_events_manager.get_events()):
                        if categories is None or category in categories:
                            hbox:
                                # text timestamp style "events_manager_timestamp"
                                # text category style "events_manager_category"
                                text event.text style "events_manager_text"

screen events_manager_header():
    hbox:
        spacing 10
        # text _("EVENT LOG") style "events_manager_title"
        # textbutton _("Clear"):
        #     action runtime.global_events_manager.clear
        #     sensitive len(runtime.global_events_manager.events) > 0

style events_manager_frame:
    background "#000c"
    padding (15, 15)
    xalign 0.0
    yalign 1.0

style events_manager_title:
    size 18
    color "#FFA"
    bold True

style events_manager_timestamp:
    size 14
    color "#AAA"
    min_width 70

style events_manager_category:
    size 14
    color "#8CF"
    min_width 80

style events_manager_text:
    size 16
    color "#EEE"
    layout "subtitle"