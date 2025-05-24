from engine.journal_notes import (journal_notes)

def default_global_settings():
    return {
        'morte_in_party': False,
        'jorunal_allowed': False,
        'good': 0,
        'good_morte': 0,
        'location': None,
        'death_of_names': False,
        'xachariah_name': False,
        'meet_xixi': False,
        'meet_quentin': False,
        'meet_deionarra': False,
        'meet_dhall': False,
        'crier_quest': False,
        'death_of_names_quentin': False,
        'death_of_names_dhall': False,
        'death_of_names_adahn': False,
        'adahn': 0,
        'xixi_back': False,
        'dead_dhall': False,
        'dead_quentin': False
    }

global_settings = default_global_settings()

def current_global_settings():
    global global_settings
    return global_settings

def set_morte_in_party(value):
    global global_settings
    global_settings['morte_in_party'] = value

def change_good(amount):
    global global_settings
    global_settings['good'] = global_settings['good'] + amount

def change_good_morte(amount):
    global global_settings
    global_settings['good_morte'] = global_settings['good_morte'] + amount

def unblock_journal():
    global global_settings
    global_settings['jorunal_allowed'] = True

def update_journal(note_id):
    global global_settings
    global_settings['journal_notes'] = journal_notes[note_id]

def travel(value):
    global global_settings
    global_settings['location'] = value

def meet_death_of_names():
    global global_settings
    global_settings['death_of_names'] = True

def set_xachariah_name(value):
    global global_settings
    global_settings['xachariah_name'] = value

def meet_xixi():
    global global_settings
    global_settings['meet_xixi'] = True

def meet_quentin():
    global global_settings
    global_settings['meet_quentin'] = True

def meet_deionarra():
    global global_settings
    global_settings['meet_deionarra'] = True

def meet_dhall():
    global global_settings
    global_settings['meet_dhall'] = True

def increment_crier_quest():
    global global_settings
    global_settings['crier_quest'] = global_settings['crier_quest'] + 1

def pass_death_of_names_quentin():
    global global_settings
    global_settings['death_of_names_quentin'] = True

def pass_death_of_names_dhall():
    global global_settings
    global_settings['death_of_names_dhall'] = True

def pass_death_of_names_adahn():
    global global_settings
    global_settings['death_of_names_adahn'] = True

def kill_dhall():
    global global_settings
    global_settings['dead_dhall'] = True

def kill_quentin():
    global global_settings
    global_settings['dead_quentin'] = True

def increment_adahn():
    global global_settings
    global_settings['adahn'] = global_settings['adahn'] + 1

def increment_xixi():
    global global_settings
    global_settings['xixi_back'] = global_settings['xixi_back'] + 1
