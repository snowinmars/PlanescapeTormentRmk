class Zf594LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r35019_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35019_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35036_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35037_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35038_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35043_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35044_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35045_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35046_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35047_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35048_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35021_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35034_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35035_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35040_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35041_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35042_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


class Zf594Logic(Zf594LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
