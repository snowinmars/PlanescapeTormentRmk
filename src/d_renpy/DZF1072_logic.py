class Zf1072Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35115_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r35115_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r35132_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r35133_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r35134_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r35139_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35140_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35141_condition(self):
        return self.state_manager.get_morte_quip()


    def r35142_condition(self):
        return self.state_manager.get_morte_quip()


    def r35143_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35144_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35117_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35130_condition(self):
        return self.state_manager.get_morte_quip()


    def r35131_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35136_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35137_condition(self):
        return self.state_manager.get_morte_quip()


    def r35138_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()
