class Zm825Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm825_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r1')
        self.settings_manager.inc_talked_to_zm825_times()


    def kill_zm825(self):
        self.settings_manager.set_dead_zm825(True)
        self.settings_manager.gain_experience('party', 65)


    def r24565_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() == 0 and \
               not self.settings_manager.get_has_intro_key() and \
               self.settings_manager.get_in_party_morte()


    def r24568_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() == 0 and \
               not self.settings_manager.get_has_intro_key() and \
               not self.settings_manager.get_in_party_morte()


    def r24569_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() > 0


    def r24570_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r24573_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r24574_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() == 0 and \
               not self.settings_manager.get_has_intro_key()


    def r42312_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r42313_condition(self):
        return not self.settings_manager.get_in_party_morte()
