init python:
    from game.engine.runtime import (runtime)


    class UseItemAction(Action):
        def __init__(self, item):
            self.item = item

        def __call__(self):
            if self.item.jump_on_use_to:
                renpy.exports.jump(self.item.jump_on_use_to)
                # renpy.restart_interaction()


screen inventory_screen(
    get_owned_items,
    get_selected_item_id,
    set_selected_item_id,
    get_character,
    get_gold
):
    tag menu

    default owned_items = get_owned_items()
    default character = get_character()
    default gold = get_gold()

    on 'show' action SetVariable('owned_items', get_owned_items())
    on 'show' action SetVariable('character', get_character())
    on 'show' action SetVariable('gold', get_gold())

    for k in keymap_inventory_screen:
        key k action Hide("inventory_screen")
    key "K_ESCAPE" action Hide("inventory_screen")

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background Transform('gui/invbg.webp', fit='cover')

        add 'gui/ivpnof.webp':
            pos (625, 325)
            size (300, 398)
            anchor (0.5, 0.5)

        vbox:
            pos (440, 715)
            xsize 295
            spacing 30

            label _(character.name):
                xfill True
                text_style '_inventory_screen_style_text'

            label _(character.current_class):
                xfill True
                text_style '_inventory_screen_style_text'

        vbox:
            pos (260, 650)
            xsize 50
            spacing 15

            label _('inventory_screen_ac'):
                xfill True
                text_style '_inventory_screen_style_ac_title'

            label str(character.ac):
                xfill True
                text_style '_inventory_screen_style_ac_text'

        vbox:
            pos (1445, 25)
            xsize 140
            spacing 15

            add Transform('gui/icgold.webp'):
                pos (10, 0)
                size (140, 140)

            label str(gold):
                ypos -40
                xsize 155
                text_style '_inventory_screen_style_descrption'

        ####
        frame:
            pos (342, 765)
            background Transform('gui/ichpman.png')
            padding (0, 0)

            vbox:
                pos (0, 0)
                xsize 50
                spacing 20

                label str(character.current_health): # 20
                    xfill True
                    text_style '_inventory_screen_style_text'

                label str(character.max_health): # 20
                    xfill True
                    text_style '_inventory_screen_style_text'


    vpgrid:
        area (920, 731, 710, 130)
        cols 10
        spacing 20
        mousewheel True
        scrollbars "vertical"

        for owned_item in owned_items:
            button:
                xysize (50, 50)
                background Transform(owned_item.grid_image, fit='contain', align=(0.5, 0.5))
                hover_background Transform(owned_item.grid_image, fit='contain', align=(0.5, 0.5), matrixcolor=hover_matrix)
                action Show('inventory_item_screen', item=owned_item)
                hovered Show('_inventory_screen_descrption', x=owned_item.name)
                unhovered Show('_inventory_screen_descrption', x=None)

                if owned_item.owned_count > 1:
                    label str(owned_item.owned_count):
                        xfill True
                        yfill True
                        text_style '_inventory_screen_style_item_count'

    button:
        area (1200, 20, 193, 78)
        action Hide('inventory_screen')
        background Transform('gui/button.png')
        hover_background Transform('gui/button.png', matrixcolor=hover_matrix)

        text _('preferences_screen_return'): # Вернуться
            style 'preferences_dev_screen_style_button_text'
            align (0.5, 0.5)


screen _inventory_screen_descrption(x):
    if x:
        label _(x):
            area (850, 645, 545, 25)
            text_style '_inventory_screen_style_item_descrption'


style _inventory_screen_style_descrption:
    size 20
    color color_yellow
    align (0.5, 0.5)
style _inventory_screen_style_item_descrption:
    size 20
    color color_yellow
    align (0.0, 0.5)
style _inventory_screen_style_item_count:
    size 14
    color color_white
    align (1.0, 1.0)
style _inventory_screen_style_text:
    size 18
    color color_white
    align (0.5, 0.5)
style _inventory_screen_style_ac_title:
    size 24
    color color_yellow
    align (0.5, 0.5)
    font 'exocet.ttf'
style _inventory_screen_style_ac_text:
    size 24
    color color_white
    align (0.5, 0.5)
    font 'exocet.ttf'
