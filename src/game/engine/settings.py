import logging

devlog = logging.getLogger('log')


class SettingsManager:
    def __init__(self, event_manager, character_manager, location_manager):
        self.tracked = []
        self._registry = {
            'journal_note_ids': [],
            'visited_locations': []
        }
        self.event_manager = event_manager
        self.gcm = character_manager
        self.glm = location_manager

    def update_journal(self, note_id):
        devlog.debug('Update journal with %s', note_id)
        if note_id not in self._registry['journal_note_ids']:
            self._registry['journal_note_ids'].append(note_id)

    def has_journal_note(self, note_id):
        return note_id in self._registry['journal_note_ids']

    def get_setting_value(self, setting_id):
        return self._registry[setting_id]

    def inc_exp_custom(self, who, amount):
        if who == 'party':
            self.gcm.modify_property('protagonist', 'experience', amount)

            if self.get_in_party_morte():
                self.gcm.modify_property('morte', 'experience', amount)
        else:
            self.gcm.modify_property(who, 'experience', amount)

    def dec_exp_custom(self, who, amount):
        if who == 'party':
            self.gcm.modify_property('protagonist', 'experience', -amount)

            if self.get_in_party_morte():
                self.gcm.modify_property('morte', 'experience', -amount)
        else:
            self.gcm.modify_property(who, 'experience', -amount)


    def full_heal(self, who):
        props = self.gcm.get_all_properties(who)
        self.gcm.set_property(who, 'current_health', props['maxHealth'])


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
            line = f'inc {setting_id} = {self._registry[setting_id]} + {value}'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self._registry[setting_id] = self._registry[setting_id] + value
        def dec(value = 1):
            line = f'inc {setting_id} = {self._registry[setting_id]} - {value}'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self._registry[setting_id] = self._registry[setting_id] - value
        def inc_once(id, value = 1):
            if id in self.tracked:
                line = f'did not inc {setting_id} to {self._registry[setting_id]} + {value}: already in tracked with id {id}'
                devlog.debug(line)
                self.event_manager.write_event(line)
                return
            self._registry[setting_id] = self._registry[setting_id] +value
            self.tracked.append(id)
            line = f'set {setting_id} to {self._registry[setting_id]} + {value}: track with id {id}'
            devlog.debug(line)
            self.event_manager.write_event(line)
        def dec_once(id, value = 1):
            if id in self.tracked:
                line = f'did not dec {setting_id} to {self._registry[setting_id]} - {value}: already in tracked with id {id}'
                devlog.debug(line)
                self.event_manager.write_event(line)
                return
            self._registry[setting_id] = self._registry[setting_id] - value
            self.tracked.append(id)
            line = f'set {setting_id} to {self._registry[setting_id]} - {value}: track with id {id}'
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
