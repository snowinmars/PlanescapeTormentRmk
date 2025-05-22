def default_settings():
    return {
        'key_picked_up_in_morgue': False,
        'in_party_morte': False,
        'ready_to_kill_in_morgue': False,
        'dummies_killed_in_morgue': 0,
        'good': 0,
        'good_morte': 0,
    }

settings = default_settings()

def current_settings():
    global settings
    return settings

def kick_morte():
    global settings
    settings['in_party_morte'] = False

def join_morte():
    global settings
    settings['in_party_morte'] = True

def change_good(amount):
    global settings
    settings['good'] = settings['good'] + amount

def change_good_morte(amount):
    global settings
    settings['good_morte'] = settings['good_morte'] + amount

def pick_up_key_in_morgue():
    global settings
    settings['key_picked_up_in_morgue'] = True

def ready_to_kill_in_morgue():
    global settings
    settings['ready_to_kill_in_morgue'] = True

def kill_dummy_in_mougue():
    global settings
    settings['dummies_killed_in_morgue'] = settings['dummies_killed_in_morgue'] + 1