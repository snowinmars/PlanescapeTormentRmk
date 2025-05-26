import logging

global global_settings

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
        'dead_morte': False,

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

        'know_xachariah_name': False,
        'crier_quest': False,
        'xixi_back': False,
        'escape_mortuary': False,
        'visited_ar0200': False,
        'asonje_state': 0
    }

global_settings = default_global_settings()
devlog = logging.getLogger('log')

def current_global_settings():
    return global_settings

def changed_good_once(id):
    return id in tracked

def changed_law_once(id):
    return id in tracked

###

def set_in_party_morte(value):
    devlog.debug('set_in_party_morte: %s', value)
    global_settings['in_party_morte'] = value

###

def meet_death_of_names():
    devlog.debug('meet_death_of_names')
    global_settings['death_of_names'] = True

def meet_crispy():
    devlog.debug('meet_crispy')
    global_settings['meet_crispy'] = True

def meet_bei():
    devlog.debug('meet_bei')
    global_settings['meet_bei'] = True

def meet_asonje():
    devlog.debug('meet_asonje')
    global_settings['meet_asonje'] = True

def meet_oinosian():
    devlog.debug('meet_oinosian')
    global_settings['meet_oinosian'] = True

def meet_xixi():
    devlog.debug('meet_xixi')
    global_settings['meet_xixi'] = True

def meet_quentin():
    devlog.debug('meet_quentin')
    global_settings['meet_quentin'] = True

def meet_deionarra():
    devlog.debug('meet_deionarra')
    global_settings['meet_deionarra'] = True

def meet_vaxis():
    devlog.debug('meet_vaxis')
    global_settings['meet_vaxis'] = True

def meet_pharod():
    devlog.debug('meet_pharod')
    global_settings['meet_pharod'] = True

def meet_dustmen():
    devlog.debug('meet_dustmen')
    global_settings['meet_dustmen'] = True

def meet_dhall():
    devlog.debug('meet_dhall')
    global_settings['meet_dhall'] = True

def meet_morte():
    devlog.debug('meet_morte')
    global_settings['meet_morte'] = True

###

def kill_dhall():
    devlog.debug('kill_dhall')
    global_settings['dead_dhall'] = True

def kill_morte():
    devlog.debug('kill_morte')
    global_settings['dead_morte'] = True
    global_settings['in_party_morte'] = True

def kill_vaxis():
    devlog.debug('kill_vaxis')
    global_settings['dead_vaxis'] = True

def kill_quentin():
    devlog.debug('kill_quentin')
    global_settings['dead_quentin'] = True

def kill_pharod():
    devlog.debug('kill_pharod')
    global_settings['dead_pharod'] = True

###

tracked = []

def change_good_once(amount, id):
    if id in tracked:
        devlog.debug('change_good_once - in tracked %s', id)
        return
    devlog.debug('change_good_once by %s + %s - wasnt in tracked %s', global_settings['good'], amount, id)
    global_settings['good'] = global_settings['good'] + amount
    tracked.append(id)

def change_law_once(amount, id):
    if id in tracked:
        devlog.debug('change_law_once - in tracked %s', id)
        return
    devlog.debug('change_law_once by %s + %s - wasnt in tracked %s', global_settings['law'], amount, id)
    global_settings['law'] = global_settings['law'] + amount
    tracked.append(id)

def change_adahn_once(amount, id):
    if id in tracked:
        devlog.debug('change_adahn_once - in tracked %s', id)
        return
    devlog.debug('change_adahn_once by %s + %s - wasnt in tracked %s', global_settings['adahn'], amount, id)
    global_settings['adahn'] = global_settings['adahn'] + amount
    tracked.append(id)

###

def unblock_journal():
    devlog.debug('unblock_journal')
    global_settings['jorunal_allowed'] = True

def update_journal(note_id):
    devlog.debug('update_journal %s', note_id)
    global_settings['journal_note_ids'].append(note_id)

def travel(value):
    devlog.debug('travel to %s', value)
    global_settings['location'] = value

###

def set_crier_quest(value):
    devlog.debug('set_crier_quest: %s', value)
    global_settings['crier_quest'] = value

def pass_death_of_names_quentin():
    devlog.debug('pass_death_of_names_quentin')
    global_settings['death_of_names_quentin'] = True

def pass_death_of_names_dhall():
    devlog.debug('pass_death_of_names_dhall')
    global_settings['death_of_names_dhall'] = True

def pass_death_of_names_adahn():
    devlog.debug('pass_death_of_names_adahn')
    global_settings['death_of_names_adahn'] = True

def set_asonje_state(value):
    devlog.debug('set_asonje_state: %s', value)
    global_settings['asonje_state'] = value