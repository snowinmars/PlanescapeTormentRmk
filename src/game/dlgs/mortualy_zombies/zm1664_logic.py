class Zm1664Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm1664_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r4')
        self.settings_manager.inc_talked_to_zm1664_times()


    def kill_zm1664(self):
        self.settings_manager.set_dead_zm1664(True)
        self.settings_manager.gain_experience('party', 65)


    def r47014_action(self):
        self.settings_manager.set_has_logpage(True)
        self.settings_manager.set_has_zm1664_page(True)


    def r47003_condition(self):
        return not self.settings_manager.get_has_zm1664_page()


    def r47004_condition(self):
        return self.settings_manager.get_has_zm1664_page()


    def r47005_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r47006_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
