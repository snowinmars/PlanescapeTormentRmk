class CopearcLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def copearc_init(self):
        self.settings_manager.location_manager.set_location('LOCATION')
        self.settings_manager.inc_talked_to_copearc_times()


    def kill_copearc(self):
        self.settings_manager.set_dead_copearc(True)


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
