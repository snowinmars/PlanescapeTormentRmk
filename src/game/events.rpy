screen event_manager_display(position=(0, 0.22), width=0.2, height=0.2, categories=None):
    zorder 101
    style_prefix "event_manager"

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
            use event_manager_header

            # Main content viewport
            viewport:
                id "event_viewport"
                mousewheel True
                draggable True
                scrollbars "vertical"
                ysize viewport_height

                vbox:
                    for event in renpy.store.global_event_manager.get_events():
                        $ timestamp, category, text = event
                        if categories is None or category in categories:
                            hbox:
                                # text timestamp style "event_manager_timestamp"
                                # text category style "event_manager_category"
                                text text style "event_manager_text"

screen event_manager_header():
    hbox:
        spacing 10
        # text _("EVENT LOG") style "event_manager_title"
        # textbutton _("Clear"):
        #     action renpy.store.global_event_manager.clear
        #     sensitive len(renpy.store.global_event_manager.events) > 0

style event_manager_frame:
    background "#000c"
    padding (15, 15)
    xalign 0.0
    yalign 1.0

style event_manager_title:
    size 18
    color "#FFA"
    bold True

style event_manager_timestamp:
    size 14
    color "#AAA"
    min_width 70

style event_manager_category:
    size 14
    color "#8CF"
    min_width 80

style event_manager_text:
    size 16
    color "#EEE"
    layout "subtitle"