init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.InventoryLogic import (InventoryLogic)
    inventoryLogic = InventoryLogic(runtime.global_state_manager)


    class UseItemAction(Action):
        def __init__(self, item):
            self.item = item

        def __call__(self):
            if self.item.jump_on_use_to:
                renpy.exports.jump(self.item.jump_on_use_to)
                # renpy.restart_interaction()


screen screen_inventory():
    tag menu

    default screen_inventory_descrption = ''
    default screen_inventory_owned_items = inventoryLogic.get_owned_items()
    default screen_inventory_npc = inventoryLogic.get_character()
    default screen_inventory_gold = inventoryLogic.get_gold()

    for k in keymap_inventory_screen:
        key k action Hide('screen_inventory')
    key 'K_ESCAPE' action Hide('screen_inventory')

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_invbg'

        add 'gui_ivpnof':
            pos (625, 325)
            size (300, 398)
            anchor (0.5, 0.5)

        vbox:
            pos (440, 715)
            xsize 295
            spacing 30

            label _(screen_inventory_npc.name):
                xfill True
                text_style 'screen_inventory_style_text'

            label _(screen_inventory_npc.current_class):
                xfill True
                text_style 'screen_inventory_style_text'

        vbox:
            pos (260, 650)
            xsize 50
            spacing 15

            label _('screen_inventory_ac'):
                xfill True
                text_style 'screen_inventory_style_ac_title'

            label str(screen_inventory_npc.ac):
                xfill True
                text_style 'screen_inventory_style_ac_text'

        vbox:
            pos (1445, 25)
            xsize 140
            spacing 15

            add 'gui_icgold':
                pos (10, 0)
                size (140, 140)

            label str(screen_inventory_gold):
                ypos -40
                xsize 155
                text_style 'screen_inventory_style_descrption'

        ####
        frame:
            pos (342, 765)
            background 'gui_ichpman'
            padding (0, 0)

            vbox:
                pos (0, 0)
                xsize 50
                spacing 20

                label str(screen_inventory_npc.current_health): # 20
                    xfill True
                    text_style 'screen_inventory_style_text'

                label str(screen_inventory_npc.max_health): # 20
                    xfill True
                    text_style 'screen_inventory_style_text'


    vpgrid:
        area (920, 731, 710, 130)
        cols 10
        spacing 20
        mousewheel True
        scrollbars 'vertical'
        vscrollbar_unscrollable 'hide'

        for owned_item in screen_inventory_owned_items:
            $ _idle, _hover = get_cached_inventory_item(owned_item.grid_image)
            button:
                xysize (50, 50)
                background _idle
                hover_background _hover
                action Show('screen_inventory_item', item=owned_item)
                hovered SetScreenVariable('screen_inventory_descrption', owned_item.name)
                unhovered SetScreenVariable('screen_inventory_descrption', '')

                if owned_item.owned_count > 1:
                    label str(owned_item.owned_count):
                        xfill True
                        yfill True
                        text_style 'screen_inventory_style_item_count'


    if screen_inventory_descrption:
        label _(screen_inventory_descrption):
            area (850, 645, 545, 25)
            text_style 'screen_inventory_style_item_descrption'


    button:
        area (1200, 20, 193, 78)
        action Hide('screen_inventory')
        background cached_button_background
        hover_background cached_button_hover_background

        text _('screen_inventory_return'): # Вернуться
            style 'screen_inventory_style_button_text'
            align (0.5, 0.5)


style screen_inventory_style_descrption:
    size 20
    color color_yellow
    align (0.5, 0.5)
style screen_inventory_style_item_descrption:
    size 20
    color color_yellow
    align (0.0, 0.5)
style screen_inventory_style_item_count:
    size 14
    color color_white
    align (1.0, 1.0)
style screen_inventory_style_text:
    size 18
    color color_white
    align (0.5, 0.5)
style screen_inventory_style_ac_title:
    size 24
    color color_yellow
    align (0.5, 0.5)
    font font_exocet
style screen_inventory_style_ac_text:
    size 24
    color color_white
    align (0.5, 0.5)
    font font_exocet
style screen_inventory_style_button_text:
    size 20
    color color_white