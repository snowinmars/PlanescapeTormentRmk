class Zf1096Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r35083_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35083_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35100_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35101_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35102_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35107_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35108_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35109_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35110_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35111_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35112_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35085_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35098_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35099_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35104_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35105_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35106_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()
