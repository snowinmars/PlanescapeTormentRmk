screen inventory_button():
    imagebutton:
        align (0.95, 0.05)
        idle "images/inventory.png"
        hover "images/inventory.png"
        action ShowMenu("inventory_screen")

style inventory_description:
    font gui.text_font
    size 16
    layout "tex"

screen inventory_screen():
    modal True
    zorder 101

    frame:
        style_prefix "inventory"
        background Solid("#333")
        xalign 0.5
        yalign 0.5
        xysize (1200, 700)
        padding (25, 25)

        hbox:
            spacing 50

            vbox:
                xsize 500
                label "Инвентарь" xalign 0.5

                vpgrid:
                    cols 3
                    spacing 20
                    mousewheel True
                    scrollbars "vertical"

                    for item in renpy.store.global_inventory_manager.get_owned_items():
                        imagebutton:
                            idle item.grid_image
                            hover Transform(item.grid_image, matrixcolor=BrightnessMatrix(0.1))
                            action SetVariable("renpy.store.global_inventory_manager.selected_item", item)
                            xsize 150
                            ysize 150

            vbox:
                xsize 600
                label "Описание" xalign 0.5

                frame:
                    background Solid("#222")
                    xfill True
                    yfill True
                    padding (20, 20)

                    if renpy.store.global_inventory_manager.selected_item:
                        vbox:
                            spacing 30
                            add renpy.store.global_inventory_manager.selected_item.detail_image xalign 0.5
                            text renpy.store.global_inventory_manager.selected_item.description:
                                style "inventory_description"
                    else:
                        text "Select an item" xalign 0.5 yalign 0.5

    textbutton "Закрыть":
        action [
            Hide("inventory_screen"),
            Return(-1)
        ]
        align (0.99, 0.02)