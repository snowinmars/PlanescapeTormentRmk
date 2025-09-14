class Zf594LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35019_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r35019_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r35036_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r35037_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r35038_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r35043_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35044_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35045_condition(self):
        return self.state_manager.get_morte_quip()


    def r35046_condition(self):
        return self.state_manager.get_morte_quip()


    def r35047_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35048_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35021_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35034_condition(self):
        return self.state_manager.get_morte_quip()


    def r35035_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35040_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35041_condition(self):
        return self.state_manager.get_morte_quip()


    def r35042_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


class Zf594Logic(Zf594LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
