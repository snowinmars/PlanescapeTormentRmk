screen inventory_button():
    imagebutton:
        align (0.95, 0.05)
        idle "images/icons/inventory.png"
        hover "images/icons/inventory.png"
        action ShowMenu("inventory_screen")

style inventory_description:
    font gui.text_font
    size 16
    layout "tex"

style inventory_name:
    font gui.text_font
    size 20
    xalign 0.5

screen inventory_screen():
    python:
        class UseItemAction(Action):
            def __init__(self, item):
                self.item = item

            def __call__(self):
                if self.item.jump_on_use_to:
                    renpy.exports.jump(self.item.jump_on_use_to)
                    # renpy.restart_interaction()

    modal True
    zorder 101

    key "i" action Hide("inventory_screen")
    key "mouseup_3" action Hide("inventory_screen")

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
                            action renpy.store.global_inventory_manager.set_selected_item(item)
                            xsize 150
                            ysize 150

            vbox:
                xsize 600
                if renpy.store.global_inventory_manager.has_selected_item():
                    label renpy.store.global_inventory_manager.get_selected_item().name:
                        style "inventory_name"

                viewport:
                    xfill True
                    yfill True
                    mousewheel True
                    scrollbars "vertical"

                    if renpy.store.global_inventory_manager.has_selected_item():
                        vbox:
                            # background Solid("#222")
                            # padding (20, 20)
                            spacing 30
                            add renpy.store.global_inventory_manager.get_selected_item().detail_image xalign 0.5
                            text renpy.store.global_inventory_manager.get_selected_item().description:
                                style "inventory_description"

                            if renpy.store.global_inventory_manager.get_selected_item().jump_on_use_to:
                                textbutton "Использовать":
                                    action UseItemAction(renpy.store.global_inventory_manager.get_selected_item())
                                    xalign 0.5
                                    ypadding 10
                                    xpadding 30
                                    margin (0, 30, 0, 0)
                    else:
                        text "Select an item" xalign 0.5 yalign 0.5

    textbutton "Закрыть":
        action [
            Hide("inventory_screen"),
            Jump("show_graphics_menu")
        ]
        align (0.99, 0.02)
