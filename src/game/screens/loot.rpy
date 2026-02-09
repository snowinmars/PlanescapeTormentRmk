init 10 python:
    from game.engine.runtime import (runtime)
    giim = runtime.global_inventory_items_manager


    screen_loot_cached_button_background = Transform('gui_button', fit='contain')
    screen_loot_cached_button_hover_background = Transform('gui_button', fit='cover', matrixcolor=hover_matrix)


    def screen_loot_move_all(container):
        container_items = list(container.items())
        for item_id in container_items:
            giim.pick_item(item_id)
            container.remove_item(item_id)
        container.mark_dirty()

    def get_enriched_items(container):
        return list(map(lambda x: giim.get_item(x), container.items()))


screen screen_loot(container): # container is cached in the screen_location_map
    zorder 190

    key 'K_ESCAPE' action Hide('screen_inventory')

    default container_items  = get_enriched_items(container)
    default owned_items      = giim.get_owned_items()
    default screen_loot_gold = 100 # inventoryLogic.get_gold()


    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_conbg'


        vpgrid:
            area (378, 970, 290, 100)
            cols 5
            spacing 3
            mousewheel True
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'

            for item in container_items:
                $ _idle, _hover = get_cached_inventory_item(item.grid_image)
                button:
                    xysize (50, 50)
                    background _idle
                    hover_background _hover
                    action Show('screen_inventory_item', item=item)


        vpgrid:
            area (825, 970, 645, 100)
            cols 10
            spacing 3
            mousewheel True
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'

            for item in owned_items:
                $ _idle, _hover = get_cached_inventory_item(item.grid_image)
                button:
                    xysize (50, 50)
                    background _idle
                    hover_background _hover
                    action Show('screen_inventory_item', item=item)


        vbox:
            pos (1363, 998)
            xsize 140
            spacing 0

            add 'gui_icgold':
                size (50, 32)

            label str(screen_loot_gold):
                ypos 0
                xsize 155
                text_style 'screen_loot_style_descrption'


        button:
            pos (641, 970)
            style 'screen_loot_style_button'
            action [
                Function(screen_loot_move_all, container),
                Hide('screen_loot')
            ]
            text u"\u21C9":
                style 'screen_loot_style_button_text'

        button:
            pos (641, 1020)
            style 'screen_loot_style_button'
            action Hide('screen_loot')
            text u"\u2715":
                style 'screen_loot_style_button_text'


style screen_loot_style_button:
    xysize (40, 50)
style screen_loot_style_button_text:
    size 24
    color color_yellow
    hover_color color_white
    font font_dejavusans
    align (0.5, 0.5)
style screen_loot_style_descrption:
    size 14
    color color_yellow
    align (0.0, 0.5)
