class Zf444Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r35211_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35211_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35228_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35229_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35230_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35235_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35236_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35237_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35238_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35239_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35240_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35213_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35226_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35227_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35232_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35233_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35234_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()
