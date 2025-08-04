class Zm965Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm965_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r2')
        self.settings_manager.inc_talked_to_zm965_times()


    def kill_zm965(self):
        self.settings_manager.set_dead_zm965(True)
        self.settings_manager.gain_experience('party', 65)


    def r34923_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34923_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r45070_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r45071_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45072_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
