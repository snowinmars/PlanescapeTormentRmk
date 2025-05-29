import logging

devlog = logging.getLogger('log')

class SettingsManager:
    def __init__(self, event_manager):
        self.tracked = []
        self._registry = {'journal_note_ids': []}
        self.event_manager = event_manager

    def check_char_prop_gt(self, who, gtValue, prop):
        return True

    def check_char_prop_lt(self, who, gtValue, prop):
        return True

    def update_journal(self, note_id):
        devlog.debug('Update journal with %s', note_id)
        if note_id not in self._registry['journal_note_ids']:
            self._registry['journal_note_ids'].append(note_id)

    def register(self, setting_id, default_value):
        self._registry[setting_id] = default_value

        def getter():
            return self._registry[setting_id]
        def setter(value):
            line = f'set {setting_id} = {value}'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self._registry[setting_id] = value
        def setter_once(id, value):
            if id in self.tracked:
                devlog.debug('did not set %s to %s: already in tracked with id %s', setting_id, value, id)
                return
            devlog.debug('set %s to %s: track with id %s', setting_id, value, id)
            self._registry[setting_id] = value
            self.tracked.append(id)
        def inc(value = 1):
            line = f'inc {setting_id} = {self._registry[setting_id]} + 1'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self._registry[setting_id] = self._registry[setting_id] + 1
        def dec(value = 1):
            line = f'inc {setting_id} = {self._registry[setting_id]} - 1'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self._registry[setting_id] = self._registry[setting_id] - 1
        def inc_once(id, value = 1):
            if id in self.tracked:
                devlog.debug('did not inc %s to %s + 1: already in tracked with id %s', setting_id, self._registry[setting_id], id)
                return
            devlog.debug('set %s to %s + 1: track with id %s', setting_id, self._registry[setting_id], id)
            self._registry[setting_id] = self._registry[setting_id] + 1
            self.tracked.append(id)
        def dec_once(id, value = 1):
            if id in self.tracked:
                devlog.debug('did not dec %s to %s - 1: already in tracked with id %s', setting_id, self._registry[setting_id], id)
                return
            devlog.debug('set %s to %s - 1: track with id %s', setting_id, self._registry[setting_id], id)
            self._registry[setting_id] = self._registry[setting_id] - 1
            self.tracked.append(id)
        def once_tracker(id):
            return id in self.tracked

        setattr(self, f'get_{setting_id}', getter)
        setattr(self, f'set_{setting_id}', setter)
        setattr(self, f'set_once_{setting_id}', setter_once)
        setattr(self, f'inc_{setting_id}', inc)
        setattr(self, f'dec_{setting_id}', dec)
        setattr(self, f'inc_once_{setting_id}', inc_once)
        setattr(self, f'dec_once_{setting_id}', dec_once)
        setattr(self, f'once_tracked', once_tracker)

        return self
