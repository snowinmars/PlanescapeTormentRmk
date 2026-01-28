screen inventory_item_screen(item):
    key "K_ESCAPE" action Hide("inventory_item_screen")

    frame:
        xsize 600
        ysize 400
        xpos 600
        ypos 200
        background Transform('gui/popup1.webp', fit='cover')

    label item.name:
        xpos 475
        ypos 710
        xsize 225
        ysize 35
        text_size 20
        text_color '#f8f6de'
        text_align (0.5, 0.5)