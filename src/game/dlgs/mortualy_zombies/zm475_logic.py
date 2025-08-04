class Zm475Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm475_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r6')
        self.settings_manager.inc_talked_to_zm475_times()


    def kill_zm475(self):
        self.settings_manager.set_dead_zm475(True)
        self.settings_manager.gain_experience('party', 65)


    def r6587_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6587_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6588_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6589_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6590_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
