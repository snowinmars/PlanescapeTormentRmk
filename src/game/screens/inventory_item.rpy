label never_inventory_item:
    $ never = _('InventoryItemUnusableBy.none')
    $ never = _('InventoryItemUnusableBy.chaotic')
    $ never = _('InventoryItemUnusableBy.evil')
    $ never = _('InventoryItemUnusableBy.good')
    $ never = _('InventoryItemUnusableBy.x_neutral')
    $ never = _('InventoryItemUnusableBy.lawful')
    $ never = _('InventoryItemUnusableBy.neutral_x')
    $ never = _('InventoryItemUnusableBy.sensate')
    $ never = _('InventoryItemUnusableBy.priest')
    $ never = _('InventoryItemUnusableBy.godsman')
    $ never = _('InventoryItemUnusableBy.anarchist')
    $ never = _('InventoryItemUnusableBy.xaositect')
    $ never = _('InventoryItemUnusableBy.fighter')
    $ never = _('InventoryItemUnusableBy.non_aligned')
    $ never = _('InventoryItemUnusableBy.fighter_mage')
    $ never = _('InventoryItemUnusableBy.dustman')
    $ never = _('InventoryItemUnusableBy.mercykiller')
    $ never = _('InventoryItemUnusableBy.indep')
    $ never = _('InventoryItemUnusableBy.fighter_theif')
    $ never = _('InventoryItemUnusableBy.mage')
    $ never = _('InventoryItemUnusableBy.mage_thief')
    $ never = _('InventoryItemUnusableBy.dakkon')
    $ never = _('InventoryItemUnusableBy.fall_from_grace')
    $ never = _('InventoryItemUnusableBy.thief')
    $ never = _('InventoryItemUnusableBy.vhailor')
    $ never = _('InventoryItemUnusableBy.ignus')
    $ never = _('InventoryItemUnusableBy.morte')
    $ never = _('InventoryItemUnusableBy.nordom')
    $ never = _('InventoryItemUnusableBy.human')
    $ never = _('InventoryItemUnusableBy.annah')
    $ never = _('InventoryItemUnusableBy.ee_monk')
    $ never = _('InventoryItemUnusableBy.nameless_one')
    $ never = _('InventoryItemUnusableBy.ee_half_orc')


init 10 python:
    from game.engine.runtime import (runtime)


    def format_unusable_by(unusable_by):
        if not unusable_by:
            return ''
        length = len(unusable_by)
        if length == 0:
            return ''
        if length == 1:
            return __('screen_inventory_item_format_unusable_by_length_one').format(x=__(unusable_by[0]))
        return __('screen_inventory_item_format_unusable_by_length_many').format(x=', '.join(map(lambda x: __(x), unusable_by[:-1])), y=__(unusable_by[-1]))


    def define_may_be_used(item, by_who):
        if item.unusable_by_chaotic() and by_who.is_chaotic():
            return False
        if item.unusable_by_evil() and by_who.is_evil():
            return False
        if item.unusable_by_good() and by_who.is_good():
            return False
        if item.unusable_by_x_neutral() and by_who.is_x_neutral():
            return False
        if item.unusable_by_lawful() and by_who.is_lawful():
            return False
        if item.unusable_by_neutral_x() and by_who.is_neutral_x():
            return False
        if item.unusable_by_sensate(): # and runtime.state_manager.world_manager.get_join_sensate()
            return False
        if item.unusable_by_priest() and by_who.current_class == 'priest':
            return False
        if item.unusable_by_godsman(): # and runtime.state_manager.world_manager.get_join_godsman()
            return False
        if item.unusable_by_anarchist(): # and runtime.state_manager.world_manager.get_join_anarchist()
            return False
        if item.unusable_by_xaositect(): # and runtime.state_manager.world_manager.get_join_xaositect()
            return False
        if item.unusable_by_fighter() and by_who.current_class == 'fighter':
            return False
        if item.unusable_by_non_aligned(): # TODO [snow]: what?
            return False
        if item.unusable_by_fighter_mage() and by_who.current_class == 'fighter/mage':
            return False
        if item.unusable_by_dustman(): # and runtime.state_manager.world_manager.get_join_dustman()
            return False
        if item.unusable_by_mercykiller(): # impossible
            return False
        if item.unusable_by_indep(): # impossible
            return False
        if item.unusable_by_fighter_theif() and by_who.current_class == 'fighter/theif':
            return False
        if item.unusable_by_mage() and by_who.current_class == 'mage':
            return False
        if item.unusable_by_mage_thief() and by_who.current_class == 'mage/theif':
            return False
        if item.unusable_by_dakkon() and by_who.name == 'dakkon_character_name':
            return False
        if item.unusable_by_fall_from_grace() and by_who.name == 'grace_character_name':
            return False
        if item.unusable_by_thief() and by_who.current_class == 'theif':
            return False
        if item.unusable_by_vhailor() and by_who.name == 'vhail_character_name':
            return False
        if item.unusable_by_ignus() and by_who.name == 'ignus_character_name':
            return False
        if item.unusable_by_morte() and by_who.name == 'morte_character_name':
            return False
        if item.unusable_by_nordom() and by_who.name == 'nordom_character_name':
            return False
        if item.unusable_by_human() and by_who.race == 'human':
            return False
        if item.unusable_by_annah() and by_who.name == 'annah_character_name':
            return False
        if item.unusable_by_monk() and by_who.current_class == 'monk':
            return False
        if item.unusable_by_nameless_one() and by_who.name == 'protagonist_character_name':
            return False
        if item.unusable_by_half_orc() and by_who.race == 'half-orc':
            return False


screen screen_inventory_item(item):
    modal True
    zorder 100

    default screen_inventory_item_current_character = runtime.global_state_manager.characters_manager.get_character('protagonist_character_name')
    default screen_inventory_item_may_be_used = define_may_be_used(item, screen_inventory_item_current_character)
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


    if item.conversiable():
        button:
            area (825, 835, 193, 78)
            action [
                Hide('screen_inventory_item'),
                Hide('screen_inventory'),
                Jump(item.jump_on_use_to)
            ]
            background cached_button_background
            hover_background cached_button_hover_background

            text _('screen_inventory_item_use'): # Использовать
                style 'screen_inventory_item_style_button_text'
                align (0.5, 0.5)


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
