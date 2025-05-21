def default_settings():
    return {
        'morgue_key_picked_up': False,
        'in_party_morte': False,
        'good': 0,
        'good_morte': 0,
    }

settings = default_settings()

def current_settings():
    global settings
    return settings

def pick_morgue_key():
    global settings
    settings['morgue_key_picked_up'] = True

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