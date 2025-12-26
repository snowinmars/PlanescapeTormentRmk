class Morte1Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r39793_action(self):
        self.state_manager.world_manager.set_morte_value(1)


    def r39824_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_morte_1')


    def r39831_action(self):
        #$% ShowFirstTimeHelp() %$#
        self.state_manager.world_manager.set_in_party_morte(True)


    def r39852_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r39856_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r39859_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)
