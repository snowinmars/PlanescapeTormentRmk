class Zm1508Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm1508_init(self):
        self.settings_manager.location_manager.set_location('DISABLED') # pragma: no cover
        self.settings_manager.inc_talked_to_zm1508_times() # pragma: no cover


    def kill_zm1508(self):
        self.settings_manager.set_dead_zm1508(True)
        self.settings_manager.gain_experience('party', 65)


    def r46746_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r46746_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r46749_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r46750_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r46751_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
