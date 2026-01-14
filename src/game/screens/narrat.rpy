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
    modal False
    on 'hide' action Function(runtime.global_narrat_manager.update_current_dialogue, None, None)
    on 'hide' action Function(runtime.global_narrat_manager.add_br)

    $ config = runtime.global_narrat_manager.get_config()
    $ screen_width = config.get('screen_width')
    $ history_height = int(config.get('screen_height') * config.get('history_area_height'))
    $ say_height = int(config.get('screen_height') * config.get('dialogue_area_height'))
    $ menu_height = int(config.get('screen_height') * config.get('menu_area_height'))

    frame:
        background "gui/diabg_his.png"
        xsize screen_width
        xfill True
        yfill True
        xalign 1.0
        yalign 0.0
        yoffset 0
        padding (20, 40)

        vbox:
            xfill True
            yfill True
            spacing 0

            $ slice_value = -1 if runtime.global_narrat_manager.get_current_speaker() else 0
            $ actual_history = runtime.global_narrat_manager.get_history()
            $ is_inside_dialogue = runtime.global_narrat_manager.get_current_speaker() is not None
            if is_inside_dialogue:
                $ actual_history = actual_history[:-1] # the last history line displays in 'say' screen

            use narrat_history(
                actual_history,
                history_height,
                config['npc_text_color'],
                config['nr_text_color'],
                config['nameless_text_color']
            )
            use narrat_say(
                runtime.global_narrat_manager.get_current_speaker(),
                runtime.global_narrat_manager.get_current_text(),
                say_height,
                config['npc_text_color'],
                config['nr_text_color']
            )
            use narrat_menu(
                runtime.global_narrat_manager.get_current_menu_items(),
                runtime.global_narrat_manager.add_menu_choice,
                menu_height,
                config['choice_text_color'],
                config['choice_text_hover_color']
            )


init python:
    infinite_float_value = float("inf")
    narrat_history_yadjustment = ui.adjustment()


screen narrat_history(
    history,
    history_height,
    npc_text_color,
    nr_text_color,
    nameless_text_color
):
    $ narrat_history_yadjustment.value = infinite_float_value
    frame:
        background None
        xfill True
        ysize history_height

        vbox:
            xfill True
            yfill True

            viewport:
                yadjustment narrat_history_yadjustment
                id "history_viewport"
                xfill True
                yfill True
                mousewheel True
                draggable True
                scrollbars "vertical"
                yinitial 1.0

                vbox:
                    xfill True

                    for entry in history:
                        frame:
                            background None
                            xfill True
                            padding (10, 8)

                            vbox:
                                xfill True
                                spacing 2
                                at transform:
                                    alpha 0.7

                                $ is_br = entry['is_br']
                                if is_br:
                                    text '----------------':
                                        size 12
                                        color nameless_text_color
                                        xfill True

                                $ is_change = entry['is_change']
                                if is_change:
                                    $ change_id = entry['who']
                                    $ change_kwargs = entry['what']
                                    $ change_text = change_id
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
                                    if change_id == 'journal_manager_update_journal':
                                        $ change_text = __('journal_manager_update_journal').format(
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
                                    text change_text:
                                        size 18
                                        color '#eeeeee'
                                        xfill True
                                    pass

                                $ is_special = is_br or is_change

                                $ is_nameless = not is_special and not hasattr(entry['who'], 'name')
                                if is_nameless:
                                    text __('protagonist_character_name') + ' - ' + __(entry['what']):
                                        size 18
                                        color nameless_text_color
                                        xfill True


                                $ is_npc = not is_special and hasattr(entry['who'], 'name') and entry['who'].name
                                if is_npc:
                                    $ color = entry['who'].who_args['color']
                                    $ speaker = entry['who'].name
                                    if speaker.startswith('get_') and speaker.endswith('()'):
                                        $ speaker = eval(speaker)
                                    $ speaker = __(speaker)
                                    text "{color=[color]}[speaker]{/color} - [entry['what']]":
                                        size 18
                                        color npc_text_color
                                        xfill True


                                $ is_nr = not is_special and not is_nameless and not is_npc
                                if is_nr:
                                    text entry['what']:
                                        size 18
                                        color nr_text_color
                                        xfill True


screen narrat_say(
    current_speaker,
    current_text,
    say_height,
    npc_text_color,
    nr_text_color
):
    frame:
        background None
        xfill True
        ysize say_height

        vbox:
            xfill True
            yfill True

            if current_speaker:
                $ speaker_is_function_string = current_speaker.name.startswith('get_') and current_speaker.name.endswith('()')
                if speaker_is_function_string:
                    $ speaker = eval(current_speaker.name)

                $ speaker_is_character = not speaker_is_function_string
                if speaker_is_character:
                    $ speaker = current_speaker.name
                $ speaker = __(speaker)

                $ color = current_speaker.who_args['color']

                $ is_npc = speaker is not None and speaker != ''
                if is_npc:
                    text "{color=[color]}[speaker]{/color} - [current_text]":
                        size 20
                        color npc_text_color
                        xfill True

                $ is_nr = not is_npc
                if is_nr:
                    text current_text:
                        size 20
                        color nr_text_color
                        xfill True


screen narrat_menu(menu_items, on_action, menu_height, choice_text_color, choice_text_hover_color):
    frame:
        background None
        ysize menu_height

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True

            vbox:
                spacing 0

                for i, item in enumerate(menu_items, 1):
                    $ caption = item[0] if len(item) > 0 else ""
                    $ action = item[1] if len(item) > 1 else None
                    $ chosen = item[2] if len(item) > 2 else False

                    button:
                        xfill True
                        padding (10, 5)

                        action [
                            Function(on_action, caption),
                            action
                        ]

                        text str(i) + '. ' + __(item.caption):
                            layout "tex"
                            xfill True
                            size 18
                            color choice_text_color
                            hover_color choice_text_hover_color
