class Zm782Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r24716_action(self):
        #$% ?.attack('Protagonist').by('ZM782') %$#
        return


    def r24709_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r24712_condition(self):
        return not self.settings_manager.get_in_party_morte()
