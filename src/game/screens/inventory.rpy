init python:
    from game.engine.runtime import (runtime)


    inventory_screen_hovered_item_name = ''


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

    $ owned_items = get_owned_items()
    $ character = get_character()
    $ gold = get_gold()

    key "i" action Hide("inventory_screen")
    key "mouseup_3" action Hide("inventory_screen")

    frame:
        xfill True
        yfill True
        background Transform('gui/invbg.webp', fit='cover')

    frame:
        background None

        add 'gui/ivpnof.webp':
            anchor (0.5, 0.5)
            xsize 300
            ysize 398
            xpos 625
            ypos 325

        label _(character.name):
            xpos 475
            ypos 710
            xsize 225
            ysize 35
            text_size 20
            text_color '#f8f6de'
            text_align (0.5, 0.5)

        label _(character.current_class):
            xpos 475
            ypos 770
            xsize 225
            ysize 35
            text_size 20
            text_color '#f8f6de'
            text_align (0.5, 0.5)

        label _('inventory_screen_ac'):
            xpos 260
            ypos 645
            xsize 50
            ysize 35
            text_size 26
            text_color "#dbc401"
            text_align (0.5, 0.5)
            text_font 'exocet.ttf'

        label str(character.ac):
            xpos 260
            ypos 685
            xsize 50
            ysize 35
            text_size 24
            text_color "#f8f6de"
            text_align (0.5, 0.5)
            text_font 'exocet.ttf'

        vbox:
            xpos 1527
            ypos 110
            xsize 140
            anchor (0.5, 0.5)

            add Transform('gui/icgold.webp', fit='cover', xsize=140, ysize=140)

            label str(gold):
                background '#ff000066'
                ypos -30
                xsize 155
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

        ###
        vbox:
            xpos 343 # 28
            ypos 765 # 55

            label str(character.current_health):
                ypos 0
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)
                background Transform('gui/ichpman.png', fit='cover')

            label str(character.max_health):
                ypos 10
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)


    if inventory_screen_hovered_item_name:
        label inventory_screen_hovered_item_name:
            xpos 860
            ypos 642
            xsize 525
            text_size 20
            text_color "#dbc401"
            text_align (0.0, 0.5)


    vpgrid:
        xpos 920
        ypos 731
        xsize 675
        ysize 130
        xfill True
        yfill True

        cols 10
        spacing 25
        mousewheel True
        scrollbars "vertical"

        for owned_item in owned_items:
            button:
                xsize 45
                ysize 45
                background Transform(owned_item.grid_image, fit='contain')
                hover_background Transform(owned_item.grid_image, fit='contain', matrixcolor=hover_matrix)
                action Function(set_selected_item_id, owned_item.settings_id)
                hovered SetVariable('inventory_screen_hovered_item_name', owned_item.name)
                unhovered SetVariable('inventory_screen_hovered_item_name', '')

                if owned_item.owned_count > 1:
                    text str(owned_item.owned_count):
                        xpos 35
                        ypos 25
                        color '#f8f6de'
                        size 14
