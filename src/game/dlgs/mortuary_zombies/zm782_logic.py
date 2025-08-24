class Zm782Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager



    def pick_key_up(self):
        self.settings_manager.set_has_intro_key(True)


    def has_key_has_morte(self):
        return self.settings_manager.get_in_party_morte() \
               and self.settings_manager.get_has_intro_key()


    def no_key_has_morte(self):
        return self.settings_manager.get_in_party_morte() \
               and not self.settings_manager.get_has_intro_key()


    def has_key_no_morte(self):
        return not self.settings_manager.get_in_party_morte() \
               and self.settings_manager.get_has_intro_key()


    def no_key_no_morte(self):
        return not self.settings_manager.get_in_party_morte() \
               and not self.settings_manager.get_has_intro_key()


    def r24709_condition(self):
        return self.no_key_has_morte()


    def r24712_condition(self):
        return self.no_key_no_morte()


    def r24713_condition(self):
        return not self.settings_manager.get_has_intro_key()


    def r24714_condition(self):
        return self.settings_manager.get_has_intro_key()
