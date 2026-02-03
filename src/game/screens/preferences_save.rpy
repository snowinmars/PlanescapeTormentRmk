screen screen_preferences_save():
    tag menu

    frame:
        xfill True
        yfill True
        background 'gui_loadbg'


        label _('screen_preferences_save_title'):
            area (745, 23, 310, 45)
            text_align (0.5, 0.5)
            text_color color_yellow
            text_size 26


        viewport:
            area (235, 155, 1431, 745)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            grid gui.file_slot_cols gui.file_slot_rows:
                spacing 20

                for i in range(gui.file_slot_cols * gui.file_slot_rows):
                    $ slot = i + 1

                    vbox:
                        xysize (1350, 130)

                        button:
                            background 'gui_loadrowb'
                            hover_background 'gui_loadrowc'
                            action FileSave(slot)

                            add FileScreenshot(slot):
                                pos (444, 17)
                                size (231, 134)

                            text FileTime(slot, format=_('{#file_time}%A, %d %B %Y, %H:%M'), empty=_('Пустой слот')):
                                area (690, 20, 500, 100)
                                style 'screen_preferences_save_style_item_text'

                            text FileSaveName(slot):
                                area (690, 45, 500, 100)
                                style 'screen_preferences_save_style_item_text'

                            key 'save_delete' action FileDelete(slot)


    button:
        area (1400, 960, 193, 78)
        action Return()
        background cached_button_background
        hover_background cached_button_hover_background

        text _('screen_preferences_save_return'): # Вернуться
            style 'screen_preferences_save_style_button_text'
            align (0.5, 0.5)


style screen_preferences_save_style_item_text:
    size 20
    color color_yellow
    hover_color color_white
style screen_preferences_save_style_button_text:
    size 20
    color color_white
