class Zf891Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zf891_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r8')
        self.settings_manager.inc_talked_to_zf891_times()


    def kill_zf891(self):
        self.settings_manager.set_dead_zf891(True)
        self.settings_manager.gain_experience('party', 65)


    def r35275_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35275_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35292_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35293_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35294_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35299_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35300_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35301_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35302_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35303_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35304_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35277_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35290_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35291_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35296_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35297_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35298_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()
