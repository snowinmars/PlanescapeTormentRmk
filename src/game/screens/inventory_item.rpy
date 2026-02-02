screen inventory_item_screen(item):
    modal True
    zorder 100

    key 'K_ESCAPE' action Hide('inventory_item_screen')

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_popup1'

        label item.name:
            area (825, 250, 440, 25)
            text_style '_inventory_item_screen_style_header'

        add item.detail_image:
            pos (622, 317)
            size (125, 125)

        viewport:
            area (825, 310, 600, 500)
            mousewheel True
            draggable True
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'

            vbox:
                spacing 0

                if __(item.properties):
                    label __(item.properties):
                        xfill True
                        text_style '_inventory_item_screen_style_text'
                        text_align (0.0, 0.0)

                if __(item.used_by):
                    label __(item.used_by):
                        xfill True
                        text_style '_inventory_item_screen_style_text'
                        text_align (0.0, 0.0)

                if __(item.properties) or __(item.used_by):
                    label '':
                        text_style '_inventory_item_screen_style_text'

                label __(item.description):
                    xfill True
                    text_style '_inventory_item_screen_style_text'
                    text_align (0.0, 0.0)


    button:
        area (1250, 835, 193, 78)
        action Hide('inventory_item_screen')
        background 'gui_button'
        hover_background Transform('gui_button', matrixcolor=hover_matrix)

        text _('preferences_screen_return'): # Вернуться
            style 'preferences_dev_screen_style_button_text'
            align (0.5, 0.5)


style _inventory_item_screen_style_header:
    size 24
    color color_white
    align (0.5, 0.5)
style _inventory_item_screen_style_text:
    size 18
    color color_yellow
    align (0.5, 0.5)
