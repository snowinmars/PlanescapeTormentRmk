screen preferences_save():
    tag menu

    frame:
        xfill True
        yfill True
        background Transform('gui/loadbg.webp')

        label _('preferences_save_title'):
            xpos 745
            ypos 23
            xsize 310
            ysize 45
            text_align (0.5, 0.5)
            text_color '#dbc401'
            text_size 26

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True
            xfill True
            yfill True
            xpos 235
            ypos 155
            xsize 1431
            ysize 745

            grid gui.file_slot_cols gui.file_slot_rows:
                spacing 20

                for i in range(gui.file_slot_cols * gui.file_slot_rows):
                    $ slot = i + 1

                    vbox:
                        xsize 1350
                        ysize 130

                        button:
                            background Transform('gui/loadrowb.webp', fit='cover')
                            hover_background Transform('gui/loadrowc.webp', fit='cover')
                            action FileSave(slot)
                            xfill True
                            yfill True

                            add FileScreenshot(slot):
                                xpos 312
                                ypos 14
                                xsize 162
                                ysize 115

                            text FileTime(slot, format=_("{#file_time}%A, %d %B %Y, %H:%M"), empty=_("Пустой слот")):
                                xpos 480
                                ypos 45
                                xsize 500
                                ysize 100
                                color '#dbc401'
                                hover_color '#eeeeee'
                                size 20

                            text FileSaveName(slot):
                                xpos 480
                                ypos 10
                                xsize 500
                                ysize 100
                                color '#dbc401'
                                hover_color '#eeeeee'
                                size 20

                            key "save_delete" action FileDelete(slot)

    vbox:
        xfill True
        yfill True

        button:
            xsize 193
            ysize 78
            xpos 1460
            ypos 960
            action Return()
            background Transform('gui/button.png', fit='cover')
            hover_background Transform('gui/button.png', fit='cover', matrixcolor=hover_matrix)

            text _("preferences_screen_return"): # Вернуться
                size 20
                color "#eeeeee"
                xalign 0.5
                yalign 0.5
