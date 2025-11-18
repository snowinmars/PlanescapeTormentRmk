class Zm825LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r24565_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() == 0 and \
               not self.state_manager.world_manager.get_has_intro_key() and \
               self.state_manager.world_manager.get_in_party_morte()


    def r24568_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() == 0 and \
               not self.state_manager.world_manager.get_has_intro_key() and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r24569_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() > 0


    def r24570_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r24573_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r24574_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() == 0 and \
               not self.state_manager.world_manager.get_has_intro_key()


    def r42312_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r42313_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


class Zm825Logic(Zm825LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
