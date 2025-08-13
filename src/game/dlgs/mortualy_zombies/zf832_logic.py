class Zf832Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zf832_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r4')
        self.settings_manager.inc_talked_to_zf832_times()


    def kill_zf832(self):
        self.settings_manager.set_dead_zf832(True)
        self.settings_manager.gain_experience('party', 65)


    def r35147_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35147_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35164_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35165_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35166_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35171_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35172_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35173_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35174_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35175_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35176_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35149_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35162_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35163_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35168_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35169_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35170_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()
