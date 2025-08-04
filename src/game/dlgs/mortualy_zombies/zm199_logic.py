class Zm199Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm199_init(self):
        self.settings_manager.location_manager.set_location('DISABLED') # pragma: no cover
        self.settings_manager.inc_talked_to_zm199_times() # pragma: no cover


    def kill_zm199(self):
        self.settings_manager.set_dead_zm199(True)
        self.settings_manager.gain_experience('party', 65)


    def r34976_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34976_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r34979_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r34980_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r34981_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
