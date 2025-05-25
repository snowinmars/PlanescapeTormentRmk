def default_morgue_settings():
    return {
        'has_intro_key': False,
        'has_tome_ba': False,
        'mortuary_walkthrough': 0,
        'morte_mortuary_walkthrough_1': False,
        'morte_mortuary_walkthrough_2': False,
        'alarmed': False,
        'vaxis_lawful': False,
        'vaxis_left': False,
        'vaxis_betrayed': False,
        'vaxis_betray': 0,
        'vaxis_exposed': False,
        'saw_dhall': False,
        'know_copper_earring_secret': False,
        'has_copper_earring': False,
        '506_thread': False,
        'has_scalpel': False,
        'has_needles': 0,
        'has_1201_note': False,
        'has_dzm1664_page': False,
        'dead_dzm569': False,
        'dead_dzm825': False,
        'dead_dzm782': False,
    }

morgue_settings = default_morgue_settings()

def current_morgue_settings():
    global morgue_settings
    return morgue_settings

def set_506_thread():
    global morgue_settings
    morgue_settings['506_thread'] = True

def pick_up_1201_note():
    global morgue_settings
    morgue_settings['has_1201_note'] = True

def pick_up_scalpel():
    global morgue_settings
    morgue_settings['has_scalpel'] = True

def pick_up_needle():
    global morgue_settings
    morgue_settings['has_needles'] = morgue_settings['has_needles'] + 1

def has_scalpel():
    global morgue_settings
    return morgue_settings['has_scalpel']

def expose_vaxis():
    global morgue_settings
    morgue_settings['expose_vaxis'] = True

def know_copper_earring_secret():
    global morgue_settings
    morgue_settings['know_copper_earring_secret'] = True

def pick_up_intro_key(value):
    global morgue_settings
    morgue_settings['has_intro_key'] = value

def mortuary_walkthrough(value):
    global morgue_settings
    morgue_settings['mortuary_walkthrough'] = value

def set_morte_mortuary_walkthrough(value):
    global morgue_settings
    morgue_settings['morte_mortuary_walkthrough'] = value

def saw_dhall():
    morgue_settings['saw_dhall'] = True

def set_vaxis_betray(value):
    global morgue_settings
    morgue_settings['vaxis_betray'] = value

def pick_tome_ba():
    global morgue_settings
    morgue_settings['has_tome_ba'] = True

def pick_dzm1664_page():
    global morgue_settings
    morgue_settings['has_dzm1664_page'] = True

def kill_dzm569():
    global morgue_settings
    morgue_settings['dead_dzm569'] = True

def kill_dzm825():
    global morgue_settings
    morgue_settings['dead_dzm825'] = True

def kill_dzm782():
    global morgue_settings
    morgue_settings['dead_dzm782'] = True
