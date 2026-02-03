translate russian strings:

    # game/screens/narrat.rpy:30
    old 'screen_narrat_world_manager_nameless_text'
    new '{{color={who_color}}}{who}{{/color}} - {what}' # who_color who what

    # game/screens/narrat.rpy:44
    old 'screen_narrat_world_manager_npc_text'
    new '{{color={who_color}}}{who}{{/color}} - {what}' # who_color who what

    # game/screens/narrat.rpy:74
    old 'screen_narrat_character_manager_modify_property'
    new '{name}: {prop} {amount:+}.' # name prop amount actual_value

    # game/screens/narrat.rpy:81
    old 'screen_narrat_character_manager_modify_property_once'
    new '{name}: {prop} {amount:+}.' # name prop amount actual_value

    # game/screens/narrat.rpy:88
    old 'screen_narrat_character_manager_set_property'
    new '{name}: {prop} = {actual_value}.' # name prop actual_value

    # game/screens/narrat.rpy:94
    old 'screen_narrat_journal_notes_manager_update_journal'
    new 'Дневник обновлён.' # note_id

    # game/screens/narrat.rpy:98
    old 'screen_narrat_new_internal_location_discovered'
    new 'Открыта новая локация.' # internal_location_id external_location_id

    # game/screens/narrat.rpy:103
    old 'screen_narrat_locations_manager_set_location_external_unvisited'
    new 'Открыта новая локация.' # external_location_id

    # game/screens/narrat.rpy:107
    old 'screen_narrat_locations_manager_set_location_internal_unvisited'
    new 'Открыта новая локация.' # internal_location_id

    # game/screens/narrat.rpy:111
    old 'screen_narrat_quest_manager_set_entry_active'
    new 'Начато задание.' # quest_id quest_state_id

    # game/screens/narrat.rpy:116
    old 'screen_narrat_quest_manager_set_entry_done'
    new 'Задание выполнено.' # quest_id quest_state_id

    # game/screens/narrat.rpy:121
    old 'screen_narrat_world_manager_setter'
    new '{setting_id} = {value}' # setting_id value

    # game/screens/narrat.rpy:126
    old 'screen_narrat_world_manager_inc'
    new '{setting_id} {delta:+}' # setting_id before delta after

    # game/screens/narrat.rpy:133
    old 'screen_narrat_world_manager_dec'
    new '{setting_id} {delta:+}' # setting_id before delta after

    # game/screens/narrat.rpy:140
    old 'screen_narrat_world_manager_inc_once'
    new '{setting_id} {delta:+}' # setting_id before delta after

    # game/screens/narrat.rpy:147
    old 'screen_narrat_world_manager_dec_once'
    new '{setting_id} {delta:+}' # setting_id before delta after

    # game/screens/narrat.rpy:170
    old 'strength'
    new 'сила'

    # game/screens/narrat.rpy:171
    old 'dexterity'
    new 'ловкость'

    # game/screens/narrat.rpy:172
    old 'intelligence'
    new 'интеллект'

    # game/screens/narrat.rpy:173
    old 'constitution'
    new 'телосложение'

    # game/screens/narrat.rpy:174
    old 'wisdom'
    new 'мудрость'

    # game/screens/narrat.rpy:175
    old 'charisma'
    new 'харизма'

    # game/screens/narrat.rpy:176
    old 'good'
    new 'доброта'

    # game/screens/narrat.rpy:177
    old 'law'
    new 'законопослушность'

    # game/screens/narrat.rpy:178
    old 'lore'
    new 'осведомлённость'

    # game/screens/narrat.rpy:179
    old 'experience'
    new 'опыт'

    # game/screens/narrat.rpy:180
    old 'ac'
    new 'кб'

