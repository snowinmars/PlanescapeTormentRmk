def default_morgue_settings():
    return {
        'key_picked_up': False,
        'ready_to_kill': False,
        'talk_dummy': False,
        'saw_dhall': False,
        'mortuary_walkthrough': 0,
        'morte_mortuary_walkthrough': 0,
        'dummies_killed': 0
    }

morgue_settings = default_morgue_settings()

def current_morgue_settings():
    global morgue_settings
    return morgue_settings

def pick_up_key(value):
    global morgue_settings
    morgue_settings['key_picked_up'] = value

def ready_to_kill(value):
    global morgue_settings
    morgue_settings['ready_to_kill'] = value

def kill_dummy():
    global morgue_settings
    morgue_settings['dummies_killed'] = morgue_settings['dummies_killed'] + 1

def talk_dummy():
    global morgue_settings
    morgue_settings['talk_dummy'] = True

def mortuary_walkthrough(value):
    global morgue_settings
    morgue_settings['mortuary_walkthrough'] = value

def morte_mortuary_walkthrough(value):
    global morgue_settings
    morgue_settings['morte_mortuary_walkthrough'] = value

def saw_dhall():
    morgue_settings['saw_dhall'] = True
