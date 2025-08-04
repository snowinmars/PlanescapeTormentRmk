class Zm310Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm310_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r6')
        self.settings_manager.inc_talked_to_zm310_times()


    def kill_zm310(self):
        self.settings_manager.set_dead_zm310(True)
        self.settings_manager.gain_experience('party', 65)


    def set_know_oinosian_name(self):
        self.settings_manager.set_know_oinosian_name(True)


    def r6499_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6502_action(self):
        self.settings_manager.set_oinosian_value(1)


    def get_know_oinosian_name(self):
        return self.settings_manager.get_know_oinosian_name()


    def r6499_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6500_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6501_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6502_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r9664_condition(self):
        return self.settings_manager.get_pharod_value() == 0
