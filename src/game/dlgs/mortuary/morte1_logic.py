class Morte1LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r39793_action(self):
        self.settings_manager.set_morte_value(1)


    def r39824_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_morte_1')


    # def r39831_action(self): # unused
    #     #$% ShowFirstTimeHelp() %$#
    #     self.settings_manager.set_in_party_morte(True)


    def r39852_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r39856_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r39859_action(self):
        self.settings_manager.set_in_party_morte(True)


class Morte1Logic(Morte1LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)


    def s23_action(self):
        self.settings_manager.set_mortuary_walkthrough(1) # TODO [snow]: I guess


    def s24_action(self):
        self.settings_manager.set_has_intro_key(True)
