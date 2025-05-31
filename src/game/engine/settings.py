import logging

devlog = logging.getLogger('log')

class SettingsManager:
    def __init__(self, event_manager):
        self.tracked = []
        self._registry = {
            'journal_note_ids': [],
            'location': None,
            'visited_locations': []
        }
        self.event_manager = event_manager

    def check_char_prop_gt(self, who, gtValue, prop):
        return True

    def check_char_prop_lt(self, who, gtValue, prop):
        return True

    def update_journal(self, note_id):
        devlog.debug('Update journal with %s', note_id)
        if note_id not in self._registry['journal_note_ids']:
            self._registry['journal_note_ids'].append(note_id)

    def set_location(self, location_id):
        line = f'set location_id = {location_id}'
        devlog.debug(line)
        self.event_manager.write_event(line)
        self._registry['location'] = location_id
        if not self.is_visited_location(location_id):
            line = f'remember {location_id} as visited'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self._registry['visited_locations'].append(location_id)

    def get_location(self):
        return self._registry['location']

    def is_visited_location(self, location_id):
        return location_id in self._registry['visited_locations']

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
                line = f'did not set {setting_id} to {value}: already in tracked with id {id}'
                devlog.debug(line)
                self.event_manager.write_event(line)
                return
            self._registry[setting_id] = value
            self.tracked.append(id)
            line = f'set {setting_id} to {value}: track with id {id}'
            devlog.debug(line)
            self.event_manager.write_event(line)
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
                line = f'did not inc {setting_id} to {self._registry[setting_id]} + 1: already in tracked with id {id}'
                devlog.debug(line)
                self.event_manager.write_event(line)
                return
            self._registry[setting_id] = self._registry[setting_id] + 1
            self.tracked.append(id)
            line = f'set {setting_id} to {self._registry[setting_id]} + 1: track with id {id}'
            devlog.debug(line)
            self.event_manager.write_event(line)
        def dec_once(id, value = 1):
            if id in self.tracked:
                line = f'did not dec {setting_id} to {self._registry[setting_id]} - 1: already in tracked with id {id}'
                devlog.debug(line)
                self.event_manager.write_event(line)
                return
            self._registry[setting_id] = self._registry[setting_id] - 1
            self.tracked.append(id)
            line = f'set {setting_id} to {self._registry[setting_id]} - 1: track with id {id}'
            devlog.debug(line)
            self.event_manager.write_event(line)
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
