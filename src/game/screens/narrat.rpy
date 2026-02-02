init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.NarratLogic import (NarratLogic)
    narratLogic = NarratLogic(runtime.global_state_manager)

    infinite_float_value       = float('inf')
    narrat_history_yadjustment = ui.adjustment()
    narrat_say_yadjustment     = ui.adjustment()
    narrat_menu_yadjustment    = ui.adjustment()

    def render_entry(entry):
        if entry['is_br']:
            return Text(
                '----------------',
                style='_narrat_screen_style_br_text',
                color=entry['who_color']
            )

        if entry['is_change']:
            change_id     = entry['who']
            change_kwargs = entry['what']
            change_text   = 'BUG narrat_change_oor: send screenshot to snowinmars@yandex.ru ' + change_id

            if change_id == 'character_manager_modify_property':
                change_text =  __('character_manager_modify_property').format(
                    name=__(change_kwargs['name']),
                    prop=__(change_kwargs['prop']),
                    amount=change_kwargs['amount'],
                    actual_value=change_kwargs['actual_value']
                )
            if change_id == 'character_manager_modify_property_once':
                change_text = __('character_manager_modify_property_once').format(
                    name=__(change_kwargs['name']),
                    prop=__(change_kwargs['prop']),
                    amount=change_kwargs['amount'],
                    actual_value=change_kwargs['actual_value']
                )
            if change_id == 'character_manager_set_property':
                change_text = __('character_manager_set_property').format(
                    name=__(change_kwargs['name']),
                    prop=__(change_kwargs['prop']),
                    actual_value=change_kwargs['actual_value']
                )
            if change_id == 'journal_notes_manager_update_journal':
                change_text = __('journal_notes_manager_update_journal').format(
                    note_id=__(change_kwargs['note_id'])
                )
            if change_id == 'new_internal_location_discovered':
                change_text = __('new_internal_location_discovered').format(
                    internal_location_id=__(change_kwargs['internal_location_id']),
                    external_location_id=__(change_kwargs['external_location_id'])
                )
            if change_id == 'locations_manager_set_location_external_unvisited':
                change_text = __('locations_manager_set_location_external_unvisited').format(
                    external_location_id=__(change_kwargs['external_location_id'])
                )
            if change_id == 'locations_manager_set_location_internal_unvisited':
                change_text = __('locations_manager_set_location_internal_unvisited').format(
                    internal_location_id=__(change_kwargs['internal_location_id'])
                )
            if change_id == 'world_manager_setter':
                change_text = __('world_manager_setter').format(
                    setting_id=__(change_kwargs['setting_id']),
                    value=str(change_kwargs['value'])
                )
            if change_id == 'world_manager_inc':
                change_text = __('world_manager_inc').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            if change_id == 'world_manager_dec':
                change_text = __('world_manager_dec').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            if change_id == 'world_manager_inc_once':
                change_text = __('world_manager_inc_once').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            if change_id == 'world_manager_dec_once':
                change_text = __('world_manager_dec_once').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            return Text(
                '    [change_text]',
                style='_narrat_screen_style_history_text',
                color=entry['who_color']
            )


        if entry['is_scars']:
            return Text(
                entry['what'],
                style='_narrat_screen_style_scars_text',
                color=entry['who_color']
            )

        if entry['is_nameless']:
            return Text(
                '{color=[entry["who_color"]]}[__("protagonist_character_name")]{/color} - [__(entry["what"])]',
                style='_narrat_screen_style_history_text',
                color=color_narrator
            )

        if entry['is_npc']:
            speaker = entry['who'].name
            if speaker.startswith('get_') and speaker.endswith('()'):
                $ speaker = eval(speaker)
            return Text(
                '{color=[entry["who_color"]]}[__(speaker)]{/color} - [entry["what"]]',
                style='_narrat_screen_style_history_text',
                color=color_npc
            )

        if entry['is_nr']:
            return Text(
                entry['what'],
                style='_narrat_screen_style_history_text',
                color=color_narrator
            )

        return Text('BUG narrat_history_oor: send screenshot to snowinmars@yandex.ru')


label never_narrat:
    $never = _('strength')
    $never = _('dexterity')
    $never = _('intelligence')
    $never = _('constitution')
    $never = _('wisdom')
    $never = _('charisma')
    $never = _('good')
    $never = _('law')
    $never = _('lore')
    $never = _('experience')
    $never = _('ac')


define narrat_screen_width = 600
define narrat_screen_height = 1000
define narrat_screen_history_height = narrat_screen_height * 0.6
define narrat_screen_say_height = narrat_screen_height * 0.18
define narrat_screen_menu_height = narrat_screen_height * 0.2


screen narrat():
    zorder 100

    on 'hide' action Function(narratLogic.exit_dialogue)

    modal False # Do not set to True: if it is True, it cannot capture input events like mouse clicks, keyboard press, etc.

    default cached_history = []
    default cached_last_history_id = 0

    if narratLogic.get_last_history_id() != cached_last_history_id:
        $ cached_history = narratLogic.actual_history()
        $ cached_last_history_id = narratLogic.get_last_history_id()


    frame:
        xfill True
        yfill True
        xsize narrat_screen_width
        align (1.0, 0.0)
        background 'gui_diabg_his'
        padding (20, 40)

        vbox:
            xfill True
            yfill True
            spacing 0

            # <narrat_history>
            $ narrat_history_yadjustment.value = infinite_float_value

            viewport:
                ysize narrat_screen_history_height
                yadjustment narrat_history_yadjustment
                mousewheel True
                draggable True
                scrollbars 'vertical'
                vscrollbar_unscrollable 'hide'
                yinitial 1.0

                vbox:
                    xfill True
                    spacing 10
                    at transform:
                        alpha 0.7

                    for entry in cached_history:
                        add render_entry(entry)
            # </narrat_history>


            # <narrat_say>
            $ narrat_say_yadjustment.value = infinite_float_value

            viewport:
                ysize narrat_screen_say_height
                yadjustment narrat_say_yadjustment
                mousewheel True
                draggable True
                scrollbars 'vertical'
                vscrollbar_unscrollable 'hide'
                yinitial 0.0

                $ entry = narratLogic.get_current_line()
                if entry:
                    add render_entry(entry)
            # </narrat_say>


            # <narrat_menu>
            $ narrat_menu_yadjustment.value = infinite_float_value

            viewport:
                ysize narrat_screen_menu_height
                yadjustment narrat_menu_yadjustment
                mousewheel True
                draggable True
                scrollbars 'vertical'
                vscrollbar_unscrollable 'hide'
                yinitial 0.0


                vbox:
                    spacing 0

                    for i, item in enumerate(narratLogic.get_current_menu_items(), 1):
                        $ caption = item[0] if len(item) > 0 else ''
                        $ action = item[1] if len(item) > 1 else None

                        button:
                            xfill True
                            padding (10, 5)

                            action [
                                Function(narratLogic.add_menu_choice, caption),
                                action
                            ]

                            text str(i) + '. ' + __(caption):
                                style '_narrat_screen_style_history_text'
                                layout 'tex'
                                color color_nameless_one
                                hover_color color_white
            # </narrat_menu>


style _narrat_screen_style_br_text:
    size 12
    color color_br
style _narrat_screen_style_history_text:
    size 18
style _narrat_screen_style_scars_text is _narrat_screen_style_history_text:
    font font_exocet
