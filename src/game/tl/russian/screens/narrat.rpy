translate russian strings:

    # game/screens/narrat.rpy:25
    old "character_manager_modify_property"
    new "{name}: {prop} {amount:+}." # name prop amount actual_value

    # game/screens/narrat.rpy:32
    old "character_manager_modify_property_once"
    new "{name}: {prop} {amount:+}." # name prop amount actual_value

    # game/screens/narrat.rpy:39
    old "character_manager_set_property"
    new "{name}: {prop} = {actual_value}." # name prop actual_value

    # game/screens/narrat.rpy:45
    old "journal_notes_manager_update_journal"
    new "Обновил мой дневник." # note_id

    # game/screens/narrat.rpy:49
    old "new_internal_location_discovered"
    new "Открыта новая локация." # internal_location_id external_location_id

    # game/screens/narrat.rpy:54
    old "locations_manager_set_location_external_unvisited"
    new "Открыта новая локация." # external_location_id

    # game/screens/narrat.rpy:58
    old "locations_manager_set_location_internal_unvisited"
    new "Открыта новая локация." # internal_location_id

    # game/screens/narrat.rpy:62
    old "quest_manager_set_entry_active"
    new "Начато задание." # quest_id quest_state_id

    # game/screens/narrat.rpy:67
    old "quest_manager_set_entry_done"
    new "Зажание выполнено." # quest_id quest_state_id

    # game/screens/narrat.rpy:72
    old "world_manager_setter"
    new "{setting_id} = {value}" # setting_id value

    # game/screens/narrat.rpy:77
    old "world_manager_inc"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:84
    old "world_manager_dec"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:91
    old "world_manager_inc_once"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:98
    old "world_manager_dec_once"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:119
    old "world_manager_nameless_text"
    new '{{color={who_color}}}{who}{{/color}} - {what}' # who_color who what

    # game/screens/narrat.rpy:133
    old "world_manager_npc_text"
    new '{{color={who_color}}}{who}{{/color}} - {what}' # who_color who what

    # game/screens/narrat.rpy:154
    old "strength"
    new "сила"

    # game/screens/narrat.rpy:155
    old "dexterity"
    new "ловкость"

    # game/screens/narrat.rpy:156
    old "intelligence"
    new "интеллект"

    # game/screens/narrat.rpy:157
    old "constitution"
    new "телосложение"

    # game/screens/narrat.rpy:158
    old "wisdom"
    new "мудрость"

    # game/screens/narrat.rpy:159
    old "charisma"
    new "харизма"

    # game/screens/narrat.rpy:160
    old "good"
    new "добрый"

    # game/screens/narrat.rpy:161
    old "law"
    new "законопослушный"

    # game/screens/narrat.rpy:162
    old "lore"
    new "осведомлённость"

    # game/screens/narrat.rpy:163
    old "experience"
    new "опыт"

    # game/screens/narrat.rpy:164
    old "ac"
    new "кб"

