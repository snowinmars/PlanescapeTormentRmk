class Zm782LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


#     def r24716_action(self): # unused
#         #$% ?.attack('Protagonist').by('ZM782') %$#
#         return


#     def r24709_condition(self): # wrong, overrided
#         return self.state_manager.world_manager.get_in_party_morte()


#     def r24712_condition(self): # wrong, overrided
#         return not self.state_manager.world_manager.get_in_party_morte()


class Zm782Logic(Zm782LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def pick_key_up(self):
        self.state_manager.world_manager.set_has_intro_key(True)


    def s24_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r24709_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() \
               and not self.state_manager.world_manager.get_has_intro_key()


    def r24712_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() \
               and not self.state_manager.world_manager.get_has_intro_key()


    def r24713_condition(self):
        return not self.state_manager.world_manager.get_has_intro_key()


    def r24714_condition(self):
        return self.state_manager.world_manager.get_has_intro_key()
