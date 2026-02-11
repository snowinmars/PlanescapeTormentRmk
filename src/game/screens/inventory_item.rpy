init 10 python:
    def format_unusable_by(unusable_by):
        length = len(unusable_by)
        if length == 0:
            return ''
        if length == 1:
            return 'screen_inventory_item_format_unusable_by_length_1'.format(x=unusable_by[0])
        if length == 2:
            return 'screen_inventory_item_format_unusable_by_length_2'.format(x=unusable_by[0], y=unusable_by[1])
        return 'screen_inventory_item_format_unusable_by_length_many'.format(x=', '.join(unusable_by[:-1]), y=unusable_by[-1])


screen screen_inventory_item(item):
    modal True
    zorder 100

    default screen_inventory_item_unusable_by = format_unusable_by(item.unusable_by_list())
    default screen_inventory_item_fake_properties = __(item.fake_properties)
    default screen_inventory_item_description = __(item.description())

    key 'K_ESCAPE' action Hide('screen_inventory_item')

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_popup1'

        label item.name():
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

                if screen_inventory_item_fake_properties:
                    label screen_inventory_item_fake_properties:
                        xfill True
                        text_style 'screen_inventory_item_style_text'
                        text_align (0.0, 0.0)

                if screen_inventory_item_unusable_by:
                    label screen_inventory_item_unusable_by:
                        xfill True
                        text_style 'screen_inventory_item_style_text'
                        text_align (0.0, 0.0)

                if screen_inventory_item_fake_properties or screen_inventory_item_unusable_by:
                    label '':
                        text_style 'screen_inventory_item_style_text'

                label screen_inventory_item_description:
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
