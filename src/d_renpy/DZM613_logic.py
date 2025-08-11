class Zm613Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm613_init(self):
        self.settings_manager.location_manager.set_location('LOCATION')
        self.settings_manager.inc_talked_to_zm613_times()


    def kill_zm613(self):
        self.settings_manager.set_dead_zm613(True)


    def r6543_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6543_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6544_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6545_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6546_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
