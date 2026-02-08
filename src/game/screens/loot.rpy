init 10 python:
    from game.engine.runtime import (runtime)
    giim = runtime.global_inventory_items_manager


    screen_loot_cached_button_background = Transform('gui_button', fit='contain')
    screen_loot_cached_button_hover_background = Transform('gui_button', fit='cover', matrixcolor=hover_matrix)


    def screen_loot_move_all(container):
        pass


screen screen_loot(container): # container is cached in the screen_location_map
    zorder 190

    key 'K_ESCAPE' action Hide('screen_inventory')

    default container_items = list(map(lambda x: giim.get_item(x), container.items()))

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

        button:
            pos (641, 970)
            style 'screen_loot_style_button'
            action Function(screen_loot_move_all, container)
            text u"\u21C9":
                style 'screen_loot_style_button_text'


style screen_loot_style_button:
    xysize (40, 50)
    background "#ff000066"
style screen_loot_style_button_text:
    size 24
    color color_yellow
    hover_color color_white
    font font_dejavusans
    align (0.5, 0.5)
