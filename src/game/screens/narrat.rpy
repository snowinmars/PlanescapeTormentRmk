init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.NarratLogic import (NarratLogic)
    narratLogic = NarratLogic(runtime.global_state_manager)

    screen_narrat_history_yadjustment = ui.adjustment()
    screen_narrat_say_yadjustment     = ui.adjustment()
    screen_narrat_menu_yadjustment    = ui.adjustment()

    # The point is that render_narrat_entry function recretes elements each frame (!),
    # but get_cached_narrat_entry stores the elements in cache, so it can be accessed easily.
    # The difference is visible on mobile devices - just switch from get_cached_narrat_entry to render_narrat_entry to see how it lags
    MAX_NARRAT_CACHE_LENGTH = 100
    narrat_entry_cache = {}
    def get_cached_narrat_entry(entry):
        entry_id = entry.get('id')
        if entry_id in narrat_entry_cache:
            return narrat_entry_cache[entry_id]
        if len(narrat_entry_cache) > MAX_NARRAT_CACHE_LENGTH: # TODO [snow]: maybe just clear?
            tail = int(2 * MAX_NARRAT_CACHE_LENGTH / 3)
            for key in list(narrat_entry_cache.keys())[:tail]:
                del narrat_entry_cache[key]
        item = render_narrat_entry(entry)
        narrat_entry_cache[entry_id] = item
        return item


    def render_narrat_entry(entry):
        if entry['is_nameless']:
            return Text(
                __('screen_narrat_world_manager_nameless_text').format(
                    who_color=entry['who_color'],
                    who=__('protagonist_character_name'),
                    what=__(entry['what'])
                ),
                style='screen_narrat_style_history_text',
                color=color_narrator
            )

        if entry['is_npc']:
            speaker = entry['who'].name
            if speaker.startswith('get_') and speaker.endswith('()'):
                speaker = eval(speaker)
            return Text(
                __('screen_narrat_world_manager_npc_text').format(
                    who_color=entry['who_color'],
                    who=__(speaker),
                    what=__(entry['what'])
                ),
                style='screen_narrat_style_history_text',
                color=color_npc
            )

        if entry['is_nr']:
            return Text(
                entry['what'],
                style='screen_narrat_style_history_text',
                color=color_narrator
            )

        if entry['is_br']:
            return Text(
                '----------------',
                style='screen_narrat_style_br_text',
                color=entry['who_color']
            )

        if entry['is_change']:
            change_id     = entry['who']
            change_kwargs = entry['what']
            change_text   = 'BUG narrat_change_oor: send screenshot to snowinmars@yandex.ru ' + change_id

            if change_id == 'character_manager_modify_property':
                change_text =  __('screen_narrat_character_manager_modify_property').format(
                    name=__(change_kwargs['name']),
                    prop=__(change_kwargs['prop']),
                    amount=change_kwargs['amount'],
                    actual_value=change_kwargs['actual_value']
                )
            if change_id == 'character_manager_modify_property_once':
                change_text = __('screen_narrat_character_manager_modify_property_once').format(
                    name=__(change_kwargs['name']),
                    prop=__(change_kwargs['prop']),
                    amount=change_kwargs['amount'],
                    actual_value=change_kwargs['actual_value']
                )
            if change_id == 'character_manager_set_property':
                change_text = __('screen_narrat_character_manager_set_property').format(
                    name=__(change_kwargs['name']),
                    prop=__(change_kwargs['prop']),
                    actual_value=change_kwargs['actual_value']
                )
            if change_id == 'journal_notes_manager_update_journal':
                change_text = __('screen_narrat_journal_notes_manager_update_journal').format(
                    note_id=__(change_kwargs['note_id'])
                )
            if change_id == 'new_internal_location_discovered':
                change_text = __('screen_narrat_new_internal_location_discovered').format(
                    internal_location_id=__(change_kwargs['internal_location_id']),
                    external_location_id=__(change_kwargs['external_location_id'])
                )
            if change_id == 'locations_manager_set_location_external_unvisited':
                change_text = __('screen_narrat_locations_manager_set_location_external_unvisited').format(
                    external_location_id=__(change_kwargs['external_location_id'])
                )
            if change_id == 'locations_manager_set_location_internal_unvisited':
                change_text = __('screen_narrat_locations_manager_set_location_internal_unvisited').format(
                    internal_location_id=__(change_kwargs['internal_location_id'])
                )
            if change_id == 'quest_manager_set_entry_active':
                change_text = __('screen_narrat_quest_manager_set_entry_active').format(
                    quest_id=change_kwargs['quest_id'],
                    quest_state_id=change_kwargs['quest_state_id']
                )
            if change_id == 'quest_manager_set_entry_done':
                change_text = __('screen_narrat_quest_manager_set_entry_done').format(
                    quest_id=change_kwargs['quest_id'],
                    quest_state_id=change_kwargs['quest_state_id']
                )
            if change_id == 'world_manager_setter':
                change_text = __('screen_narrat_world_manager_setter').format(
                    setting_id=__(change_kwargs['setting_id']),
                    value=str(change_kwargs['value'])
                )
            if change_id == 'world_manager_inc':
                change_text = __('screen_narrat_world_manager_inc').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            if change_id == 'world_manager_dec':
                change_text = __('screen_narrat_world_manager_dec').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            if change_id == 'world_manager_inc_once':
                change_text = __('screen_narrat_world_manager_inc_once').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            if change_id == 'world_manager_dec_once':
                change_text = __('screen_narrat_world_manager_dec_once').format(
                    setting_id=__(change_kwargs['setting_id']),
                    before=change_kwargs['before'],
                    delta=change_kwargs['delta'],
                    after=change_kwargs['after']
                )
            return Text(
                '    ' + change_text,
                style='screen_narrat_style_history_text',
                color=entry['who_color']
            )

        if entry['is_scars']:
            return Text(
                entry['what'],
                style='screen_narrat_style_scars_text',
                color=entry['who_color']
            )

        return Text('BUG narrat_history_oor: send screenshot to snowinmars@yandex.ru')


label never_screen_narrat:
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


define screen_narrat_width = 600
define screen_narrat_height = 1080
define screen_narrat_history_height = int(screen_narrat_height * 0.6)
define screen_narrat_say_height = int(screen_narrat_height * 0.10)
define screen_narrat_menu_height = int(screen_narrat_height * 0.28)


screen screen_narrat():
    zorder 100

    on 'hide' action Function(narratLogic.exit_dialogue)

    modal False # Do not set to True: if it is True, it cannot capture input events like mouse clicks, keyboard press, etc.

    default screen_narrat_cached_history = []
    default screen_narrat_cached_last_history_id = None
    default screen_narrat_cached_current_line = ''
    default screen_narrat_cached_current_line_id = None
    default screen_narrat_cached_menu_items = []
    default screen_narrat_cached_last_menu_items_id = None

    if narratLogic.get_last_history_id() != screen_narrat_cached_last_history_id:
        $ screen_narrat_cached_history = narratLogic.actual_history()
        $ screen_narrat_cached_last_history_id = narratLogic.get_last_history_id()
        $ screen_narrat_history_yadjustment.value = infinite_float_value
        $ screen_narrat_say_yadjustment.value = infinite_float_value
        $ screen_narrat_menu_yadjustment.value = infinite_float_value

    $ actual_current_line = narratLogic.get_current_line()
    if actual_current_line and actual_current_line['id'] != screen_narrat_cached_current_line_id:
        $ screen_narrat_cached_current_line = actual_current_line
        $ screen_narrat_cached_current_line_id = actual_current_line['id']

    if narratLogic.get_last_menu_items_id() != screen_narrat_cached_last_menu_items_id:
        $ screen_narrat_cached_menu_items = list(enumerate(narratLogic.get_current_menu_items(), 1))
        $ screen_narrat_cached_last_menu_items_id = narratLogic.get_last_menu_items_id()


    frame:
        xfill True
        yfill True
        xsize screen_narrat_width
        align (1.0, 0.0)
        background 'gui_diabg_his'
        padding (20, 40)

        vbox:
            xfill True
            yfill True
            spacing 5

            # <narrat_history>
            viewport:
                ysize screen_narrat_history_height
                yadjustment screen_narrat_history_yadjustment
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

                    for entry in screen_narrat_cached_history:
                        add get_cached_narrat_entry(entry)
            # </narrat_history>


            # <narrat_say>
            viewport:
                ysize screen_narrat_say_height
                yadjustment screen_narrat_say_yadjustment
                mousewheel True
                draggable True
                scrollbars 'vertical'
                vscrollbar_unscrollable 'hide'
                yinitial 0.0

                if screen_narrat_cached_current_line:
                    add get_cached_narrat_entry(screen_narrat_cached_current_line)
            # </narrat_say>


            # <narrat_menu>
            viewport:
                ysize screen_narrat_menu_height
                yadjustment screen_narrat_menu_yadjustment
                mousewheel True
                draggable True
                scrollbars 'vertical'
                vscrollbar_unscrollable 'hide'
                yinitial 0.0

                vbox:
                    spacing 0

                    for i, item in screen_narrat_cached_menu_items:
                        $ caption, action, enabled = item

                        button:
                            xfill True
                            padding (10, 5)
                            sensitive enabled

                            action [
                                Function(narratLogic.add_menu_choice, caption),
                                action
                            ]

                            text str(i) + '. ' + __(caption):
                                style 'screen_narrat_style_history_text'
                                layout 'tex'
                                if enabled:
                                    color color_nameless_one
                                    hover_color color_white
                                else:
                                    color color_nameless_one_insensitive
            # </narrat_menu>


style screen_narrat_style_br_text:
    size 12
    color color_br
style screen_narrat_style_history_text:
    size 18
style screen_narrat_style_scars_text is screen_narrat_style_history_text:
    font font_exocet
