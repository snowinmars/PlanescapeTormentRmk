class Zm569Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r24576_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() == 0 and \
               not self.settings_manager.get_has_intro_key() and \
               self.settings_manager.get_in_party_morte()


    def r24579_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() == 0 and \
               not self.settings_manager.get_has_intro_key() and \
               not self.settings_manager.get_in_party_morte()


    def r24580_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() > 0


    def r24581_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r24584_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r24585_condition(self):
        return self.settings_manager.get_mortuary_walkthrough() == 0 and \
               not self.settings_manager.get_has_intro_key()


    def r42294_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r42295_condition(self):
        return not self.settings_manager.get_in_party_morte()
