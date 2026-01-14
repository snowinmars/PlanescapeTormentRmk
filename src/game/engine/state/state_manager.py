import logging


class StateManager:
    def __init__(self,
        log_events_manager,
        world_manager,
        characters_manager,
        locations_manager,
        journal_manager,
        inventory_manager,
        narrat_manager
    ):
        self._log_events_manager = log_events_manager
        self.world_manager = world_manager
        self.characters_manager = characters_manager
        self.locations_manager = locations_manager
        self.journal_manager = journal_manager
        self.inventory_manager = inventory_manager
        self.narrat_manager = narrat_manager

        self.world_manager.register_report_change_callback(self.report_change)
        self.characters_manager.register_report_change_callback(self.report_change)
        self.locations_manager.register_report_change_callback(self.report_change)
        self.journal_manager.register_report_change_callback(self.report_change)
        self.inventory_manager.register_report_change_callback(self.report_change)


    def report_change(self, change_id, change_kwargs):
        self.narrat_manager.report_change(change_id, change_kwargs)


    def register(self, setting_id, default_value):
        self.world_manager.register(setting_id, default_value)
        return self


    def gain_experience(self, name, amount):
        self._log(f'Gain {amount} experience to {name}')
        if name == 'party':
            self.characters_manager.modify_property('protagonist_character_name', 'experience', amount)

            if self.world_manager.get_in_party_morte():
                self.characters_manager.modify_property('morte_character_name', 'experience', amount)
            if self.world_manager.get_in_party_annah():
                self.characters_manager.modify_property('annah_character_name', 'experience', amount)
            if self.world_manager.get_in_party_ignus():
                self.characters_manager.modify_property('ignus_character_name', 'experience', amount)
            if self.world_manager.get_in_party_grace():
                self.characters_manager.modify_property('grace_character_name', 'experience', amount)
            if self.world_manager.get_in_party_dakkon():
                self.characters_manager.modify_property('dakkon_character_name', 'experience', amount)
            if self.world_manager.get_in_party_nordom():
                self.characters_manager.modify_property('nordom_character_name', 'experience', amount)
            if self.world_manager.get_in_party_vhail():
                self.characters_manager.modify_property('vhail_character_name', 'experience', amount)
        else:
            self.characters_manager.modify_property(name, 'experience', amount)


    def count_in_party(self):
        return sum([
            self.world_manager.get_in_party_morte(),
            self.world_manager.get_in_party_annah(),
            self.world_manager.get_in_party_ignus(),
            self.world_manager.get_in_party_grace(),
            self.world_manager.get_in_party_dakkon(),
            self.world_manager.get_in_party_nordom(),
            self.world_manager.get_in_party_vhail(),
        ])


    def _log(self, line):
        self._log_events_manager.write_log_event(line)
