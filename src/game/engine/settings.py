devlog = logging.getLogger('log')

class SettingsManager:
    def __init__(self):
        self._settings = {}
        self._tracked = []
        self._settings['journal_note_ids'] = []

    def update_journal(note_id):
        devlog.debug('Update journal with %s', note_id)
        if node_id not in self._settings['journal_note_ids']:
            self._settings['journal_note_ids'].append(note_id)

    def register(self, setting_id, default_value):
        self._settings[setting_id] = default_value

        def getter():
            return self._settings[setting_id]
        def setter(value):
            devlog.debug('set %s = %s', setting_id, value)
            self._settings[setting_id] = value
        def setter_once(value, id):
            if id in self._tracked:
                devlog.debug('did not set %s to %s: already in tracked with id %s', setting_id, value, id)
                return
            devlog.debug('set %s to %s: track with id %s', setting_id, value, id)
            self._settings[setting_id] = value
            self._tracked.append(id)
        def inc():
            devlog.debug('inc %s = %s + 1', setting_id, self._settings[setting_id])
            self._settings[setting_id] = self._settings[setting_id] + 1
        def dec():
            devlog.debug('inc %s = %s - 1', setting_id, self._settings[setting_id])
            self._settings[setting_id] = self._settings[setting_id] - 1
        def inc_once(id):
            if id in self._tracked:
                devlog.debug('did not inc %s to %s + 1: already in tracked with id %s', setting_id, self._settings[setting_id], id)
                return
            devlog.debug('set %s to %s + 1: track with id %s', setting_id, self._settings[setting_id], id)
            self._settings[setting_id] = self._settings[setting_id] + 1
            self._tracked.append(id)
        def dec_once(id):
            if id in self._tracked:
                devlog.debug('did not dec %s to %s - 1: already in tracked with id %s', setting_id, self._settings[setting_id], id)
                return
            devlog.debug('set %s to %s - 1: track with id %s', setting_id, self._settings[setting_id], id)
            self._settings[setting_id] = self._settings[setting_id] - 1
            self._tracked.append(id)
        def once_tracker(id):
            return in in self._tracked

        setattr(self, f'get_{setting_id}', getter)
        setattr(self, f'set_{setting_id}', setter)
        setattr(self, f'set_once_{setting_id}', setter_once)
        setattr(self, f'inc_{setting_id}', inc)
        setattr(self, f'dec_{setting_id}', dec)
        setattr(self, f'inc_once_{setting_id}', inc_once)
        setattr(self, f'dec_once_{setting_id}', dec_once)
        setattr(self, f'once_tracked', once_tracker)

        return self
