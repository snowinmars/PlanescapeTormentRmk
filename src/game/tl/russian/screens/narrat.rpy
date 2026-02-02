# TODO: Translation updated at 2026-02-02 21:02

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
    old "world_manager_setter"
    new "{setting_id} = {value}" # setting_id value

    # game/screens/narrat.rpy:67
    old "world_manager_inc"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:74
    old "world_manager_dec"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:81
    old "world_manager_inc_once"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:88
    old "world_manager_dec_once"
    new "{setting_id} {delta:+}" # setting_id before delta after

    # game/screens/narrat.rpy:109
    old "world_manager_nameless_text"
    new '{{color={who_color}}}{who}{{/color}} - {what}' # who_color who what

    # game/screens/narrat.rpy:123
    old "world_manager_npc_text"
    new '{{color={who_color}}}{who}{{/color}} - {what}' # who_color who what

    # game/screens/narrat.rpy:144
    old "strength"
    new "сила"

    # game/screens/narrat.rpy:145
    old "dexterity"
    new "ловкость"

    # game/screens/narrat.rpy:146
    old "intelligence"
    new "интеллект"

    # game/screens/narrat.rpy:147
    old "constitution"
    new "телосложение"

    # game/screens/narrat.rpy:148
    old "wisdom"
    new "мудрость"

    # game/screens/narrat.rpy:149
    old "charisma"
    new "харизма"

    # game/screens/narrat.rpy:150
    old "good"
    new "добрый"

    # game/screens/narrat.rpy:151
    old "law"
    new "законопослушный"

    # game/screens/narrat.rpy:152
    old "lore"
    new "осведомлённость"

    # game/screens/narrat.rpy:153
    old "experience"
    new "опыт"

    # game/screens/narrat.rpy:154
    old "ac"
    new "кб"

