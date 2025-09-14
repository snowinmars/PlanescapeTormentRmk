class Zf916LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r24720_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r24720_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r24737_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r24738_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r24739_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r24744_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24745_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24746_condition(self):
        return self.state_manager.get_morte_quip()


    def r24747_condition(self):
        return self.state_manager.get_morte_quip()


    def r24748_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24749_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24722_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24735_condition(self):
        return self.state_manager.get_morte_quip()


    def r24736_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24741_condition(self):
        return self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


    def r24742_condition(self):
        return self.state_manager.get_morte_quip()


    def r24743_condition(self):
        return not self.state_manager.get_in_party_morte() and \
               not self.state_manager.get_morte_quip()


class Zf916Logic(Zf916LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
