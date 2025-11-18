class Zf832LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35147_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r35147_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r35164_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r35165_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r35166_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r35171_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35172_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35173_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35174_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35175_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35176_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35149_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35162_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35163_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35168_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35169_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35170_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


class Zf832Logic(Zf832LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
