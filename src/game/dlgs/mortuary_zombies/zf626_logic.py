class Zf626LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35051_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r35051_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r35068_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r35069_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r35070_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r35075_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35076_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35077_condition(self):
        return self.state_manager.get_morte_quip()


    def r35078_condition(self):
        return self.state_manager.get_morte_quip()


    def r35079_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35080_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35053_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35066_condition(self):
        return self.state_manager.get_morte_quip()


    def r35067_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35072_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35073_condition(self):
        return self.state_manager.get_morte_quip()


    def r35074_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


class Zf626Logic(Zf626LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
