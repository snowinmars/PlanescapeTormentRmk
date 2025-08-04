class Zm463Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm463_init(self):
        self.settings_manager.location_manager.set_location('DISABLED') # pragma: no cover
        self.settings_manager.inc_talked_to_zm463_times() # pragma: no cover


    def kill_zm463(self):
        self.settings_manager.set_dead_zm463(True)
        self.settings_manager.gain_experience('party', 65)


    def r6485_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6485_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6488_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6489_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6490_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
