import logging

global morgue_settings

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
        'has_506_thread': False,
        'has_scalpel': False,
        'has_needles': 0,
        'has_1201_note': False,
        'has_dzm1664_page': False,
        'has_bandages': False,
        'dead_dzm569': False,
        'dead_dzm825': False,
        'dead_dzm782': False,
    }
morgue_settings = default_morgue_settings()
devlog = logging.getLogger('log')

def current_morgue_settings():
    return morgue_settings

def has_scalpel():
    return morgue_settings['has_scalpel']

def pick_up_506_thread():
    devlog.debug('pick_up_506_thread')
    morgue_settings['has_506_thread'] = True

def pick_up_bandages():
    devlog.debug('pick_up_bandages')
    morgue_settings['has_bandages'] = True

def pick_up_1201_note():
    devlog.debug('pick_up_1201_note')
    morgue_settings['has_1201_note'] = True

def pick_up_scalpel():
    devlog.debug('pick_up_scalpel')
    morgue_settings['has_scalpel'] = True

def pick_up_needle():
    devlog.debug('pick_up_needle: %s + 1', morgue_settings['has_needles'])
    morgue_settings['has_needles'] = morgue_settings['has_needles'] + 1

def expose_vaxis():
    devlog.debug('expose_vaxis')
    morgue_settings['expose_vaxis'] = True

def know_copper_earring_secret():
    devlog.debug('know_copper_earring_secret')
    morgue_settings['know_copper_earring_secret'] = True

def pick_up_intro_key(value):
    devlog.debug('pick_up_intro_key: %s', value)
    morgue_settings['has_intro_key'] = value

def mortuary_walkthrough(value):
    devlog.debug('mortuary_walkthrough: %s', value)
    morgue_settings['mortuary_walkthrough'] = value

def set_morte_mortuary_walkthrough(value):
    devlog.debug('set_morte_mortuary_walkthrough: %s', value)
    morgue_settings['morte_mortuary_walkthrough'] = value

def saw_dhall():
    devlog.debug('saw_dhall')
    morgue_settings['saw_dhall'] = True

def set_vaxis_betray(value):
    devlog.debug('set_vaxis_betray: %s', value)
    morgue_settings['vaxis_betray'] = value

def pick_tome_ba():
    devlog.debug('pick_tome_ba')
    morgue_settings['has_tome_ba'] = True

def pick_dzm1664_page():
    devlog.debug('pick_dzm1664_page')
    morgue_settings['has_dzm1664_page'] = True

def kill_dzm569():
    devlog.debug('kill_dzm569')
    morgue_settings['dead_dzm569'] = True

def kill_dzm825():
    devlog.debug('kill_dzm825')
    morgue_settings['dead_dzm825'] = True

def kill_dzm782():
    devlog.debug('kill_dzm782')
    morgue_settings['dead_dzm782'] = True
