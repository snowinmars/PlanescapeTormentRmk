init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.NarratLogic import (NarratLogic)
    narratLogic = NarratLogic(runtime.global_state_manager)

    infinite_float_value       = float('inf')
    narrat_history_yadjustment = ui.adjustment()
    narrat_say_yadjustment     = ui.adjustment()
    narrat_menu_yadjustment    = ui.adjustment()


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


screen narrat():
    zorder 100

    on 'hide' action Function(narratLogic.exit_dialogue)

    modal False # Do not set to True: if it is True, it cannot capture input events like mouse clicks, keyboard press, etc.

    frame:
        xfill True
        yfill True
        xsize narratLogic.get_screen_width()
        align (1.0, 0.0)
        background Transform('gui/diabg_his.webp')
        padding (20, 40)

        vbox:
            xfill True
            yfill True
            spacing 0

            use narrat_history()
            use narrat_say()
            use narrat_menu()


screen narrat_history():
    $ narrat_history_yadjustment.value = infinite_float_value

    viewport:
        ysize narratLogic.get_history_height()
        yadjustment narrat_history_yadjustment
        mousewheel True
        draggable True
        scrollbars 'vertical'
        yinitial 1.0

        vbox:
            xfill True
            spacing 10
            at transform:
                alpha 0.7

            for entry in narratLogic.actual_history():
                if narratLogic.is_br_entry(entry):
                    use _narrat_br_screen(entry)
                    continue

                if narratLogic.is_entry_change(entry):
                    use _narrat_change_screen(entry)
                    continue

                if narratLogic.is_scars_entry(entry):
                    use _narrat_scars_screen(entry)
                    continue

                if narratLogic.is_nameless_entry(entry):
                    use _narrat_nameless_screen(entry)
                    continue

                if narratLogic.is_npc_entry(entry):
                    use _narrat_npc_screen(entry)
                    continue

                if narratLogic.is_nr_entry(entry):
                    use _narrat_nr_screen(entry)
                    continue

                text 'BUG narrat_history_oor: send screenshot to snowinmars@yandex.ru'


screen narrat_say():
    $ narrat_say_yadjustment.value = infinite_float_value

    viewport:
        ysize narratLogic.get_say_height()
        yadjustment narrat_say_yadjustment
        mousewheel True
        draggable True
        scrollbars 'vertical'
        yinitial 1.0

        $ entry = narratLogic.get_current_line()
        if entry:
            if narratLogic.is_scars_entry(entry):
                use _narrat_scars_screen(entry)
            elif narratLogic.is_npc_entry(entry):
                use _narrat_npc_screen(entry)
            elif narratLogic.is_nr_entry(entry):
                use _narrat_nr_screen(entry)
            else:
                text 'BUG narrat_say_oor: send screenshot to snowinmars@yandex.ru'


screen narrat_menu():
    $ narrat_menu_yadjustment.value = infinite_float_value

    viewport:
        ysize narratLogic.get_menu_height()
        scrollbars 'vertical'
        yadjustment narrat_menu_yadjustment
        mousewheel True
        draggable True

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
                        color '#ff2e21'
                        hover_color '#f0ede4'


screen _narrat_br_screen(entry):
    text '----------------':
        style '_narrat_screen_style_br_text'
        color entry['who_color']


screen _narrat_change_screen(entry):
    default change_id = entry['who']
    default change_kwargs = entry['what']
    default change_text = 'BUG narrat_change_oor: send screenshot to snowinmars@yandex.ru ' + change_id

    if change_id == 'character_manager_modify_property':
        $ change_text =  __('character_manager_modify_property').format(
            name=__(change_kwargs['name']),
            prop=__(change_kwargs['prop']),
            amount=change_kwargs['amount'],
            actual_value=change_kwargs['actual_value']
        )
    if change_id == 'character_manager_modify_property_once':
        $ change_text = __('character_manager_modify_property_once').format(
            name=__(change_kwargs['name']),
            prop=__(change_kwargs['prop']),
            amount=change_kwargs['amount'],
            actual_value=change_kwargs['actual_value']
        )
    if change_id == 'character_manager_set_property':
        $ change_text = __('character_manager_set_property').format(
            name=__(change_kwargs['name']),
            prop=__(change_kwargs['prop']),
            actual_value=change_kwargs['actual_value']
        )
    if change_id == 'journal_notes_manager_update_journal':
        $ change_text = __('journal_notes_manager_update_journal').format(
            note_id=__(change_kwargs['note_id'])
        )
    if change_id == 'new_internal_location_discovered':
        $ change_text = __('new_internal_location_discovered').format(
            internal_location_id=__(change_kwargs['internal_location_id']),
            external_location_id=__(change_kwargs['external_location_id'])
        )
    if change_id == 'locations_manager_set_location_external_unvisited':
        $ change_text = __('locations_manager_set_location_external_unvisited').format(
            external_location_id=__(change_kwargs['external_location_id'])
        )
    if change_id == 'locations_manager_set_location_internal_unvisited':
        $ change_text = __('locations_manager_set_location_internal_unvisited').format(
            internal_location_id=__(change_kwargs['internal_location_id'])
        )
    if change_id == 'world_manager_setter':
        $ change_text = __('world_manager_setter').format(
            setting_id=__(change_kwargs['setting_id']),
            value=str(change_kwargs['value'])
        )
    if change_id == 'world_manager_inc':
        $ change_text = __('world_manager_inc').format(
            setting_id=__(change_kwargs['setting_id']),
            before=change_kwargs['before'],
            delta=change_kwargs['delta'],
            after=change_kwargs['after']
        )
    if change_id == 'world_manager_dec':
        $ change_text = __('world_manager_dec').format(
            setting_id=__(change_kwargs['setting_id']),
            before=change_kwargs['before'],
            delta=change_kwargs['delta'],
            after=change_kwargs['after']
        )
    if change_id == 'world_manager_inc_once':
        $ change_text = __('world_manager_inc_once').format(
            setting_id=__(change_kwargs['setting_id']),
            before=change_kwargs['before'],
            delta=change_kwargs['delta'],
            after=change_kwargs['after']
        )
    if change_id == 'world_manager_dec_once':
        $ change_text = __('world_manager_dec_once').format(
            setting_id=__(change_kwargs['setting_id']),
            before=change_kwargs['before'],
            delta=change_kwargs['delta'],
            after=change_kwargs['after']
        )
    text '    ' + change_text:
        style '_narrat_screen_style_history_text'
        color entry['who_color']


screen _narrat_scars_screen(entry):
    text '[entry["what"]]':
        style '_narrat_screen_style_scars_text'
        color entry['who_color']


screen _narrat_nameless_screen(entry):
    text '{color=[entry["who_color"]]}[__("protagonist_character_name")]{/color} - [__(entry["what"])]':
        style '_narrat_screen_style_history_text'
        color '#98afb5'
        xfill True


screen _narrat_npc_screen(entry):
    default speaker = entry['who'].name
    if speaker.startswith('get_') and speaker.endswith('()'):
        $ speaker = eval(speaker)
    text '{color=[entry["who_color"]]}[__(speaker)]{/color} - [entry["what"]]':
        style '_narrat_screen_style_history_text'
        color '#9ba290'


screen _narrat_nr_screen(entry):
    text entry['what']:
        style '_narrat_screen_style_history_text'
        color '#98afb5'


style _narrat_screen_style_br_text:
    size 12
    color '#c4a28a'
style _narrat_screen_style_history_text:
    size 18
style _narrat_screen_style_scars_text is _narrat_screen_style_history_text:
    font 'exocet.ttf'
