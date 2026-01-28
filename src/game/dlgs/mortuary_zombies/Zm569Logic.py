class Zm569LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r24576_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() == 0 and \
               not self.state_manager.inventory_items_manager.is_own_item('has_intro_key') and \
               self.state_manager.world_manager.get_in_party_morte()


    def r24579_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() == 0 and \
               not self.state_manager.inventory_items_manager.is_own_item('has_intro_key') and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r24580_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() > 0


    def r24581_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r24584_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r24585_condition(self):
        return self.state_manager.world_manager.get_mortuary_walkthrough() == 0 and \
               not self.state_manager.inventory_items_manager.is_own_item('has_intro_key')


    def r42294_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r42295_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


class Zm569Logic(Zm569LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_zm569_times()
