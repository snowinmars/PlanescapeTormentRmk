screen preferences_save():
    tag menu

    frame:
        xfill True
        yfill True
        background Transform('gui/loadbg.webp')


        label _('preferences_save_title'):
            area (745, 23, 310, 45)
            text_align (0.5, 0.5)
            text_color color_yellow
            text_size 26


        viewport:
            area (235, 155, 1431, 745)
            scrollbars "vertical"
            mousewheel True
            draggable True

            grid gui.file_slot_cols gui.file_slot_rows:
                spacing 20

                for i in range(gui.file_slot_cols * gui.file_slot_rows):
                    $ slot = i + 1

                    vbox:
                        xysize (1350, 130)

                        button:
                            background Transform('gui/loadrowb.webp', fit='cover')
                            hover_background Transform('gui/loadrowc.webp', fit='cover')
                            action FileSave(slot)

                            add FileScreenshot(slot):
                                pos (312, 14)
                                size (162, 115)

                            text FileTime(slot, format=_("{#file_time}%A, %d %B %Y, %H:%M"), empty=_("Пустой слот")):
                                area (480, 45, 500, 100)
                                style 'preferences_save_screen_style_item_text'

                            text FileSaveName(slot):
                                area (480, 10, 500, 100)
                                style 'preferences_save_screen_style_item_text'

                            key "save_delete" action FileDelete(slot)


    button:
        area (1400, 960, 193, 78)
        action Return()
        background Transform('gui/button.png')
        hover_background Transform('gui/button.png', matrixcolor=hover_matrix)

        text _("preferences_screen_return"): # Вернуться
            style 'preferences_save_screen_style_button_text'
            align (0.5, 0.5)


style preferences_save_screen_style_item_text:
    size 20
    color color_yellow
    hover_color color_white
style preferences_save_screen_style_button_text:
    size 20
    color color_white