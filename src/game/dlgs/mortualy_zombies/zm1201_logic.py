class Zm1201Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm1201_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r3')
        self.settings_manager.inc_talked_to_zm1201_times()


    def kill_zm1201(self):
        self.settings_manager.set_dead_zm1201(True)
        self.settings_manager.gain_experience('party', 65)


    def r34956_action(self):
        self.settings_manager.set_1201_note_retrieved(True)
        self.settings_manager.set_has_1201_note(True)
        self.settings_manager.gain_experience('party', 250)


    def r45129_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34954_condition(self):
        return not self.settings_manager.get_1201_note_retrieved()


    def r34957_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r34958_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r34956_condition(self):
        return self.settings_manager.get_has_scalpel()


    def r45122_condition(self):
        return not self.settings_manager.get_has_scalpel()


    def r45129_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r45130_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r45131_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45132_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
