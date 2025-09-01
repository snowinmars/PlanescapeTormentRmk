class Zf1072LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r35115_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35115_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35132_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35133_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35134_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35139_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35140_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35141_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35142_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35143_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35144_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35117_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35130_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35131_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35136_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35137_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35138_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


class Zf1072Logic(Zf1072LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
