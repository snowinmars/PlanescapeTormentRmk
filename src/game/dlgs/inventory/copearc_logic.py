class CopearcLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r46725_action(self):
        self.settings_manager.gain_experience('party', 250)


    def r46728_action(self):
        self.settings_manager.gain_experience('party', 250)


    def r46733_action(self):
        self.settings_manager.set_has_copper_earring_closed(False)
        self.settings_manager.set_has_copper_earring_opened(True)


    def r46725_condition(self):
        return self.settings_manager.get_know_copper_earring_secret()


    def r46728_condition(self):
        return self.settings_manager.get_know_copper_earring_secret()
