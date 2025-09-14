import logging


class StateManager:
    def __init__(self, events_manager, characters_manager, locations_manager, journal_manager):
        self._once_keys = []
        self._registry = {}
        self._events_manager = events_manager
        self.characters_manager = characters_manager
        self.locations_manager = locations_manager
        self.journal_manager = journal_manager


    def gain_experience(self, name, amount):
        if name == 'party':
            self.characters_manager.modify_property('protagonist', 'experience', amount)

            if self.get_in_party_morte():
                self.characters_manager.modify_property('morte', 'experience', amount)
            if self.get_in_party_annah():
                self.characters_manager.modify_property('annah', 'experience', amount)
            if self.get_in_party_ignus():
                self.characters_manager.modify_property('ignus', 'experience', amount)
            if self.get_in_party_grace():
                self.characters_manager.modify_property('grace', 'experience', amount)
            if self.get_in_party_dakkon():
                self.characters_manager.modify_property('dakkon', 'experience', amount)
            if self.get_in_party_nordom():
                self.characters_manager.modify_property('nordom', 'experience', amount)
            if self.get_in_party_vhail():
                self.characters_manager.modify_property('vhail', 'experience', amount)
        else:
            self.characters_manager.modify_property(name, 'experience', amount)


    def register(self, setting_id, default_value):
        self._registry[setting_id] = default_value

        def getter():
            return self._registry[setting_id]
        def setter(value):
            self._log(f'set {setting_id} = {value}')
            self._registry[setting_id] = value
        def inc(delta = 1):
            before = self._registry[setting_id]
            after = self._registry[setting_id] + delta
            self._log(f"increment '{setting_id}' = {before} + {delta} = {after}")
            self._registry[setting_id] = after
        def dec(delta = 1):
            before = self._registry[setting_id]
            after = self._registry[setting_id] - delta
            self._log(f"dec '{setting_id}' = {before} - {delta} = {after}")
            self._registry[setting_id] = after
        def inc_once(key, delta = 1):
            if key in self._once_keys:
                self._log(f"already incremented '{setting_id}' with '{key}'")
                return
            before = self._registry[setting_id]
            after = self._registry[setting_id] + delta
            self._log(f"increment with '{key}' '{setting_id}' = '{before}' + '{delta}' = '{after}'")
            self._registry[setting_id] = after
            self._once_keys.append(key)
        def dec_once(key, delta = 1):
            if key in self._once_keys:
                self._log(f"already decremented '{setting_id}' with '{key}'")
                return
            before = self._registry[setting_id]
            after = self._registry[setting_id] - delta
            self._log(f"decrement with '{key}' '{setting_id}' = '{before}' - '{delta}' = '{after}'")
            self._registry[setting_id] = after
            self._once_keys.append(key)

        setattr(self, f'get_{setting_id}', getter)
        setattr(self, f'set_{setting_id}', setter)
        setattr(self, f'inc_{setting_id}', inc)
        setattr(self, f'dec_{setting_id}', dec)
        setattr(self, f'inc_once_{setting_id}', inc_once)
        setattr(self, f'dec_once_{setting_id}', dec_once)

        return self


    def get_setting_value(self, setting_id):
        if setting_id not in self._registry:
            raise KeyError(f"Setting '{setting_id}' was not found in the registry")
        return self._registry[setting_id]


    def count_in_party(self):
        return sum([
            self.get_in_party_morte(),
            self.get_in_party_annah(),
            self.get_in_party_ignus(),
            self.get_in_party_grace(),
            self.get_in_party_dakkon(),
            self.get_in_party_nordom(),
            self.get_in_party_vhail(),
        ])


    def _log(self, line):
        self._events_manager.write_event(line)
