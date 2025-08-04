class Zm396Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm396_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r3')
        self.settings_manager.inc_talked_to_zm396_times()


    def kill_zm396(self):
        self.settings_manager.set_dead_zm396(True)
        self.settings_manager.gain_experience('party', 65)


    def r34932_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34936_action(self):
        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_has_bandages(True)


    def r34934_action(self):
        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_has_bandages(True)


    def r45112_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def get_took_zm396_bandages(self):
        return self.settings_manager.get_has_bandages_zm396()


    def r34936_condition(self):
        return not self.settings_manager.get_has_bandages_zm396()


    def r34932_condition(self):
        return not self.settings_manager.get_has_bandages_zm396() \
               and not self.settings_manager.get_zombie_chaotic()


    def r34935_condition(self):
        return not self.settings_manager.get_has_bandages_zm396() \
               and self.settings_manager.get_zombie_chaotic()


    def r34937_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r34940_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r34934_condition(self):
        return not self.settings_manager.get_has_bandages_zm396()


    def r45112_condition(self):
        return self.settings_manager.get_has_bandages_zm396() \
               and not self.settings_manager.get_zombie_chaotic()


    def r45113_condition(self):
        return self.settings_manager.get_has_bandages_zm396() \
               and self.settings_manager.get_zombie_chaotic()


    def r45114_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45115_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
