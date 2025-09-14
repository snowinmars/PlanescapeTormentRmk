class Zf1148LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35243_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r35243_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r35260_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r35261_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r35262_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r35267_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35268_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35269_condition(self):
        return self.state_manager.get_morte_quip()


    def r35270_condition(self):
        return self.state_manager.get_morte_quip()


    def r35271_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35272_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35245_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35258_condition(self):
        return self.state_manager.get_morte_quip()


    def r35259_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35264_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r35265_condition(self):
        return self.state_manager.get_morte_quip()


    def r35266_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


class Zf1148Logic(Zf1148LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
