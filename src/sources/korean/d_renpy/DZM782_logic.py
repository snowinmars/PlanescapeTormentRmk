class Zm782Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r24716_action(self):
        #$% ?.attack('Protagonist').by('ZM782') %$#
        return


    def r24709_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r24712_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()
