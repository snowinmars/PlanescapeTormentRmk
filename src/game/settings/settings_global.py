def default_global_settings():
    return {
        'in_party_morte': False,

        'meet_xixi': False,
        'meet_quentin': False,
        'meet_deionarra': False,
        'meet_vaxis': False,
        'meet_pharod': False,
        'meet_dustmen': False,
        'meet_dhall': False,
        'meet_morte': False,
        'meet_oinosian': False,
        'meet_bei': False,
        'meet_asonje': False,
        'meet_crispy': False,
        'adahn': 0,

        'dead_dhall': False,
        'dead_quentin': False,
        'dead_vaxis': False,
        'dead_pharod': False,

        'good': 0,
        'law': 0,
        'good_morte': 0,
        'evil_dhall_1': False,
        'evil_dhall_2': False,
        'evil_dhall_3': False,
        'good_dhall_1': False,
        'good_dhall_2': False,

        'jorunal_allowed': False,
        'journal_note_ids': [],
        'can_speak_with_dead': False,

        'death_of_names': False,
        'death_of_names_quentin': False,
        'death_of_names_dhall': False,
        'death_of_names_adahn': False,

        'location': None,

        'know_know_xachariah_name': False,
        'crier_quest': False,
        'xixi_back': False,
        'escape_mortuary': False,
        'visited_ar0200': False,
        'asonje_state': 0
    }

global_settings = default_global_settings()

def current_global_settings():
    global global_settings
    return global_settings

###

def set_in_party_morte(value):
    global global_settings
    global_settings['in_party_morte'] = value

###

def meet_death_of_names():
    global global_settings
    global_settings['death_of_names'] = True

def meet_crispy():
    global global_settings
    global_settings['meet_crispy'] = True

def meet_bei():
    global global_settings
    global_settings['meet_bei'] = True

def meet_asonje():
    global global_settings
    global_settings['meet_asonje'] = True

def meet_oinosian():
    global global_settings
    global_settings['meet_oinosian'] = True

def meet_xixi():
    global global_settings
    global_settings['meet_xixi'] = True

def meet_quentin():
    global global_settings
    global_settings['meet_quentin'] = True

def meet_deionarra():
    global global_settings
    global_settings['meet_deionarra'] = True

def meet_vaxis():
    global global_settings
    global_settings['meet_vaxis'] = True

def meet_pharod():
    global global_settings
    global_settings['meet_pharod'] = True

def meet_dustmen():
    global global_settings
    global_settings['meet_dustmen'] = True

def meet_dhall():
    global global_settings
    global_settings['meet_dhall'] = True

def meet_morte():
    global global_settings
    global_settings['meet_morte'] = True

def change_adan_once(amount, id):
    if id in tracked:
        return
    global global_settings
    global_settings['good'] = global_settings['good'] + amount
    tracked.append(id)

###

def kill_dhall():
    global global_settings
    global_settings['dead_dhall'] = True

def kill_morte():
    global global_settings
    global_settings['dead_morte'] = True

def kill_vaxis():
    global global_settings
    global_settings['dead_vaxis'] = True

def kill_quentin():
    global global_settings
    global_settings['dead_quentin'] = True

def kill_pharod():
    global global_settings
    global_settings['dead_pharod'] = True

###

tracked = []

def change_good(amount):
    global global_settings
    global_settings['good'] = global_settings['good'] + amount

def change_good_once(amount, id):
    if id in tracked:
        return
    global global_settings
    global_settings['good'] = global_settings['good'] + amount
    tracked.append(id)

def changed_good_once(id):
    return id in tracked

def change_law(amount):
    global global_settings
    global_settings['law'] = global_settings['law'] + amount

def change_law_once(amount, id):
    if id in tracked:
        return
    global global_settings
    global_settings['law'] = global_settings['law'] + amount
    tracked.append(id)

def changed_law_once(id):
    return id in tracked

def change_good_morte(amount):
    global global_settings
    global_settings['good_morte'] = global_settings['good_morte'] + amount

###

def unblock_journal():
    global global_settings
    global_settings['jorunal_allowed'] = True

def update_journal(note_id):
    global global_settings
    global_settings['journal_note_ids'].append(note_id)

def travel(value):
    global global_settings
    global_settings['location'] = value

###

def set_know_xachariah_name(value):
    global global_settings
    global_settings['know_xachariah_name'] = value

def set_crier_quest(value):
    global global_settings
    global_settings['crier_quest'] = value

def pass_death_of_names_quentin():
    global global_settings
    global_settings['death_of_names_quentin'] = True

def pass_death_of_names_dhall():
    global global_settings
    global_settings['death_of_names_dhall'] = True

def pass_death_of_names_adahn():
    global global_settings
    global_settings['death_of_names_adahn'] = True

def increment_xixi_back():
    global global_settings
    global_settings['xixi_back'] = global_settings['xixi_back'] + 1

def set_asonje_state(value):
    global global_settings
    global_settings['asonje_state'] = value