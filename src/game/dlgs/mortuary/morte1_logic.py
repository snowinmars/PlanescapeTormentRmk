class Morte1LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r39793_action(self):
        self.state_manager.world_manager.set_morte(1)


    def r39824_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_morte_1')


#     def r39831_action(self):  # unused
#         #$% ShowFirstTimeHelp() %$#
#         self.state_manager.world_manager.set_in_party_morte(True)


    def r39852_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r39856_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r39859_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


class Morte1Logic(Morte1LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def set_know_morte_name(self):
        self.state_manager.world_manager.set_know_morte_name(True)


    def s23_action(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(1)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_morte_times()
