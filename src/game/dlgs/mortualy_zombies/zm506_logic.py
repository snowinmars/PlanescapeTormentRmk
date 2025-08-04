class Zm506Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm506_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r5')
        self.settings_manager.inc_talked_to_zm506_times()


    def kill_zm506(self):
        self.settings_manager.set_dead_zm506(True)
        self.settings_manager.gain_experience('party', 65)


    def r45480_action(self):
        self.settings_manager.set_has_506_thread(True)
        self.settings_manager.set_has_needle(True)
        self.settings_manager.gain_experience('party', 100)


    def r45484_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r45502_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def know_506_secret(self):
        return self.settings_manager.get_has_506_thread()


    def r45420_condition(self):
        return not self.settings_manager.get_has_506_thread()


    def r45421_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45422_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r45480_condition(self):
        return self.settings_manager.get_has_scalpel()


    def r45481_condition(self):
        return not self.settings_manager.get_has_scalpel()


    def r45484_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r45496_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r45502_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r45508_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r45510_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45512_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
