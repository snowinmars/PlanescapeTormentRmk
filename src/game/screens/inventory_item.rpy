screen screen_inventory_item(item):
    modal True
    zorder 100

    key 'K_ESCAPE' action Hide('screen_inventory_item')

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_popup1'

        label item.name:
            area (825, 250, 440, 25)
            text_style 'screen_inventory_item_style_header'

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
                        text_style 'screen_inventory_item_style_text'
                        text_align (0.0, 0.0)

                if __(item.used_by):
                    label __(item.used_by):
                        xfill True
                        text_style 'screen_inventory_item_style_text'
                        text_align (0.0, 0.0)

                if __(item.properties) or __(item.used_by):
                    label '':
                        text_style 'screen_inventory_item_style_text'

                label __(item.description):
                    xfill True
                    text_style 'screen_inventory_item_style_text'
                    text_align (0.0, 0.0)


    button:
        area (1250, 835, 193, 78)
        action Hide('screen_inventory_item')
        background cached_button_background
        hover_background cached_button_hover_background

        text _('screen_inventory_item_return'): # Вернуться
            style 'screen_inventory_item_style_button_text'
            align (0.5, 0.5)


style screen_inventory_item_style_header:
    size 24
    color color_white
    align (0.5, 0.5)
style screen_inventory_item_style_text:
    size 18
    color color_yellow
    align (0.5, 0.5)
style screen_inventory_item_style_button_text:
    size 20
    color color_white