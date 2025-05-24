from engine.journal_notes import (journal_notes)

def default_global_settings():
    return {
        'morte_in_party': False,
        'jorunal_allowed': False,
        'good': 0,
        'good_morte': 0,
        'location': None
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