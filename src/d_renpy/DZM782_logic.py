class Zm782Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm782_init(self):
        self.settings_manager.location_manager.set_location('LOCATION')
        self.settings_manager.inc_talked_to_zm782_times()


    def kill_zm782(self):
        self.settings_manager.set_dead_zm782(True)


    def r24716_action(self):
        # ?.attack('Protagonist').by('ZM782')


    def r24709_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r24712_condition(self):
        return not self.settings_manager.get_in_party_morte()
